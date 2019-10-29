#requires -version 2
Import-Module AudioDeviceCmdlets
<#
.SYNOPSIS
  To start VAC at login
.DESCRIPTION
  To start up VAC at login for audio at login
.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Michael Weber
  Creation Date:  03.10.2018
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -windowstyle hidden -File "D:\GD\Twitch\VAC Setup\XCLASS\login.ps1"
  powershell.exe -ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\XCLASS\login.ps1"
  
  >
#>

# kill any stray audio repeaters
Get-Process -Name "audiorepeater" | Stop-Process

#Wait for a bit
Start-Sleep -s 1

$command = @'
cmd.exe /C "D:\GD\Twitch\VAC Setup\XCLASS\login.bat"
'@

Invoke-Expression -Command:$command

# Set to Line 1 (Virtual Audio Cable)
Set-AudioDevice -ID '{0.0.0.00000000}.{8e24dd6f-6a7d-4bab-8d5c-05e056fbdfd0}'