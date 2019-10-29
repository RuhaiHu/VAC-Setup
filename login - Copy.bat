@ECHO OFF

REM taskkill -IM "audiorepeater.exe" > nul

start /min "AudioRepeater 1" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"Desktop - L1 to Asus" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (ASUS Xonar DX Audio D" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 2" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"Music - L2 to Asus" /Input: "Line 2 (Virtual Audio Cable)" /Output: "Speakers (ASUS Xonar DX Audio D" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"VOIP - L3 to Steel" /Input: "Line 3 (Virtual Audio Cable)" /Output: "Speakers (SteelSeries Siberia 6" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart