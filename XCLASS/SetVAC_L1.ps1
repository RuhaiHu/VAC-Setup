#requires -version 2
<#
.SYNOPSIS
  Change default audio device to Line 1 (Virtual Audio Cable)
.DESCRIPTION
  Change default audio device to Line 1 (Virtual Audio Cable)
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
  
  Name    : Line 1 (Virtual Audio Cable)
  ID      : {0.0.0.00000000}.{d47e4723-91f1-48dd-b43e-d7c32a90b9fb}
  >
#>

Import-Module AudioDeviceCmdlets

# Set to Line 1 (Virtual Audio Cable)
Set-AudioDevice -ID '{0.0.0.00000000}.{8e24dd6f-6a7d-4bab-8d5c-05e056fbdfd0}'