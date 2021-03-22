#Requires -version 5.1
#Requires -RunAsAdministrator
<#
.SYNOPSIS
  Restart audio services and current virtual cables, and more?
.DESCRIPTION

.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        2.0
  Author:         Ruhai Hu
  Creation Date:  2019.10.09
  Last Modified Date: 2021.03.19
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Minimized -ExecutionPolicy Bypass -File "D:\GD\Twitch\Scripts\Launch-Stream-Software\audio_restart.ps1"
  
  >
#>

# Variables
$ProgFiles = $ENV:ProgramFiles
$AudioRepeater = $ProgFiles + "\Virtual Audio Cable\audiorepeater.exe"
$configAudioL1ToGoXLRMusic = "
  /WindowName: ""L1 to GoXLR Music"" 
  /Input:""Line 1 (Virtual Audio Cable)"" 
  /Output:""Music (TC-Helicon GoXLR)"" 
  /SamplingRate:48000 
  /BitsPerSample:16 
  /Channels:2 
  /BufferMs:150 
  /BufferParts:16 
  /Prefill:50 
  /ResyncAt:20 
  /Priority:High 
  /ChanCfg:""Stereo"" 
  /AutoStart"
# $configAudio = "/CloseInstance: ""L1 to GoXLR Music"""


# kill any stray audio repeaters
Get-Process -Name "audiorepeater*" | Stop-Process -Force

# #Wait for a bit
Start-Sleep -m 250

# Launch Audio Repeater
Start-Process -FilePath $AudioRepeater -ArgumentList $configAudioL1ToGoXLRMusic -WindowStyle Hidden -Verb runAs
Write-Output "End of Basic Audio restart."