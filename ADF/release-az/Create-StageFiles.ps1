param (
    [String]$Environment = 'P0',
    [String]$App = 'BOT',
    [Parameter(Mandatory)]
    [String]$OrgName,
    [String]$Location,
    [String]$ComponentName = 'EchoBot',
    [String]$MetaDataFileName = 'componentBuild.json'
)

Write-Output $PSScriptRoot

$LocationLookup = Get-Content -Path $PSScriptRoot\..\bicep\global\region.json | ConvertFrom-Json
$Prefix = $LocationLookup.$Location.Prefix

$filestocopy = @(
    @{
        SourcePath      = "$PSScriptRoot\..\templates\azuredeploy.parameters.json"
        DestinationPath = "$PSScriptRoot\..\tenants\${OrgName}\${Prefix}-${App}-${Environment}.parameters.json"
        TokenstoReplace = $null
        ReplaceWith     = $null
    }

    # @{
    #     SourcePath      = "$PSScriptRoot\..\templates\ado-pipelines.yml"
    #     DestinationPath = "$PSScriptRoot\..\tenants\${OrgName}\ado-pipelines-${Prefix}-${App}-${Environment}.yml"
    #     TokenstoReplace = @(
    #         '{OrgName}', '{App}', '{Prefix}', '{Environment}'
    #     )
    # }

    @{
        SourcePath      = "$PSScriptRoot\..\templates\GH-actions.yml"
        DestinationPath = "$PSScriptRoot\..\..\.github\workflows\GH-actions-${Prefix}-${App}-${Environment}.yml"
        TokenstoReplace = @(
            '{OrgName}', '{App}', '{Prefix}', '{Environment}'
        )
    }    
)

$filestocopy | ForEach-Object {
    $Destination = $_.DestinationPath

    if (! (Test-Path -Path $Destination))
    {
        Copy-Item -Path $_.SourcePath -Destination $Destination
    }

    foreach ($token in $_.TokenstoReplace)
    {
        if (Select-String -Pattern $token -Path $Destination)
        {
            ((Get-Content -Path $Destination -Raw) -replace $token, (Get-Item -Path variable:\$token).value ) | Set-Content -Path $Destination
        }
    }
}

# Stage meta data file on storage used for app releases
[String]$SAName = "${Prefix}${OrgName}${App}${Environment}saglobal".tolower()
$Context = New-AzStorageContext -StorageAccountName $SAName -UseConnectedAccount
[String]$ContainerName = 'builds'
$StorageContainerParams = @{
    Container = $ContainerName
    Context   = $Context
}

Write-Verbose -Message "Global SAName:`t`t [$SAName] Container is: [$ContainerName]" -Verbose
if (! (Get-AzStorageContainer @StorageContainerParams -EA 0))
{
    try
    {
        # Create the storage blob Containers
        New-AzStorageContainer @StorageContainerParams -ErrorAction Stop
    }
    catch
    {
        Write-Warning $_
        break
    }
}

if (! (Get-AzStorageBlob @StorageContainerParams -Blob $ComponentName/$MetaDataFileName -EA 0))
{
    try
    {
        # Copy up the metadata file
        $Item = Get-Item -Path $PSScriptRoot\..\templates\$MetaDataFileName
        Set-AzStorageBlobContent @StorageContainerParams -File $item.FullName -Blob $ComponentName/$MetaDataFileName -Verbose -Force
    }
    catch
    {
        Write-Warning $_
        break
    }
}