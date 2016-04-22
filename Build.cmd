echo off
del /Q /S *.aux *.bak *.bbl *.blg *.dvi *.lof *.log *.lot *.out *.ps *.synctex.gz *.toc
call latex --src --interaction=errorstopmode --synctex=1 "imaginglibrary.tex"
pause
call bibtex "imaginglibrary"
pause
call latex --src --interaction=errorstopmode --synctex=1 "imaginglibrary.tex"
pause
call latex --src --interaction=errorstopmode --synctex=1 "imaginglibrary.tex"
pause
call C:\CTEX\MiKTeX\source\latex\hyper\dvi2pdf.pl "imaginglibrary.dvi"
pause
REM call ps2pdf "myPostDocRep.ps"
del /Q /S *.aux *.bak *.bbl *.blg *.lof *.log *.lot *.out *.synctex.gz *.toc
