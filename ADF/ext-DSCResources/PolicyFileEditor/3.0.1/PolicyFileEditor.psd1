@{
    ModuleToProcess         = 'PolicyFileEditor.psm1'
    ModuleVersion           = '3.0.1'
    GUID                    = '110a2398-3053-4ffc-89d1-1b6a38a2dc86'
    Author                  = 'Dave Wyatt'
    CompanyName             = 'Home'
    Copyright               = '(c) 2015 Dave Wyatt. All rights reserved.'
    Description             = 'Commands and DSC resource for modifying Administrative Templates settings in local GPO registry.pol files.'
    PowerShellVersion       = '2.0'
    # PowerShellHostName    = ''
    # PowerShellHostVersion = ''
    DotNetFrameworkVersion  = '2.0'
    # CLRVersion            = ''
    # ProcessorArchitecture = ''
    # RequiredModules       = @()
    # RequiredAssemblies    = @()
    # ScriptsToProcess      = @()
    # TypesToProcess        = @()
    # FormatsToProcess      = @()
    # NestedModules         = @()
    FunctionsToExport       = @('Set-PolicyFileEntry', 'Remove-PolicyFileEntry', 'Get-PolicyFileEntry', 'Update-GptIniVersion')
    # CmdletsToExport       = '*'
    # VariablesToExport     = '*'
    # AliasesToExport       = '*'
    # DscResourcesToExport  = @()
    # ModuleList            = @()
    # FileList              = @()

    # HelpInfoURI           = ''

    # DefaultCommandPrefix  = ''

    PrivateData = @{
        PSData = @{
            # Tags         = @()
            LicenseUri   = 'https://www.apache.org/licenses/LICENSE-2.0.html'
            ProjectUri   = 'https://github.com/dlwyatt/PolicyFileEditor'
            # IconUri      = ''
            ReleaseNotes = 'Updated resource schemas to be more friendly with Invoke-DscResource.'
        }
    }
}


