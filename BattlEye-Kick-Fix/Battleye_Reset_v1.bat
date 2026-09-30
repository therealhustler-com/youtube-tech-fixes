sc delete beservice


ipconfig /flushdns
ipconfig /release
ipconfig /renew
netsh winsock reset


shutdown -r -t 30
