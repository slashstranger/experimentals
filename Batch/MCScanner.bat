@echo off
TITLE Scanner Exemplo
color 5
echo. 
echo.                       Scanner Teste
echo. _________________________________________________________
echo.
echo Coloque o caminho do arquivo para detectar
set /p pathFile=" Arquivo: "
set susFound=a

if not exist %pathFile% ( 
    color c 
    cls
    echo. 
    echo.                       Scanner Teste
    echo. _________________________________________________________
    echo.
    echo O arquivo nao existe
    pause>nul
    exit
)


>nul findstr /c:"VapeLoader" %pathFile% && (
    echo - Vape
    set susFound=b
    echo.
)

>nul findstr /c:"kjk.class" %pathFile% && (
    echo - SumoClient
    set susFound=b
    echo.
)

>nul findstr /c:"WhiteoutBoot" %pathFile% && (
    echo - Whiteout
    set susFound=b
    echo.
)

if %susFound%==b (
    color c 
    echo Um cheat foi detectado
) else (
    color a
    echo Nenhum cheat foi encontrado
)

MSG * Scan completo!
TIMEOUT /T 1 >nul 
pause>nul
exit