# SIG # Begin signature block
# MIIgTAYJKoZIhvcNAQcCoIIgPTCCIDkCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCxXXj93jMKsYt4
# /L+NoY9eFrVTQIjdrnS48P4D4IEQcaCCG1YwggO3MIICn6ADAgECAhAM5+DlF9hG
# /o/lYPwb8DA5MA0GCSqGSIb3DQEBBQUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
# BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0wNjExMTAwMDAwMDBa
# Fw0zMTExMTAwMDAwMDBaMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2Vy
# dCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lD
# ZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
# AQoCggEBAK0OFc7kQ4BcsYfzt2D5cRKlrtwmlIiq9M71IDkoWGAM+IDaqRWVMmE8
# tbEohIqK3J8KDIMXeo+QrIrneVNcMYQq9g+YMjZ2zN7dPKii72r7IfJSYd+fINcf
# 4rHZ/hhk0hJbX/lYGDW8R82hNvlrf9SwOD7BG8OMM9nYLxj+KA+zp4PWw25EwGE1
# lhb+WZyLdm3X8aJLDSv/C3LanmDQjpA1xnhVhyChz+VtCshJfDGYM2wi6YfQMlqi
# uhOCEe05F52ZOnKh5vqk2dUXMXWuhX0irj8BRob2KHnIsdrkVxfEfhwOsLSSplaz
# vbKX7aqn8LfFqD+VFtD/oZbrCF8Yd08CAwEAAaNjMGEwDgYDVR0PAQH/BAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFEXroq/0ksuCMS1Ri6enIZ3zbcgP
# MB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgPMA0GCSqGSIb3DQEBBQUA
# A4IBAQCiDrzf4u3w43JzemSUv/dyZtgy5EJ1Yq6H6/LV2d5Ws5/MzhQouQ2XYFwS
# TFjk0z2DSUVYlzVpGqhH6lbGeasS2GeBhN9/CTyU5rgmLCC9PbMoifdf/yLil4Qf
# 6WXvh+DfwWdJs13rsgkq6ybteL59PyvztyY1bV+JAbZJW58BBZurPSXBzLZ/wvFv
# hsb6ZGjrgS2U60K3+owe3WLxvlBnt2y98/Efaww2BxZ/N3ypW2168RJGYIPXJwS+
# S86XvsNnKmgR34DnDDNmvxMNFG7zfx9jEB76jRslbWyPpbdhAbHSoyahEHGdreLD
# +cOZUbcrBwjOLuZQsqf6CkUvovDyMIIFJDCCBAygAwIBAgIQCRrHC94asIH2W7lu
# /i1eITANBgkqhkiG9w0BAQsFADByMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGln
# aUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMTEwLwYDVQQDEyhE
# aWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ29kZSBTaWduaW5nIENBMB4XDTE3MDYy
# MTAwMDAwMFoXDTE4MDgyOTEyMDAwMFowYTELMAkGA1UEBhMCQ0ExCzAJBgNVBAgT
# Ak9OMREwDwYDVQQHEwhCcmFtcHRvbjEYMBYGA1UEChMPRGF2aWQgTGVlIFd5YXR0
# MRgwFgYDVQQDEw9EYXZpZCBMZWUgV3lhdHQwggEiMA0GCSqGSIb3DQEBAQUAA4IB
# DwAwggEKAoIBAQDA/6cBpCOYJk6IY2cPgY23dVjs3xYcJKeSDIvnfvBl/SFqvEYX
# tJkfbETnjp2XkZ9UFk2j5b5JpRg25GpkTo4a0MYMAUyn7tfotxG64sjxsNLXrrYN
# nx3q2QUt4dpRjG11giMyFSjAFPjPO1JbM9976GN96ldiOUX3yH+UM4Ow6zS+0iGq
# MSnd88iPs/CqphaVTDBN+ZmU864hnzGhjiMBlyjw4z/aLtJeopeLmuk8wyxN+N3v
# P/wsFwmPpycxSU3hPlqa2GDDswYtiMuf5NOdG3CfEEX9Ntrd2NxpjXOPGDt6Ko0C
# 0mYSd9qgzznxuweJPXXg4GR6jeVZrq4pQZFlAgMBAAGjggHFMIIBwTAfBgNVHSME
# GDAWgBRaxLl7KgqjpepxA8Bg+S32ZXUOWDAdBgNVHQ4EFgQUDkf1juW1Z6Tp40ck
# YDz0SxGZDn8wDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMHcG
# A1UdHwRwMG4wNaAzoDGGL2h0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9zaGEyLWFz
# c3VyZWQtY3MtZzEuY3JsMDWgM6Axhi9odHRwOi8vY3JsNC5kaWdpY2VydC5jb20v
# c2hhMi1hc3N1cmVkLWNzLWcxLmNybDBMBgNVHSAERTBDMDcGCWCGSAGG/WwDATAq
# MCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5kaWdpY2VydC5jb20vQ1BTMAgGBmeB
# DAEEATCBhAYIKwYBBQUHAQEEeDB2MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5k
# aWdpY2VydC5jb20wTgYIKwYBBQUHMAKGQmh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0
# LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDb2RlU2lnbmluZ0NBLmNydDAMBgNV
# HRMBAf8EAjAAMA0GCSqGSIb3DQEBCwUAA4IBAQAqho5skBHIeG738khh3muTynOW
# TWwHZ4fJI0oWgAVLK/g1VNHKCWY+fqoxdXZcRZt6jZtklmuYAPx3q86XtOniVqYk
# EFIcJgBFJtBuAQDeYFyKyMWoidqGVQ4wIrzArUEWg6q/ba36S+u1TqnZr3GJ3+y0
# G9iNbc1nEzKoUPARo3rgWEirgARMjNCPSufDLHNsjPHCXwUNxbRtq+kiUxBgOIF7
# Rn4ADci9pCalNeby/V7I2poj5nQ22f2P7nwIMuIFszOsV7BBfI2ni9GzPhKBCwLy
# K6s3wzPQyuUewKiG84dQcnOIZO9f/8aB30BVu6FSnNvMdMjyLIRtlPP0txxvMIIF
# MDCCBBigAwIBAgIQBAkYG1/Vu2Z1U0O1b5VQCDANBgkqhkiG9w0BAQsFADBlMQsw
# CQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cu
# ZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3Qg
# Q0EwHhcNMTMxMDIyMTIwMDAwWhcNMjgxMDIyMTIwMDAwWjByMQswCQYDVQQGEwJV
# UzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQu
# Y29tMTEwLwYDVQQDEyhEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ29kZSBTaWdu
# aW5nIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+NOzHH8OEa9n
# dwfTCzFJGc/Q+0WZsTrbRPV/5aid2zLXcep2nQUut4/6kkPApfmJ1DcZ17aq8JyG
# pdglrA55KDp+6dFn08b7KSfH03sjlOSRI5aQd4L5oYQjZhJUM1B0sSgmuyRpwsJS
# 8hRniolF1C2ho+mILCCVrhxKhwjfDPXiTWAYvqrEsq5wMWYzcT6scKKrzn/pfMuS
# oeU7MRzP6vIK5Fe7SrXpdOYr/mzLfnQ5Ng2Q7+S1TqSp6moKq4TzrGdOtcT3jNEg
# JSPrCGQ+UpbB8g8S9MWOD8Gi6CxR93O8vYWxYoNzQYIH5DiLanMg0A9kczyen6Yz
# qf0Z3yWT0QIDAQABo4IBzTCCAckwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8B
# Af8EBAMCAYYwEwYDVR0lBAwwCgYIKwYBBQUHAwMweQYIKwYBBQUHAQEEbTBrMCQG
# CCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKG
# N2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJv
# b3RDQS5jcnQwgYEGA1UdHwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0
# LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9j
# cmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwTwYD
# VR0gBEgwRjA4BgpghkgBhv1sAAIEMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3
# LmRpZ2ljZXJ0LmNvbS9DUFMwCgYIYIZIAYb9bAMwHQYDVR0OBBYEFFrEuXsqCqOl
# 6nEDwGD5LfZldQ5YMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgPMA0G
# CSqGSIb3DQEBCwUAA4IBAQA+7A1aJLPzItEVyCx8JSl2qB1dHC06GsTvMGHXfgtg
# /cM9D8Svi/3vKt8gVTew4fbRknUPUbRupY5a4l4kgU4QpO4/cY5jDhNLrddfRHnz
# NhQGivecRk5c/5CxGwcOkRX7uq+1UcKNJK4kxscnKqEpKBo6cSgCPC6Ro8AlEeKc
# FEehemhor5unXCBc2XGxDI+7qPjFEmifz0DLQESlE/DmZAwlCEIysjaKJAL+L3J+
# HNdJRZboWR3p+nRka7LrZkPas7CM1ekN3fYBIM6ZMWM9CBoYs4GbT8aTEAb8B4H6
# i9r5gkn3Ym6hU/oSlBiFLpKR6mhsRDKyZqHnGKSaZFHvMIIGajCCBVKgAwIBAgIQ
# AwGaAjr/WLFr1tXq5hfwZjANBgkqhkiG9w0BAQUFADBiMQswCQYDVQQGEwJVUzEV
# MBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29t
# MSEwHwYDVQQDExhEaWdpQ2VydCBBc3N1cmVkIElEIENBLTEwHhcNMTQxMDIyMDAw
# MDAwWhcNMjQxMDIyMDAwMDAwWjBHMQswCQYDVQQGEwJVUzERMA8GA1UEChMIRGln
# aUNlcnQxJTAjBgNVBAMTHERpZ2lDZXJ0IFRpbWVzdGFtcCBSZXNwb25kZXIwggEi
# MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCjZF38fLPggjXg4PbGKuZJdTvM
# buBTqZ8fZFnmfGt/a4ydVfiS457VWmNbAklQ2YPOb2bu3cuF6V+l+dSHdIhEOxnJ
# 5fWRn8YUOawk6qhLLJGJzF4o9GS2ULf1ErNzlgpno75hn67z/RJ4dQ6mWxT9RSOO
# hkRVfRiGBYxVh3lIRvfKDo2n3k5f4qi2LVkCYYhhchhoubh87ubnNC8xd4EwH7s2
# AY3vJ+P3mvBMMWSN4+v6GYeofs/sjAw2W3rBerh4x8kGLkYQyI3oBGDbvHN0+k7Y
# /qpA8bLOcEaD6dpAoVk62RUJV5lWMJPzyWHM0AjMa+xiQpGsAsDvpPCJEY93AgMB
# AAGjggM1MIIDMTAOBgNVHQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDCCAb8GA1UdIASCAbYwggGyMIIBoQYJYIZIAYb9bAcB
# MIIBkjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzCC
# AWQGCCsGAQUFBwICMIIBVh6CAVIAQQBuAHkAIAB1AHMAZQAgAG8AZgAgAHQAaABp
# AHMAIABDAGUAcgB0AGkAZgBpAGMAYQB0AGUAIABjAG8AbgBzAHQAaQB0AHUAdABl
# AHMAIABhAGMAYwBlAHAAdABhAG4AYwBlACAAbwBmACAAdABoAGUAIABEAGkAZwBp
# AEMAZQByAHQAIABDAFAALwBDAFAAUwAgAGEAbgBkACAAdABoAGUAIABSAGUAbAB5
# AGkAbgBnACAAUABhAHIAdAB5ACAAQQBnAHIAZQBlAG0AZQBuAHQAIAB3AGgAaQBj
# AGgAIABsAGkAbQBpAHQAIABsAGkAYQBiAGkAbABpAHQAeQAgAGEAbgBkACAAYQBy
# AGUAIABpAG4AYwBvAHIAcABvAHIAYQB0AGUAZAAgAGgAZQByAGUAaQBuACAAYgB5
# ACAAcgBlAGYAZQByAGUAbgBjAGUALjALBglghkgBhv1sAxUwHwYDVR0jBBgwFoAU
# FQASKxOYspkH7R7for5XDStnAs0wHQYDVR0OBBYEFGFaTSS2STKdSip5GoNL9B6J
# wcp9MH0GA1UdHwR2MHQwOKA2oDSGMmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydEFzc3VyZWRJRENBLTEuY3JsMDigNqA0hjJodHRwOi8vY3JsNC5kaWdp
# Y2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURDQS0xLmNybDB3BggrBgEFBQcBAQRr
# MGkwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBBBggrBgEF
# BQcwAoY1aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJl
# ZElEQ0EtMS5jcnQwDQYJKoZIhvcNAQEFBQADggEBAJ0lfhszTbImgVybhs4jIA+A
# h+WI//+x1GosMe06FxlxF82pG7xaFjkAneNshORaQPveBgGMN/qbsZ0kfv4gpFet
# W7easGAm6mlXIV00Lx9xsIOUGQVrNZAQoHuXx/Y/5+IRQaa9YtnwJz04HShvOlIJ
# 8OxwYtNiS7Dgc6aSwNOOMdgv420XEwbu5AO2FKvzj0OncZ0h3RTKFV2SQdr5D4HR
# mXQNJsQOfxu19aDxxncGKBXp2JPlVRbwuwqrHNtcSCdmyKOLChzlldquxC5ZoGHd
# 2vNtomHpigtt7BIYvfdVVEADkitrwlHCCkivsNRu4PQUCjob4489yq9qjXvc2EQw
# ggbNMIIFtaADAgECAhAG/fkDlgOt6gAK6z8nu7obMA0GCSqGSIb3DQEBBQUAMGUx
# CzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3
# dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9v
# dCBDQTAeFw0wNjExMTAwMDAwMDBaFw0yMTExMTAwMDAwMDBaMGIxCzAJBgNVBAYT
# AlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2Vy
# dC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMTCCASIwDQYJ
# KoZIhvcNAQEBBQADggEPADCCAQoCggEBAOiCLZn5ysJClaWAc0Bw0p5WVFypxNJB
# Bo/JM/xNRZFcgZ/tLJz4FlnfnrUkFcKYubR3SdyJxArar8tea+2tsHEx6886QAxG
# TZPsi3o2CAOrDDT+GEmC/sfHMUiAfB6iD5IOUMnGh+s2P9gww/+m9/uizW9zI/6s
# VgWQ8DIhFonGcIj5BZd9o8dD3QLoOz3tsUGj7T++25VIxO4es/K8DCuZ0MZdEkKB
# 4YNugnM/JksUkK5ZZgrEjb7SzgaurYRvSISbT0C58Uzyr5j79s5AXVz2qPEvr+yJ
# IvJrGGWxwXOt1/HYzx4KdFxCuGh+t9V3CidWfA9ipD8yFGCV/QcEogkCAwEAAaOC
# A3owggN2MA4GA1UdDwEB/wQEAwIBhjA7BgNVHSUENDAyBggrBgEFBQcDAQYIKwYB
# BQUHAwIGCCsGAQUFBwMDBggrBgEFBQcDBAYIKwYBBQUHAwgwggHSBgNVHSAEggHJ
# MIIBxTCCAbQGCmCGSAGG/WwAAQQwggGkMDoGCCsGAQUFBwIBFi5odHRwOi8vd3d3
# LmRpZ2ljZXJ0LmNvbS9zc2wtY3BzLXJlcG9zaXRvcnkuaHRtMIIBZAYIKwYBBQUH
# AgIwggFWHoIBUgBBAG4AeQAgAHUAcwBlACAAbwBmACAAdABoAGkAcwAgAEMAZQBy
# AHQAaQBmAGkAYwBhAHQAZQAgAGMAbwBuAHMAdABpAHQAdQB0AGUAcwAgAGEAYwBj
# AGUAcAB0AGEAbgBjAGUAIABvAGYAIAB0AGgAZQAgAEQAaQBnAGkAQwBlAHIAdAAg
# AEMAUAAvAEMAUABTACAAYQBuAGQAIAB0AGgAZQAgAFIAZQBsAHkAaQBuAGcAIABQ
# AGEAcgB0AHkAIABBAGcAcgBlAGUAbQBlAG4AdAAgAHcAaABpAGMAaAAgAGwAaQBt
# AGkAdAAgAGwAaQBhAGIAaQBsAGkAdAB5ACAAYQBuAGQAIABhAHIAZQAgAGkAbgBj
# AG8AcgBwAG8AcgBhAHQAZQBkACAAaABlAHIAZQBpAG4AIABiAHkAIAByAGUAZgBl
# AHIAZQBuAGMAZQAuMAsGCWCGSAGG/WwDFTASBgNVHRMBAf8ECDAGAQH/AgEAMHkG
# CCsGAQUFBwEBBG0wazAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQu
# Y29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGln
# aUNlcnRBc3N1cmVkSURSb290Q0EuY3J0MIGBBgNVHR8EejB4MDqgOKA2hjRodHRw
# Oi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3Js
# MDqgOKA2hjRodHRwOi8vY3JsNC5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVk
# SURSb290Q0EuY3JsMB0GA1UdDgQWBBQVABIrE5iymQftHt+ivlcNK2cCzTAfBgNV
# HSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd823IDzANBgkqhkiG9w0BAQUFAAOCAQEA
# RlA+ybcoJKc4HbZbKa9Sz1LpMUerVlx71Q0LQbPv7HUfdDjyslxhopyVw1Dkgrkj
# 0bo6hnKtOHisdV0XFzRyR4WUVtHruzaEd8wkpfMEGVWp5+Pnq2LN+4stkMLA0rWU
# vV5PsQXSDj0aqRRbpoYxYqioM+SbOafE9c4deHaUJXPkKqvPnHZL7V/CSxbkS3BM
# AIke/MV5vEwSV/5f4R68Al2o/vsHOE8Nxl2RuQ9nRc3Wg+3nkg2NsWmMT/tZ4CMP
# 0qquAHzunEIOz5HXJ7cW7g/DvXwKoO4sCFWFIrjrGBpN/CohrUkxg0eVd3HcsRtL
# SxwQnHcUwZ1PL1qVCCkQJjGCBEwwggRIAgEBMIGGMHIxCzAJBgNVBAYTAlVTMRUw
# EwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20x
# MTAvBgNVBAMTKERpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBDb2RlIFNpZ25pbmcg
# Q0ECEAkaxwveGrCB9lu5bv4tXiEwDQYJYIZIAWUDBAIBBQCggYQwGAYKKwYBBAGC
# NwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgcd0LcDTG
# JTxgvWrALu1icm0VGFtDKVDZSyYxxMFiHS4wDQYJKoZIhvcNAQEBBQAEggEAT82b
# yGTQnO12Ez2y2wYootSyvaijzIhkuvRbr+4BboklTcNuqwhMiXDdzTrb+iLshSHy
# Q7q79uVS0ehvAjDdUC6355bnZArQn8LOY8an8lYF+WbBprBs66HvDTV/AWVlFjYW
# GBK0J2ud6mEoCO6v80HElfdeBkh50qwVvosJ4ShRjujES9kf9TddRtLbN1Kmprfq
# JbN13qnl7fZPfNjOOLyC5PGMTGFeRk0xxXt+B0Vik0ZN1AJCf/i/H94j0HopgDEc
# DO+9LYOHTrIn4stLCiGDjKNR/DvhsL9WVIvtWfbP3ueklCJTRyoGoPHI5+leR7Tz
# DV0/tjokEV4hTLdEeqGCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIx
# CzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3
# dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0Et
# MQIQAwGaAjr/WLFr1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsG
# CSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgwMjEyMjExOTQ0WjAjBgkqhkiG
# 9w0BCQQxFgQUr8n+zWKyjyj7TGyJuf2ACCfzOYAwDQYJKoZIhvcNAQEBBQAEggEA
# UT5jXumju5WFXCCQXpK4Z1ImQPRXNMilNTg+YxHBimzm3cx3S7SuTLLS97JhFMqE
# AGpskZ603F48HAhNXyOlTddLPn6LDyZ9WRRgne4+oeB5UCHiEhy1MsIi1zQ3ajl1
# nlTaC6kOxMpaPi4BM0N0TPDIgWXow6lw+xgAGZ9avLbXw7SsrG1016I+BP6a9MVS
# lPivJo2RSow/VUL4HFoMG4D2uGNVrEJHt15D9TlvTuPqFW+xUkambVXq4Wyc2UR9
# riXXHHjJ2Y16yurwtlvptV6ECCCqN+6hwbPeZzG71SS9WItuNMF0oNYf4GvsCZ6h
# +SOJsRticgO2i7A6EE5lMg==
# SIG # End signature block
