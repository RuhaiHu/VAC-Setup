@ECHO OFF
SLEEP 30
REM Starts Main AudioRepeater Default audio set to Line 1 repeats to Asus Xonar Speakers
start /min "AudioRepeater 1" "%programfiles%\Virtual Audio Cable\audiorepeater_ks.exe" /WindowName:"AudioRepeater 1" /Input: "Virtual Cable 1" /Output: "ASUS Xonar DX Audio" /BufferMs:50 /SamplingRate:48000 /Priority:High /Autostart

SLEEP 30

REM Starts Secondary AudioRepeater taking Line 2 audio for chat program output and sending to headset
start /min "AudioRepeater 2" "%programfiles%\Virtual Audio Cable\audiorepeater_ks.exe" /WindowName:"AudioRepeater 2" /Input: "Virtual Cable 2" /Output: "SteelSeries H Wireless" /BufferMs:50 /SamplingRate:48000 /Priority:High /Autostart

SLEEP 30

REM Starts Third AudioRepeater taking line 1 audio and sending it to Line 3 for OBS or streaming
start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater_ks.exe" /WindowName:"AudioRepeater 3" /Input: "Virtual Cable 1" /Output: "Virtual Cable 3" /BufferMs:100 /SamplingRate:48000 /Priority:High /Autostart
