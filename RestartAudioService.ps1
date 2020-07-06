#Requires -version 5.1
Import-Module AudioDeviceCmdlets
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

# Write-Warning "Unplug GOXLR.... ok?"
# Read-Host "Press key to continue"

# # Kill the GoXlR application
# Get-Process -Name "GoXLR App" | Stop-Process

# doing the next 2 lines breaks stream deck just the Audio Service should be fine
# Stop-Service -Name 'Audiosrv'
# Restart-Service -Name 'AudioEndpointBuilder'
# Restart-Service -Name 'Audiosrv'
Start-Process -FilePath 'powershell.exe' -ArgumentList 'Restart-Service -Name Audiosrv' -Verb RunAs

# # Check then Launch GoXLR App
# if(!(Get-Process -Name "GoXLR App")){
#   Start-Process -FilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\GOXLR App\GOXLR App.lnk"
#   if(Get-Process -Name "GoXLR App"){
#   Write-Output "GoXLR App Started!"}
# }
# elseif(Get-Process -Name "GoXLR App"){
#   Write-Output "GoXLR App already running!"}
# else{
#   Write-Error "GoXLR App Failed to Start!"
# }

# Write-Warning "Unmute then Remute Chat on the GOXLR.... ok?"
# Read-Host "Press key to continue"

#Wait for a bit
Start-Sleep -s 1
