@ECHO OFF

start /min "AudioRepeater 3" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"L1 to L3" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Line 3 (Virtual Audio Cable)" /BufferMs:100 /Buffers:12 /SamplingRate:48000 /Priority:High /Autostart