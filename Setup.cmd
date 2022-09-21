@echo off
schtasks /create /tn "WindowsFirewallScript" /sc onstart /ru system /tr "%~dp0WindowsFirewallScript.cmd"
echo.
echo.
if %ERRORLEVEL%==1 echo Make sure to run this setup with elevated permissions (Run as administrator).
pause
