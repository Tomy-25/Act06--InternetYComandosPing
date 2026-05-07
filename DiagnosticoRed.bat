@echo off
echo.
:Menu
cls
echo 1. Verificacion de bucle local(loopback)
echo 2. Obtener IP de la placa
echo 3. Prueba de conectividad estandar
echo 4. Monitoreo continuo
echo 5. Definir cantidad de paquetes
echo 6. Prueba de carga
echo 7.Resolucion de nombres
echo 8.Salir
echo.
set /p opcion=Elige una opcion (1-7):
IF %opcion%==1 goto Verificacion
IF %opcion%==2 goto Obtener
IF %opcion%==3 goto Prueba
IF %opcion%==4 goto Monitoreo
IF %opcion%==5 goto Definir
IF %opcion%==6 goto Prueba_carga
IF %opcion%==7 goto Resolucion
IF %opcion%==8 exit

goto Menu

:Verificacion
echo.
ping 127.0.0.1
PAUSE
goto Menu

:Obtener
echo.
ipconfig
PAUSE
goto Menu

:Prueba
echo.
set /p url=Escribe la url:
ping %url%
PAUSE
goto Menu

:Monitoreo
echo.
echo para parar el ping usa crt + c
ping -t 127.0.0.1
PAUSE
goto Menu

:Definir
echo.
ping -n 10 127.0.0.1
PAUSE
goto Menu

:Prueba_carga
echo.
ping -l 1000 127.0.0.1
PAUSE
goto Menu

:Resolucion
echo.
set /p direccion=Escribe la direccion ip 
ping -a %direccion%
PAUSE
goto Menu

PAUSE >