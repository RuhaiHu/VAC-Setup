#requires -version 2
<#
.SYNOPSIS
  Change default audio device to Speakers (SteelSeries Siberia 650)
.DESCRIPTION
  Change default audio device to Speakers (SteelSeries Siberia 650)
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
  
  Name    : Speakers (SteelSeries Siberia 650)
  ID      : {0.0.0.00000000}.{4307794f-0e3e-403e-a501-65718c0f3e84}
  >
#>

Import-Module AudioDeviceCmdlets

# Set to Speakers (SteelSeries Siberia 650)
Set-AudioDevice -ID '{0.0.0.00000000}.{ddf77ac7-2d87-4736-b75f-ceb6614b7528}'