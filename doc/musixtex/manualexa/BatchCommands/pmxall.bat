rem proces all files with extension pmx in this directory
for /F %%I in ('dir /B *.pmx') do call pmxpsview.bat %%~nI
