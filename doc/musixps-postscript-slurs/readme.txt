This package adds the PostScript slurs, ties and crescendos into MusiXTeX.
It is possible to use it in almost the same way as the original bitmapped
slur simply saying "\input musixps" at the beginning of your source file.
The resulting dvi file should be then converted into PostScript by dvips
(and then to PDF using ps2pdf, ghostscript or Adobe Distiller, if necessary).

Please note that the slurs won't appear in any other dvi previewer, nor when
you use pdftex to produce the PDF file directly.

The mxsk font is used for "half ties" - short breaked ties at the beginning of the line.
If you use \nohalfties, you do not need to install this font.
The musixps.tex should be placed anywhere TeX can find it,
prefferably into the musixtex directory.
Do not include it into your TeX format file!
The psslurs.pro should be placed somewhere dvips can find it.

You can freely use or modify this package, but you are not allowed to distribute
any modified versions without my prior permission, or redistribute the package
without my name inside it. And of course, do not blame me for anything that goes
wrong...

Stanislav Kneifl,
standa@hiero.cz


HISTORY
~~~~~~~

0.92 (12.5.2002)
      added: \nosluradjust, \sluradjust, \notieadjust, \tieadjust
      added: \slopebrkslurtrue, \slopebrkslurfalse
      fixed: shaded slurs now do not break up to separate curves
             at high resolutions

0.91 (10.1.2002)
     First public release, adopted from OpusTeX version. 