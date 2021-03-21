@echo off
netsh wlan start hostednetwork
echo ***********************************
echo.
echo Check above for the message "The hosted network started."
echo.
echo If you don't see it then you probably need to run
echo "Initial Setup.bat" first
echo.
echo ***********************************
pause

