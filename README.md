# ESUMonitoring-download-script

Questo è uno script bat che scarica e "installa" il software della telemetria di EmagSU


### istruzioni
- connettere la macchina a internet
- aprire questa pagina sulla macchina e proseguire lì
- scaricare e installare Python (Last Tested Version: 3.13.5)
  - <a href="https://www.python.org/downloads/release/python-3135" target="_blank">link</a>
    - scorrere in fondo fino a Files
    - scaricare Windows installer (64-bit)
  - selezionare `add to path`
  - al messaggio `installation was succesful` cliccare `disable path limit`
- scaricare e installare git <a href="https://git-scm.com/downloads/win" target="_blank">qui</a>
- scaricare l'installer [qui](https://github.com/Emag-SU/ESUMonitoring-download-script/releases/latest/download/install.bat)
  - il browser probabilmente segnalerà il file .bat come sospetto, procedere con il download.
  - windows dirà che è un file sospetto senza firma, procedere con l'esecuzione.
- eseguire {versione}_install.bat
  - chiederà un login, questo è perché la repo della telemetria è (giustamente) privata.
    - dunque, eseguire il login con l'account github di sola lettura (contattare [Alberto Macchi](mailto:amacchi@emag.com)).


### sviluppo di questo installer
il file si eliminerà quando eseguito, quindi usare test.bat per testarlo