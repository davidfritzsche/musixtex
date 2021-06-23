:: wrapper script to call musixtex.lua
:: Usage: musixtex [options] basename[.tex|.ltx|.mtx|.pmx|.aspc]
:: Suggested by Tomasz Luczak (Tomek) t34www@googlemail.com

@for /f "delims=" %%I in ('kpsewhich --format=texmfscripts %~n0.lua') do texlua "%%I" %*
:end
