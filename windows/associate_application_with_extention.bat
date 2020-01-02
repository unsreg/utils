@echo off

set XNVIEW=C:\Program Files (x86)\XnView\xnview.exe
set SUBLIME=C:\Program Files\Sublime Text 3\sublime_text.exe
set FOOBAR=C:\Program Files (x86)\foobar2000\foobar2000.exe

call :assoc_ext "%SUBLIME%" txt md js json css java sh yaml
call :assoc_ext "%XNVIEW%" png gif jpg jpeg tiff bmp ico
call :assoc_ext "%FOOBAR%" flac fla ape wav mp3 wma m4a ogg ac3

goto :eof

:assoc_ext
  set EXE=%1
  shift
  :loop
  if "%1" neq "" (
    ftype my_file_%1=%EXE% "%%1"
    assoc .%1=my_file_%1
    shift
    goto :loop
  )
goto :eof