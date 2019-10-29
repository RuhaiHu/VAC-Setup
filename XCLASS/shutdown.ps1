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
  Author:         Michael Weber
  Creation Date:  03.10.2018
  Purpose/Change: Initial script development
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example>
#>

# Set to Speakers (Realtek High Definition Audio)
Set-AudioDevice -ID '{0.0.0.00000000}.{b5bc255c-a6b4-46a8-8db3-2968a7f2b862}'

# kill audio repeater processes
Get-Process -Name "audiorepeater" | Stop-Process