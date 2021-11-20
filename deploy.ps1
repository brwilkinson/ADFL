Param (
    [parameter(mandatory)]
    [string]$OrgName,
    [string]$App = 'APP',
    [string]$Environment = 'D1',
    [string]$location = 'centralus',
    [switch]$RunDeployment,
    [switch]$PackageDSC,
    [switch]$RunSetup
)

$base = $PSScriptRoot
$location = $location -replace '\W', ''

$LocationLookup = Get-Content -Path $base/bicep/global/region.json | ConvertFrom-Json
$Prefix = $LocationLookup.$Location.Prefix
Write-Warning -Message "Prefix [$Prefix] Org [$OrgName] App [$App] Environment [$Environment]"

if ($RunSetup -OR ! (Test-Path -Path $base\ADF\tenants\${OrgName}\${Prefix}-${App}-${Environment}.parameters.json))
{
    # create storage account for release
    & $base\ADF\release-az\Create-StorageAccount.ps1 -OrgName $orgName -App $App -Location $location

    # create keyvault for release + Admin Cred
    & $base\ADF\release-az\Create-KeyVault.ps1 -OrgName $orgName -App $App -Location $location

    # create GitHub secret + Service Principal + give current user access to the above storage account
    & $base\ADF\release-az\Create-GHServicePrincipal.ps1 -OrgName $orgName -App $App -Location $location -AddStorageAccess -CurrentUserStorageAccess

    # create Parameter File and Global File for the deployment
    & $base\ADF\release-az\Create-StageFiles.ps1 -OrgName $orgName -App $App -Location $location

    # create upload Self Signed Cert
    & $base\ADF\release-az\Create-UploadWebCert.ps1 -OrgName $orgName -App $App -Location $location

    # create App Environment Secrets
    & $base\ADF\release-az\Create-AppSecrets.ps1 -OrgName $orgName -App $App -Location $location
}
else
{
    Write-Warning -Message "Setup is complete.`n`n`t To rerun setup use:`t . .\deploy.ps1 -OrgName $orgName -App $App -RunSetup`n"
    Write-Warning -Message "To deploy use: `t . .\deploy.ps1 -OrgName $orgName -App $App -RunDeployment`n"
    Write-Warning -Message "Param file:`t`t [$base\ADF\tenants\${OrgName}\${Prefix}-${App}-${Environment}.parameters.json]"
    Write-Warning -Message "Infra pipeline file:`t [$base\.github\workflows\GH-actions-${Prefix}-${App}-${Environment}.yml]"
}

if ($PackageDSC)
{
    # create zip packages if dsc configuration is updated
    & $base\ADF\release-az\Package-DSCConfiguration.ps1
}

if ($RunDeployment)
{
    # deploy manually
    $Params = @{
        OrgName     = $OrgName
        App         = $App
        Environment = $Environment
        Location    = $location
        FullUpload  = $true
    }
    & $base\ADF\main.ps1 @Params
}