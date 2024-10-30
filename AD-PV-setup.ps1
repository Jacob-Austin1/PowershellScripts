New-Item -ItemType Directory -Path "C:\Users\robb.stark\Desktop\Practical" -Force
$AD = "C:\Users\robb.stark\Desktop\Practical\ADModule.zip"
$PV = "C:\Users\robb.stark\Desktop\Practical\PowerView.ps1"
$PSF = "C:\Users\robb.stark\Desktop\PSScripts"
iwr 192.168.56.5:8080/ADModule.zip -Outfile $AD
iwr 192.168.56.5:8080/PowerView -OutFile $PV
iwr 192.168.56.5:8080/PSScripts -OutFile $PSF
Unblock-File $AD
Expand-Archive $AD
Unblock-File .\ADModule\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Import-Module .\ADModule\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Unblock-File .\ADModule\ADModule-master\ActiveDirectory\ActiveDirectory.psd1
Unblock-File $PV
