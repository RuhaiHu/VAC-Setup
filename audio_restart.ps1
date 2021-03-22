#Requires -version 5.1
<#
.SYNOPSIS
  Restart audio services and current virtual cables, and more?
.DESCRIPTION

.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Ruhai Hu
  Creation Date:  2019.10.09
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example


  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Minimized -ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\audio_restart.ps1"

#>

Start-Process -FilePath 'powershell.exe' -ArgumentList '-ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\restartaudiosetup.ps1"' -Verb RunAs
