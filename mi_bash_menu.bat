@echo off
:menu
cls
echo ================================================
echo          🎯 MENU DE UTILIDADES BATCH 🎯
echo ================================================
echo.
echo [1] Abrir Microsoft Word
echo [2] Abrir Microsoft Excel
echo [3] Abrir pagina Universidad Javeriana Cali
echo [4] Abrir pagina web favorita
echo [5] Reproducir Video Musical Favorito 1
echo [6] Reproducir Video Musical Favorito 2
echo [7] Bloquear pantalla
echo [0] Salir
echo.
set /p opcion="Selecciona una opcion: "

if "%opcion%"=="1" goto word
if "%opcion%"=="2" goto excel
if "%opcion%"=="3" goto javeriana
if "%opcion%"=="4" goto favorita
if "%opcion%"=="5" goto video1
if "%opcion%"=="6" goto video2
if "%opcion%"=="7" goto bloquear
if "%opcion%"=="0" exit
goto menu

:word
echo Abriendo Microsoft Word...
start winword.exe
pause
goto menu

:excel
echo Abriendo Microsoft Excel...
start excel.exe
pause
goto menu

:javeriana
echo Abriendo pagina de la Universidad Javeriana Cali...
start https://www.javerianacali.edu.co
pause
goto menu

:favorita
echo Abriendo pagina web favorita...
start https://www.friv.com/
pause
goto menu

:video1
echo Reproduciendo Video Musical Favorito 1...
start https://www.youtube.com/watch?v=JseJETvMtHY&list=RDJseJETvMtHY&start_radio=1
pause
goto menu

:video2
echo Reproduciendo Video Musical Favorito 2...
start https://www.youtube.com/watch?v=A8rijjG_Cv4
goto menu

:bloquear
echo Bloqueando la pantalla...
rundll32.exe user32.dll,LockWorkStation
goto menu
