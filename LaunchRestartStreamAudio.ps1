#Requires -version 5.1
<#
.SYNOPSIS
  For Running the RestartStreamAudio from stream deck
.DESCRIPTION

.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Michael Weber
  Creation Date:  2020.01.11
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Minimized -ExecutionPolicy Bypass -File "D:\GD\twitch\VAC Setup\LaunchRestartStreamAudio.ps1"
  
  >
#>

# Run the Restart Audio Script
Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -File "D:\GD\twitch\VAC Setup\RestartStreamAudio.ps1"' -Verb RunAs