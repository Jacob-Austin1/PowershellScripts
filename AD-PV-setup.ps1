New-Item -ItemType Directory -Path "C:\Users\robb.stark\Desktop\Practical" -Force
$AD = "C:\Users\robb.stark\Desktop\Practical\ADModule.zip"
$PV = "C:\Users\robb.stark\Desktop\Practical\PowerView.ps1"
$ADDDPP = "C:\Users\robb.stark\Desktop\admin-run-adddpp.ps1"
$DSPA =  "C:\Users\robb.stark\Desktop\admin-run-dspa.ps1"
$WINDAP = "C:\Users\robb.stark\Desktop\windapsearch-windows-amd64.exe"
iwr 192.168.56.5:8080/ADModule.zip -Outfile $AD
iwr 192.168.56.5:8080/PowerView -OutFile $PV
iwr 192.168.56.5:8080/admin-run-dspa -OutFile $DSPA
iwr 192.168.56.5:8080/admin-run-adddpp -OutFile $ADDDPP
iwr 192.168.56.5:8080/windapsearch-windows-amd64.exe $WINDAP
Unblock-File $AD
Expand-Archive $AD -Force
Unblock-File .\ADModule\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Import-Module .\ADModule\ADModule-master\Microsoft.ActiveDirectory.Management.dll
Unblock-File .\ADModule\ADModule-master\ActiveDirectory\ActiveDirectory.psd1
Unblock-File $PV
Unblock-File $WINDAP
