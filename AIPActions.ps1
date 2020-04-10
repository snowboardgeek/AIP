#install module AIp
Install-Module -Name AIPService
Update-Module -Name AIPService
(Get-Module AIPService –ListAvailable).Version


#get the credentials to login
$Cred = Get-Credential

#connect to the azure AD RMS Service
Connect-AipService -Credential $Cred

