

#install module AIp
Install-Module -Name AIPService
Update-Module -Name AIPService
(Get-Module AIPService –ListAvailable).Version

#get the credentials to login
$Cred = Get-Credential
#connect to the azure AD RMS Service
Connect-AipService -Credential $Cred

Connect-AipService

Get-Command -Module AIPService *Template*

#Get All Templates
Get-AadrmTemplate

Get-AipServiceTemplate

#Remove a Template (Label)
Remove-AipServiceTemplate -TemplateID ""

#Create a new template
# locale identifier for Norway NB and NO Norwegian (Bokmål)	 0414	1044
#                                        Norwegian (Nynorsk) 0814	2068
#Create a new template
$names = @{}
$names[1033] = "labglen - Glen"
$descriptions = @{}
$descriptions[1033] = "hemmelig Hemmelig"
$r1 = New-AadrmRightsDefinition -DomainName "labglenad.onmicrosoft.com" -Rights "VIEW","EXPORT"
$r2 = New-AadrmRightsDefinition -EmailAddress "glen.nygaard@gmail.com" -Rights "OWNER"
Add-AipServiceTemplate -Names $names -Descriptions $Descriptions -LicenseValidityDuration 5 -RightsDefinitions $r1, $r2 -Status Published


