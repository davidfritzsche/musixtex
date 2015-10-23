rem proces all files with extension pmx in this directory
for /F %%I in ('dir /B *.tex') do call lapdfview.bat %%~nI
pause
