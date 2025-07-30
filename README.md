# ESUMonitoring-download-script

Questo è uno script bat che scarica e "installa" il software della telemetria di EmagSU


### istruzioni
1. connettere la macchina a internet
  - **non puoi connettere la macchina a internet? segui [`istruzioni (offline)`](https://github.com/Emag-SU/ESUMonitoring-download-script/edit/main/README.md#istruzioni-offline)**
2. aprire questa pagina sulla macchina e proseguire lì
3. scaricare e installare Python (Last Tested Version: 3.13.5)
  - <a href="https://www.python.org/downloads/release/python-3135" target="_blank">link</a>
    - scorrere in fondo fino a Files
    - scaricare Windows installer (64-bit)
  - selezionare `add to path`
  - al messaggio `installation was succesful` cliccare `disable path limit`
4. scaricare e installare git <a href="https://git-scm.com/downloads/win" target="_blank">qui</a>
5. scaricare l'installer [qui](https://github.com/Emag-SU/ESUMonitoring-download-script/releases/latest/download/install.bat)
  - il browser probabilmente segnalerà il file .bat come sospetto, procedere con il download.
  - windows dirà che è un file sospetto senza firma, procedere con l'esecuzione.
6. eseguire install.bat
  - chiederà un login, questo è perché la repo della telemetria è (giustamente) privata.
    - dunque, eseguire il login con l'account github di sola lettura (contattare [Alberto Macchi](mailto:amacchi@emag.com)) per dubbi.


### istruzioni (offline)
- se è la prima volta che installi questo software su una macchina
  1. (su un computer) scarica questo [link](https://github.com/Emag-SU/ESUMonitoring-download-script/releases/latest/download/full.zip)
  2. estrai lo zip
  3. copia i file su una chiavetta
  4. (sulla macchina) avvia gli installer per python e git, se non già presenti nel sistema
    - come verificare che non siano già installati:
      - avvia un terminale
      - esegui `python --version`
      - se la risposta è qualsiasi cosa simile a `Python 3.13.5`, python è installato (dunque, non avviare l'installer)
      - esegui `git --version`
      - se la risposta è qualsiasi cosa simile a `git version 2.50.1.windows.1`, git è installato (dunque, non avviare l'installer)
  5. sposta la cartella ESUMonitoring in `C:\`
  6. entra nella cartella `C:\ESUMonitoring\EmagSU_Monitoring`
  7. avvia setup.bat
  8. (intanto) entra nella cartella `.\src\py\main\config_templates` e **copia** il file giusto per la attuale macchina una cartella sopra, e rinominalo in `config.json`
  9. per cambiare il comportamento dell'acquisizione modificare il config 

 - se stai aggiornando questo sistema già presente su una macchina
   1. (su un computer) scarica questo [link](https://github.com/Emag-SU/ESUMonitoring-download-script/releases/latest/download/lean.zip)
   2. estrai lo zip
   3. copia i file su una chiavetta
   4. (sulla macchina) vai alla cartella `C:\ESUMonitoring\EmagSU_Monitoring\src\py\main` e copia `config.json` in una cartella esterna a tutte queste
   5. elimina la cartella `C:\ESUMonitoring`
   6. copia la cartella dalla chiavetta in `C:\`
   7. entra nella cartella `C:\ESUMonitoring\Emag_SU_Monitoring`
   8. reinserisci `config.json` dove era
   9. avvia setup.bat


### per avviare il programma
- start.bat avvia sia l'acquisizione che il server per l'interfaccia web
- main.bat avvia solo l'acquisizione
- web.bat avvia solo il server per l'interfaccia web

### sviluppo di questo installer
il file si eliminerà quando eseguito, quindi usare test.bat per testarlo
