#/bin/bash

netsh advfirewall firewall add rule name=”RDP-TCP-Server” dir=in protocol=tcp localport=3389 action=allow
netsh advfirewall firewall add rule name=”RDP-UDP-Server” dir=in protocol=udp localport=3389 action=allow
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v fLogonDisabled /t REG_DWORD /d 0 /f