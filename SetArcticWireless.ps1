#requires -version 2
<#
.SYNOPSIS
  Change default audio device to Headphones (Arctis Pro Wireless Game)
.DESCRIPTION
  Change default audio device to Headphones (Arctis Pro Wireless Game)
.NOTES
  Version:        1.0
  Author:         Michael Weber
  Creation Date:  03.10.2018
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -windowstyle hidden -File "D:\Dropbox\Twitch\VAC Setup\login.ps1"
  powershell.exe -ExecutionPolicy Bypass -File "D:\Dropbox\Twitch\VAC Setup\login.ps1"
    
  From admin powershell run: Get-AudioDevice -list
  To retrieve list of devices and to obtain below information
  
  Name    : Headphones (Arctis Pro Wireless Game)
  >
#>

Import-Module AudioDeviceCmdlets

# Set to Headphones (Arctis Pro Wireless Game)
$articsGame = Get-AudioDevice -List | Where-Object -Property Name -eq "Headphones (Arctis Pro Wireless Game)"
Set-AudioDevice -ID $articsGame.ID