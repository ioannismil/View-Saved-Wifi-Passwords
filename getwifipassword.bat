@echo off
ECHO Available Wifis:
netsh wlan show profile
:loophere
set /P wifi="Enter wifi name: "
ECHO The password is: 
netsh wlan show profile "%wifi%" key=clear | findstr "Key Content"
goto:loophere
PAUSE
