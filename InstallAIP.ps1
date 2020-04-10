#Remove the AADRM module if you have it
Uninstall-Module -Name AADRM

#Install the azure ad rms Module

Find-Module AIPService
Install-Module AIPService -Force

#Get the Credentials to login
$Cred = Get-Credential

#Connect to the Azure RMS Service
connect-AIPService -Credential $Cred

#review configuration of AD RMS
Get-AipServiceConfiguration

#See Other Commands
Get-Command -Module AIPService
