@echo off
set /P wifi="Enter wifi name: "
ECHO The password is: 
netsh wlan show profile "%wifi%" key=clear | findstr "Key Content"
PAUSE
