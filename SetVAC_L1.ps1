#requires -version 2
<#
.SYNOPSIS
  Change default audio device to Line 1 (Virtual Audio Cable)
.DESCRIPTION
  Change default audio device to Line 1 (Virtual Audio Cable)
.NOTES
  Version:        1.0
  Author:         Ruhai Hu
  Creation Date:  03.10.2018
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -windowstyle hidden -File "D:\Dropbox\Twitch\VAC Setup\login.ps1"
  powershell.exe -ExecutionPolicy Bypass -File "D:\Dropbox\Twitch\VAC Setup\login.ps1"
    
  From admin powershell run: Get-AudioDevice -list
  To retrieve list of devices and to obtain below information
  
  Name    : Line 1 (Virtual Audio Cable)
  >
#>

Import-Module AudioDeviceCmdlets

# Set to Line 1 (Virtual Audio Cable)
$vac1 = Get-AudioDevice -List | Where-Object -Property Name -eq "Line 1 (Virtual Audio Cable)" | Where-Object -Property Type -eq 'Playback'
Set-AudioDevice -ID $vac1.ID