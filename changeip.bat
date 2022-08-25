@echo off
chcp 65001
set /p settings="Выберите настройки (1 - армОСН, 2 - армРЕЗ, 3 - ОК):"
echo Выбраны настройки - %settings%

if %settings% equ 2 goto rez
if %settings% equ 3 goto ok

:osn
set IFACE="Ethernet"
set IP=192.1.1.222
set MASK=255.255.0.0
goto dalee

:rez
set IFACE="Ethernet"
set IP=192.2.1.222
set MASK=255.255.0.0

:ok
set IFACE="Ethernet"
set IP=172.21.1.222
set MASK=255.255.0.0


:dalee
echo Установлены настройки сети: 
echo IP-адрес: %IP%
echo Маска подсети: %MASK%


netsh interface ip set address %IFACE% static %IP% %MASK%


:dalee2
pause