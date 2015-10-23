rem cm-ltx2e = latex2e based on cm* fonts
del musixdoc.mx*
call cm-ltx2e musixdoc
if errorlevel 2 goto end
musixflx musixdoc
call cm-ltx2e musixdoc
if errorlevel 2 goto end
makeindx musixdoc.idx
call cm-ltx2e musixdoc
if errorlevel 2 goto end
makeindx musixdoc.idx
call cm-ltx2e musixdoc
call prthplj musixdoc musixdoc.lj
%emtexdir%\bin\dvips32 musixdoc -o musixdoc.ps -P300 -ta4
:end

