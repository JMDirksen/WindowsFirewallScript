@echo off

:: Reset firewall
netsh advfirewall reset

:: Turn off notifications
netsh advfirewall set allprofiles settings inboundusernotification disable

:: Allow rule groups
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=yes
netsh advfirewall firewall set rule group="Network Discovery" new enable=yes
netsh advfirewall firewall set rule group="Remote Desktop" new enable=yes

:: Allow ports
::netsh advfirewall firewall add rule name="My ports" dir=in action=allow localport=80,443 protocol=tcp

:: Allow applications
::netsh advfirewall firewall add rule name="My application" dir=in action=allow program="C:\Windows\System32\calc.exe"
