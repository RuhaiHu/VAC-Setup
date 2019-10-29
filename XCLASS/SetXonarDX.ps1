#requires -version 2
<#
.SYNOPSIS
  Change default audio device to Speakers (ASUS Xonar DX Audio Device)
.DESCRIPTION
  Change default audio device to Speakers (ASUS Xonar DX Audio Device)
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
  
  Name    : Speakers (ASUS Xonar DX Audio Device)
  ID      : {0.0.0.00000000}.{7af6e827-9964-46d1-b07e-6f403223a573}
  >
#>

Import-Module AudioDeviceCmdlets

# Set to Speakers (ASUS Xonar DX Audio Device)
Set-AudioDevice -ID '{0.0.0.00000000}.{7af6e827-9964-46d1-b07e-6f403223a573}'