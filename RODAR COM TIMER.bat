@echo off
echo Teste
echo:

set executavel=xmrig.exe
set tempoexec=240
set temporestart=10
set /a counter=0

:start
start "Mineiro de Minas" %executavel%
echo:
echo Essa bagaca vai rodar por %tempoexec% segundos
timeout %tempoexec%
taskkill /f /im %executavel%
echo:
echo Vai reiniciar em %temporestart% segundos (%counter%)
timeout %temporestart%
set /a counter+=1
echo:
echo:
goto start