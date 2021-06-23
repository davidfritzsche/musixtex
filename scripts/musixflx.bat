:: wrapper script to call musixflx.lua
:: Usage: musixflx basename[.mx1 | .tex] [debug mode]
:: Suggested by Tomasz Luczak (Tomek) t34www@googlemail.com

@for /f "delims=" %%I in ('kpsewhich --format=texmfscripts %~n0.lua') do texlua "%%I" %*
:end
