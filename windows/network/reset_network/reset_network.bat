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
::https://answers.microsoft.com/ru-ru/windows/forum/all/%D1%81%D0%BA%D0%B0%D1%87%D0%B5%D1%82/1fab45e9-6a84-459a-9c72-c83048cedf60?auth=1
netsh int ip delete arpcache

pause