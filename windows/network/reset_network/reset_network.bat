ipconfig /release
ipconfig /flushdns
ipconfig /renew
nbtstat -r
netsh int ip reset
netsh winsock reset
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=disable
netsh int tcp set global rss=enabled
netsh int tcp show global

pause