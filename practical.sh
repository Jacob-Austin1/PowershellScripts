#!/bin/bash

#fetch ADModule
curl -L -o ADModule.zip https://github.com/samratashok/ADModule/archive/refs/heads/master.zip
#fetch PowerView
curl -o PowerView https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/refs/heads/master/Recon/PowerView.ps1
#fetch PS scripts
curl -o ./AD-PV-setup https://raw.githubusercontent.com/Jacob-Austin1/PowershellScripts/refs/heads/main/AD-PV-setup.ps1
curl -o ./admin-run-adddpp https://raw.githubusercontent.com/Jacob-Austin1/PowershellScripts/refs/heads/main/admin-run-adddpp.ps1
curl -o ./admin-run-dspa https://raw.githubusercontent.com/Jacob-Austin1/PowershellScripts/refs/heads/main/admin-run-dspa.ps1
http-server -p 8080
