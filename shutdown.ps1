#requires -version 2
<#
.SYNOPSIS
  To start VAC at BOOT
.DESCRIPTION
  To start up VAC at BOOT for audio at BOOT
.PARAMETER <Parameter_Name>
    <Brief description of parameter input required. Repeat this attribute if required>
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
  <Example goes here. Repeat this attribute for more than one example>
#>

# Set to Speakers (Realtek High Definition Audio)
$speakers = Get-AudioDevice -List | Where-Object -Property Name -eq "Speakers (Realtek High Definition Audio)"
Set-AudioDevice -ID $speakers.ID

# kill audio repeater processes
Get-Process -Name "audiorepeater" | Stop-Process