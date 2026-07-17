@echo off
set /p a001=9008COM£º
echo ÊäÈë¶Ë¿ÚºÅÎªCOM%a001%£¬Loading SBL to DDR Please wait...
QSaharaServer.exe -p \\.\COM%a001% -s 13:0-SBL -v 3
rem wait 4s
timeout /t 4 /nobreak

pause
QsaharaServer.exe -p \\.\COM%a001% -s 25:0-QSEE -s 23:0-RPM -s 1:0-CDT -s 34:0-DEVCFG -s 5:0-APPSBL -v 3
call "%~f0"