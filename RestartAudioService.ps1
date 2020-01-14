#Requires -version 5.1
#Requires -RunAsAdministrator
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
  
  >
#>

# doing the next 2 lines breaks stream deck just the Audio Service should be fine
# Stop-Service -Name 'Audiosrv'
# Restart-Service -Name 'AudioEndpointBuilder'
Restart-Service -Name 'Audiosrv'

#Wait for a bit
Start-Sleep -s 1