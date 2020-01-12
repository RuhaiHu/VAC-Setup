#Requires -version 5.1
# Import-Module AudioDeviceCmdlets
<#
.SYNOPSIS
  Starts the Console Mic Virtual audio cable
.DESCRIPTION

.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         Michael Weber
  Creation Date:  2019.11.19
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example
    
  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -WindowStyle Minimized -ExecutionPolicy Bypass -File "D:\GD\Twitch\VAC Setup\Start_ConsoleMic.ps1"
  
  >
#>

# launch current list of VAC cable repeaters
# $firstVACRepeater = @'
# cmd.exe /C "D:\GD\Twitch\VAC Setup\L1_to_BuiltIn.bat"
# '@
# Invoke-Expression -Command:$firstVACRepeater

# @ECHO OFF
# start /min "AudioRepeater 1" "C:\\Program Files\\Virtual Audio Cable\\Virtual Audio Cable\\audiorepeater.exe" /WindowName:"Desktop - L1 to Built In" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (Realtek High Definiti" /BufferMs:150 /Buffers:16 /SamplingRate:48000 /Priority:High /Autostart

Start-Process -FilePath 'cmd.exe' -ArgumentList '/C "D:\DB\Twitch\\VAC Setup\\VoiceMeeterOutVAIO_to_XonarStereo.bat"' -Verb runAs

# Read-Host "wait to continue... press key"

# Set to VAC Line 1
# down side to using this to set it it sets everything including the voip defaults so be warned 
# though might not matter if your setting things manually in apps
# $vac1 = Get-AudioDevice -List | Where-Object -Property Name -eq "Line 1 (Virtual Audio Cable)" | Where-Object -Property Type -eq 'Playback'
# Set-AudioDevice -ID $vac1.ID