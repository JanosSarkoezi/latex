# Schach mit LaTex

Für die Visualisierung von Schachspielen ist von Vorteil die Zeichensätze von
enpassant zu benutzen. Download ist zum Beispiel unter

    https://www.ctan.org/tex-archive/fonts/chess/enpassant

zu finden. Nach dem Entpacken der ZIP-Datei werden die

    *.tfm-Dateien: in das Verzeichnis fonts/tfm/enpassant
    *.pfb-Dateien: in das Verzeichnis fonts/type1/enpassant
    *.afm-Dateien: in das Verzeichnis fonts/afm/enpassant
    *.enc-Dateien: in das Verzeichnis fonts/enc/enpassant
    *.fd -Dateien: in das Verzeichnis tex/latex/chessfss/enpassant
    und die chess-enpassant.map Datei in das Verzeichnis fonts/map/pdftex/updmap

kopiert. Unter Ubuntu 16.04 ist das fonts Verzeichnis unter

    /usr/share/texlive/texmf-dist/fonts

zu finden. Nach dem können die neuen Dateien mit dem Befehl

    sudo texhash

im System bekannt gegeben werden. Es muss noch ein Verzeichnis angelegt werden

    makedir -p ~/texmf/web2c

In diesem Verzeichnis ist dann die Datei updmap.cfg mit dem Inhalt

    Map chess-enpassant.map

anzulegen. Nun kann der Befehl

    updmap

ausgeführt werden. Dies liegt das Verzeichnis

    ~/.texmf-var

an. Dort sind unter anderem in der Datei

    ~/.texmf-var/fonts/map/pdftex/updmap/pdftex.map

die chess-enpassant.map zu finden.
