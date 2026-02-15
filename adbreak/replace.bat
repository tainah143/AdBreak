@echo off
setlocal
for /r "." %%F in (details.html) do (
  if exist "%%~fF" (
    copy /y "%~dp0adbreak.html" "%%~fF" >nul
  )
)

endlocal

find . -name ‘details.html’ -exec cp adbreak.html {} \;
