#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#%% musixcrd - typsetting chord symbols with                   %%
#%%                   musixtex                                 %%
#%% makefile                                                   %%
#%% $Id$       %%   
#%% copyright 2004 , Robert Hennig                             %%
#%% this code is licensed in terms of the                      %%
#%% GNU Public License                                         %%
#%%                                                            %%
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

SOURCES = readme musixcrd.dtx makefile musixcrd.sty doc.tex strip.tex
TARGETS = readme musixcrd.tex doc.pdf

doc: doc.dvi

strip: musixcrd.tex

srcdist: musixcrdsrc.tgz

dist: musixcrd.tgz

all: strip doc srcdist dist

musixcrd.tex: strip.tex musixcrd.dtx
	tex strip.tex

doc.toc: doc.tex musixcrd.dtx
	latex doc.tex
	latex doc.tex

doc.dvi: doc.tex musixcrd.dtx doc.toc
	latex doc.tex

doc.ps: doc.dvi
	dvips -o doc.ps doc.dvi

doc.pdf: doc.dvi
	dvipdfm -o doc.pdf doc.dvi

musixcrdsrc.tgz: $(SOURCES)
	tar czvf musixcrdsrc.tgz $(SOURCES)

musixcrd.tgz: makefile $(TARGETS)
	tar czvf musixcrd.tgz $(TARGETS)