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
  Creation Date:  2020.01.13
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Minimized -ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\RestartAudioService.ps1"
  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\RestartAudioService.ps1"
  
  >
#>


# Variables
$scriptDirectory = "D:\GD\Twitch\VAC Setup\"

# $basicAudio = "$PSScriptRoot\RestartBasicAudio.ps1"
# $streamAudio = "$PSScriptRoot\RestartStreamAudio.ps1"
# $goXLR = "$PSScriptRoot\RestartGoXLR.ps1"

$basicAudio = "RestartBasicAudio.ps1"
$streamAudio = "RestartStreamAudio.ps1"
$goXLR = "RestartGoXLR.ps1"


# doing the next 2 lines breaks stream deck just the Audio Service should be fine
# Start-Process -FilePath 'powershell.exe' -ArgumentList 'Restart-Service -Name Audiosrv' -Verb RunAs
Restart-Service -Name Audiosrv -Force

# Check then Launch GoXLR App

Write-Output "Calling GoXLR restart"
# & $goXLR
& $scriptDirectory\$goXLR
# Start-Process -FilePath powershell.exe -ArgumentList $goXLR -WorkingDirectory $scriptDirectory -Verb RunAs
Start-Sleep -s 1

Write-Output "Determining Audio Repeater status..."
if((Get-Process -name "audiorepeater*").count -gt 1){
  Write-Output "Appears to be streaming restarting stream repeaters!"
  # Start-Process -FilePath powershell.exe -ArgumentList $streamAudio -WorkingDirectory $scriptDirectory -Verb RunAs
  # & $streamAudio
  & $scriptDirectory\$streamAudio
  Start-Sleep -s 1
}else{
  Write-Output "Appears to not be streaming restarting basic repeaters!"
  # Start-Process -FilePath powershell.exe -ArgumentList $basicAudio -WorkingDirectory $scriptDirectory -Verb RunAs
  # & $basicAudio
  & $scriptDirectory\$basicAudio
  Start-Sleep -s 1
}

# Write-Warning "Unmute then Remute Chat on the GOXLR.... ok?"
# Read-Host "Press key to continue"

#Wait for a bit
Write-Output "End of Audio Service Restart."
Start-Sleep -s 5

