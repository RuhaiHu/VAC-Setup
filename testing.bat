@ECHO OFF

start /min "AudioRepeater_Desktop" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"L1 to Asus" /Input: "Line 1 (Virtual Audio Cable)" /Output: "Speakers (ASUS Xonar DX Audio D" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater_Music" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"L2 to Asus" /Input: "Line 2 (Virtual Audio Cable)" /Output: "Speakers (ASUS Xonar DX Audio D" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart

start /min "AudioRepeater_VOIP" "%programfiles%\Virtual Audio Cable\audiorepeater.exe" /WindowName:"L3 to Steel" /Input: "Line 3 (Virtual Audio Cable)" /Output: "Speakers (SteelSeries Siberia 6" /BufferMs:150 /Buffers:15 /SamplingRate:48000 /Priority:High /Autostart