@echo off
for /f "tokens=2 delims== " %%A in ('wmic baseboard get serialnumber /value ^| find /i "SerialNumber="') do set serialnumber=%%A

if /i "%serialnumber%" == "You Serial Number" goto :exit

if /i not "%serialnumber%" == "You Serial Number" goto :exit2


:exit
echo Serial Correct
pause >nul
exit


:exit2
exit