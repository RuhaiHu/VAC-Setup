#requires -version 5

Import-Module AudioDeviceCmdlets
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
  Author:         Michael Weber
  Creation Date:  2019.10.09
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -windowstyle hidden -File "D:\Dropbox\Twitch\VAC Setup\restartaudiosetup.ps1"

  powershell -Command "Start-Process powershell "-ExecutionPolicy Bypass -NoProfile -NoExit -Command "D:\Dropbox\Twitch\VAC Setup\restartaudiosetup.ps1" -Verb RunAs"

  powershell.exe -ExecutionPolicy Bypass -File "D:\Dropbox\Twitch\VAC Setup\restartaudiosetup.ps1"
  "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -ExecutionPolicy Bypass -File "D:\Dropbox\Twitch\VAC Setup\restartaudiosetup.ps1"

  "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -ExecutionPolicy Bypass -File "D:\Dropbox\Twitch\VAC Setup\restartaudiosetup.ps1"
  >
#>

# kill any stray audio repeaters
Get-Process -Name "audiorepeater" | Stop-Process

# doing the next 2 lines breaks stream deck just the Audio Service should be fine
# Stop-Service -Name 'Audiosrv'
# Restart-Service -Name 'AudioEndpointBuilder'
Restart-Service -Name 'Audiosrv'

#Wait for a bit
Start-Sleep -s 1

# launch current list of VAC cable repeaters
# $firstVACRepeater = @'
# cmd.exe /C "D:\Dropbox\Twitch\VAC Setup\L1_to_BuiltIn.bat"
# '@
# Invoke-Expression -Command:$firstVACRepeater

# @ECHO OFF
# start /min "AudioRepeater 1" "C:\\Program Files\\Virtual Audio Cable\\Virtual Audio Cable\\audiorepeater.exe" /WindowName:"Desktop - L1 to Built In" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (Realtek High Definiti" /BufferMs:150 /Buffers:16 /SamplingRate:48000 /Priority:High /Autostart

Start-Process -FilePath 'cmd.exe' -ArgumentList '/C "D:\Dropbox\Twitch\\VAC Setup\\L1_to_BuiltIn.bat"' -Verb runAs

# Read-Host "wait to continue... press key"

# Set to VAC Line 1
# down side to using this to set it it sets everything including the voip defaults so be warned 
# though might not matter if your setting things manually in apps
# $vac1 = Get-AudioDevice -List | Where-Object -Property Name -eq "Line 1 (Virtual Audio Cable)" | Where-Object -Property Type -eq 'Playback'
# Set-AudioDevice -ID $vac1.ID