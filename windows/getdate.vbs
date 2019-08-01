dim dt
dim tmpYear
dim tmpMonth
dim tmpDay
dim tmpHour
dim tmpMinute
dim tmpSecond

dt=now
tmpYear=year(dt)
tmpMonth=month(dt)
tmpDay=day(dt)
tmpHour=hour(dt)
tmpMinute=minute(dt)
tmpSecond=second(dt)

if tmpMonth < 10 then 
	tmpMonth = "0" & tmpMonth
end if
if tmpDay < 10 then
	tmpDay = "0" & tmpDay
end if
if tmpHour < 10 then
	tmpHour = "0" & tmpHour
end if
if tmpMinute < 10 then
	tmpMinute = "0" & tmpMinute
end if
if tmpSecond < 10 then
	tmpSecond = "0" & tmpSecond
end if

wscript.echo (tmpYear & tmpMonth & tmpDay & tmpHour & tmpMinute & tmpSecond)