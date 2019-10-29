@ECHO OFF

REM taskkill -IM "audiorepeater.exe" > nul

start /min "AudioRepeater 1" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"Desktop - L1 to Asus" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (Realtek High Definiti" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 2" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"Music - L2 to Asus" /Input: "Line 2 (Virtual Audio Cable)" /Output: "Speakers (Realtek High Definiti" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

REM start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"VOIP - L3 to Steel" /Input: "Line 3 (Virtual Audio Cable)" /Output: "Speakers (SteelSeries Siberia 6" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"Any - L3 to Wireless" /Input: "Line 3 (Virtual Audio Cable)" /Output: "Headphones (Arctis Pro Wireless" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

REM start /min "AudioRepeater 4" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"VOIP - L4 to Wireless" /Input: "Line 3 (Virtual Audio Cable)" /Output: "Headset Earphone (Arctis Pro Wi" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart