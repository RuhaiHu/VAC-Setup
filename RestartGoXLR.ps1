#Requires -version 5.1
#Requires -RunAsAdministrator
<#
.SYNOPSIS
  Restart audio service
.DESCRIPTION

.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Michael Weber
  Creation Date:  2021.03.19
  Last Modified Date: 2021.03.20
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
   
  >
#>

# Variables
$processesToRestart = "GoXLR App", "GoXLRAudio*"
$GoXLRAPP = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\GOXLR App\GOXLR App.lnk"
# $GoXLRAPP = "C:\Program Files (x86)\TC-Helicon\GOXLR\GoXLR App.exe"
# $GoXLRAPPWorkDir = "C:\Program Files (x86)\TC-Helicon\GOXLR\"
$GoXLRAudioCplApp = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TC-Helicon\USB Audio Driver for GoXLR\GoXLR Control Panel.lnk"

# kill the goxlr processes
Write-Output "Force Stopping GoXLR Apps"
Get-Process -Name $processesToRestart | Stop-Process -Force

# Restart goxlr processes
Write-Output "Restarting GoXLR Apps"
Start-Process -FilePath $GoXLRAudioCplApp -WindowStyle Hidden
Start-Sleep -s 2
Start-Process -FilePath $GoXLRAPP -WindowStyle Minimized 
# Start-Process -FilePath $GoXLRAPP -WorkingDirectory $GoXLRAPPWorkDir -WindowStyle Minimized 
Write-Output "End of GoXLR Restart"
