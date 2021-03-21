@echo off
netsh wlan show drivers
echo ***********************************
echo.
echo Scroll up and check for a line that says "Hosted network supported : Yes"
echo.
SET /P success=Do you see it? (Y/N):
if /I "%success%" EQU "Y" goto setnetwork
echo Your WIFI adapter driver does not support a hosted network
echo Check if there is a driver update available and try again
echo after updating your WIFI adapter driver.
pause
exit
:setnetwork
SET /P ssid=Enter Virtual Router SSID (WIFI network name):
SET /P key=Enter Virtual Router Password (8 to 63 characters):
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
echo.
echo ***********************************
echo.
echo Check the above messages to verify the following:
echo 1. Hosted network mode has been set to allow
echo 2. SSID of the hosted network has been successfully changed
echo 3. User key passphrase of the hosted network has been successfully changed
echo.
SET /P success2=Does everything look good? (Y/N):
if /I "%success2%" EQU "Y" goto allgood
echo Lets try that again...
goto :setnetwork
:allgood
netsh wlan start hostednetwork
echo Done!
echo.
echo Next step - Open network adapters, right-click properties of your VPN
echo adapter (eg TAP Adapter V9), click sharing tab, enable "allow other 
echo network users..." and then choose your new hosted network adapter 
echo (Microsoft Virtual WiFi Miniport Adapter) from the dropdown menu.
echo.
pause


