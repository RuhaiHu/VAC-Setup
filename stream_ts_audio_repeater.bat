REM Starts Takes Line 2 audio and repeats to Line 3 for OBS stream
start /min "AudioRepeater 4" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"AudioRepeater 4" /Input: "Line 2 (Virtual Audio Cable)" /Output: "Line 3 (Virtual Audio Cable" /BufferMs:150 /Buffers:12 /SamplingRate:48000 /Priority:High /Autostart