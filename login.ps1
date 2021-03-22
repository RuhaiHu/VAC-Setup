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
  Author:         Ruhai Hu
  Creation Date:  03.10.2018
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -windowstyle hidden -File "D:\DB\Twitch\VAC Setup\login.ps1"
  powershell.exe -ExecutionPolicy Bypass -File "D:\DB\Twitch\VAC Setup\login.ps1"
  pointless update
  >
#>

# kill any stray audio repeaters
Get-Process -Name "audiorepeater" | Stop-Process

#Wait for a bit
Start-Sleep -s 1

$command = @'
cmd.exe /C "D:\DB\Twitch\VAC Setup\login.bat"
'@

Invoke-Expression -Command:$command

# Set to VAC Line 1
$vac1 = Get-AudioDevice -List | Where-Object -Property Name -eq "Line 1 (Virtual Audio Cable)" | Where-Object -Property Type -eq 'Playback'
Set-AudioDevice -ID $vac1.ID