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
  Version:        2.0
  Author:         Ruhai Hu
  Creation Date:  2021.03.19
  Last Modified Date: 2021.03.21
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
   
  >
#>

# Variables
$processesToRestart = "GoXLR App", "GoXLRAudio*"

$GoXLRAPP = "/c start """" ""C:\ProgramData\Microsoft\Windows\Start Menu\Programs\GOXLR App\GOXLR App.lnk"" && exit"
$GoXLRAudioCplApp = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\TC-Helicon\USB Audio Driver for GoXLR\GoXLR Control Panel.lnk"

# Variable attempts to launch GoXLRApp 
# $GoXLRAPP = "C:\Program Files (x86)\TC-Helicon\GOXLR\GoXLR App.exe"
# $GoXLRAPPWorkDir = "C:\Program Files (x86)\TC-Helicon\GOXLR\"
# $GoXLRAPP = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\GOXLR App\GOXLR App.lnk"

# kill the goxlr processes
Write-Output "Force Stopping GoXLR Apps"
Get-Process -Name $processesToRestart | Stop-Process -Force

# Restart goxlr processes
Write-Output "Restarting GoXLR Apps"
Start-Process -FilePath $GoXLRAudioCplApp -WindowStyle Hidden
Start-Sleep -s 2
Start-Process -FilePath cmd.exe -ArgumentList $goXLRAPP

# The below comkmands fail to start GoXLRAPP as a standalone process
# The App if launched closes with the powershell or command prompt
# This is not good as it will keep other scripts and this one open
# Now if you close that left open prompt it closes the app.
# Solution found https://www.reddit.com/r/PowerShell/comments/m91ipj/program_launched_with_startprocess_closing_when/ Thanks to NeitherSound_
# Start-Process -FilePath cmd.exe -ArgumentList $goXLRAPP
# Start-Process -FilePath $GoXLRAPP -WindowStyle Minimized 
# Start-Process -FilePath $GoXLRAPP -WindowStyle Minimized -passthru
# .$GoXLRAPP
# & $GoXLRAPP
# Start-Process -FilePath $GoXLRAPP -WorkingDirectory $GoXLRAPPWorkDir -WindowStyle Minimized 
Write-Output "End of GoXLR Restart"
