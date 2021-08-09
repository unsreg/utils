@echo off

set CHROME_PATH=chrome
set PROFILE_PATH=%~dp0profile
set PROFILE_NAME=%~n0

echo CHROME_PATH:  %CHROME_PATH%
echo PROFILE_PATH: %PROFILE_PATH%
echo PROFILE_NAME: %PROFILE_NAME%

start "" "%CHROME_PATH%" --user-data-dir="%PROFILE_PATH%\%PROFILE_NAME%"