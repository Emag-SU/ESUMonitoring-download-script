# ESUMonitoring-download-script

Questo è uno script bat che scarica e "installa" il software della telemetria di EmagSU


### istruzioni (sulla macchina)
- connettere la macchina a internet
- scaricare e installare Python (Last Tested Version: 3.13.5) [qui](https://www.python.org/downloads/release/python-3135/)
- scaricare e installare git [qua](https://git-scm.com/downloads/win)
- scaricare l'installer [qui](https://github.com/Emag-SU/ESUMonitoring-download-script/releases/latest/download/install.bat)
  - il browser probabilmente segnalerà il file .bat come sospetto, procedere con il download.
  - windows dirà che è un file sospetto senza firma, procedere con l'esecuzione.
- eseguire {versione}_install.bat
  - chiederà un login, questo è perché la repo della telemetria è (giustamente) privata.
    - dunque, eseguire il login con l'account github di sola lettura (contattare [Alberto Macchi](mailto:amacchi@emag.com)).


### sviluppo di questo installer
il file si eliminerà quando eseguito, quindi usare test.bat per testarlo