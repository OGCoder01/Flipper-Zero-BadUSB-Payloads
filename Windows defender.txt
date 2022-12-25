REM  Microsoft Anti-Virus Permanent Disable
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f

REM Microsoft Anti-Virus Permanent Re-Enable
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 0 /f
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 0 /f
