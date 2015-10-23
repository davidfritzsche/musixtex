rem proces all files with extension pmx in this directory
pause
for /F %%I in ('dir /B *.tex') do call mupsview.bat %%~nI
pause
