@ECHO OFF

REM Starts Main AudioRepeater Default audio set to Line 1 repeats to Asus Xonar Speakers
REM start /min "AudioRepeater 1" "%programfiles%\Virtual Audio Cable\audiorepeater_ks.exe" /WindowName:"AudioRepeater 1" /Input: "Virtual Cable 1" /Output: "ASUS Xonar DX Audio" /BufferMs:20 /Buffers:8  /SamplingRate:48000 /Priority:High /Autostart

REM start /min "AudioRepeater 2" "%programfiles%\Virtual Audio Cable\audiorepeater_ks.exe" /WindowName:"AudioRepeater 2" /Input: "Virtual Cable 2" /Output: "SteelSeries H Wireless" /BufferMs:20 /Buffers:8  /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 1" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"AudioRepeater 1" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (ASUS Xonar DX Audio D" /BufferMs:100 /SamplingRate:48000 /Priority:High /Autostart

REM Starts Secondary AudioRepeater taking Line 2 audio for chat program output and sending to headset
start /min "AudioRepeater 2" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"AudioRepeater 2" /Input: "Line 2 (Virtual Audio Cable)" /Output: "Speakers (SteelSeries H Wireles" /BufferMs:100 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"AudioRepeater 3" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Line 3 (Virtual Audio Cable)" /BufferMs:100 /SamplingRate:48000 /Priority:High /Autostart

