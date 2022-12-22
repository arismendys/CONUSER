@echo off
@mode con cols=85 lines=40
title Consulta de usurios por servidor
:Principal
	set s1=
	set s2=
	set s3=
	set s4=
	set s5=
	set s6=
	set s7=
	set s8=
	set s9=
color f4
	cls>null
	cls
	echo  		::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo  		::                                                ::
	echo  		::      CONSULTAR USUARIO EN LOS SERVIDORES       ::
	echo  		::                                                ::
	echo  		::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo.
	set /P ruser=".               INGRESE EL NOMBRE DEL USUARIO: "

	echo.
	set RDP1=NOMBRE_SERVIDOR1
	echo Buscando a %ruser% en %RDP1%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP1%') do (set s1=%%G)
	if [%s1%] NEQ []  ( goto server1)	
:CON2
	echo.
	set RDP2=NOMBRE_SERVIDOR2
	echo Buscando a %ruser% en %RDP2%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP2%') do (set s2=%%G) 
	if [%s2%] NEQ []  ( goto server2)
:CON3
	echo.
	set RDP3=NOMBRE_SERVIDOR3
	echo Buscando a %ruser% en %RDP3%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP3%') do (set s3=%%G) 
	if [%s3%] NEQ []  ( goto server3)
:CON4
	echo.
	set RDP4=NOMBRE_SERVIDOR4
	echo Buscando a %ruser% en %RDP4%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP4%') do (set s4=%%G) 
	if [%s4%] NEQ []  ( goto server4)
:CON5
	echo.	
	set RDP5=NOMBRE_SERVIDOR5
	echo Buscando a %ruser% en %RDP5%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP5%') do (set s5=%%G) 
	if [%s5%] NEQ []  ( goto server5)
:CON6
	echo.
	set RDP6=NOMBRE_SERVIDOR6
	echo Buscando a %ruser% en %RDP6%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP6%') do (set s6="%%G") 
	if [%s6%] NEQ []  ( goto server6)
:CON7
	echo.
	set RDP7=NOMBRE_SERVIDOR7
	echo Buscando a %ruser% en %RDP7%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP7%') do (set s7=%%G) 
	if [%s7%] NEQ []  ( goto server7)
:CON8
	echo.
	set RDP8=NOMBRE_SERVIDOR8
	echo Buscando a %ruser% en %RDP8%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP8%') do (set s8=%%G) 
	if [%s8%] NEQ []  ( goto server8)
:CON9
	echo.
	set RDP9=NOMBRE_SERVIDOR9
	echo Buscando a %ruser% en %RDP9%
	for /F "tokens=3 delims= " %%G in ('query session %ruser% /server:%RDP9%') do (set s9=%%G) 
	if [%s9%] NEQ []  ( goto server9)
	if [%s9%] EQU []  ( 
	echo.
	pause
	cls
	color f2
	echo.
	echo    :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo    ::    El programa ya a buscado a %ruser% en todos los servidores.  ::
	Echo    ::    Ahora el programa volvera al menu principal.                 ::
	echo    :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo.
	pause
	goto :Principal)
:server1
	echo.
	echo El Usuario %ruser% esta conectado al %RDP1% con el ID %s1%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP1%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s1% /server:%RDP1%
	echo Proceso realizado con exito
	goto :CON2
	)
	if /i %confirm% == N (goto :CON2)
:server2
	echo.
	echo El Usuario %ruser% esta conectado al %RDP2%con el ID %s2%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP2%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s2% /server:%RDP2%
	echo Proceso realizado con exito
	goto :CON3
	)
	if /i %confirm% == N (goto :CON3)
:server3
	echo.
	echo El Usuario %ruser% esta conectado al %RDP3% con el ID %s3%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP3%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s3% /server:%RDP3%
	echo Proceso realizado con exito
	goto :CON4
	)
	if /i %confirm% == N (goto :CON4)
:server4
	echo.
	echo El Usuario %ruser% esta conectado al %RDP4% con el ID %s4%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP4%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s4% /server:%RDP4%
	echo Proceso realizado con exito
	goto :CON5
	)
	if /i %confirm% == N (goto :CON5)
:server5
	echo.
	echo El Usuario %ruser% esta conectado al %RDP5% con el ID %s5%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP5%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s5% /server:%RDP5%
	echo Proceso realizado con exito
	goto :CON6
	)
	if /i %confirm% == N (goto :CON6)
:server6
	echo.
	echo El Usuario %ruser% esta conectado al %RDP6% con el ID %s6%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP6%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s6% /server:%RDP6%
	echo Proceso realizado con exito
	goto :CON7
	)
	if /i %confirm% == N (goto :CON7)
:server7
	echo.
	echo El Usuario %ruser% esta conectado al %RDP7% con el ID %s7%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP7%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s7% /server:%RDP7%
	echo Proceso realizado con exito
	goto :CON8
	)
	if /i %confirm% == N (goto :CON8)
:server8
	echo.
	echo El Usuario %ruser% esta conectado al %RDP8% con el ID %s8%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP8%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s8% /server:%RDP8%
	echo Proceso realizado con exito
	goto :CON9
	)
	if /i %confirm% == N (goto :CON9)
:server9
	echo.
	echo El Usuario %ruser% esta conectado al %RDP9% con el ID %s9%
	set /p confirm="Desea cerrar la sesion del usuario %ruser% en el %RDP9%? (Y/N)"
	if /i %confirm% == Y (
	logoff %s9% /server:%RDP9%
	echo Proceso realizado con exito
	goto :Principal
	)
	if /i %confirm% == N (
	cls>null
	color f2
	echo.
	echo    :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo    ::    El programa ya a buscado a %ruser% en todos los servidores.  ::
	Echo    ::    Ahora el programa volvera al menu principal.                 ::
	echo    :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	echo.
	pause
	goto :Principal)