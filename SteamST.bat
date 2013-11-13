::=======================::
::        SteamST        ::
::       LSGaming        ::
::=======================::
set programname=SteamST
set username=
set password=
set servername=	

@ECHO off


:start

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                        Server Setup                        #
ECHO   #                                                            #
ECHO   # 1 - Server Start                                           #
ECHO   # 2 - Install-Update-Validate                                #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "A="
SET /P A=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%A%"=="1" GOTO server
IF "%A%"=="2" GOTO login
IF "%A%"=="3" EXIT


:server

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                       Server Start                         #
ECHO   #                                                            #
ECHO   # 1 - Garry's Mod                                            #
ECHO   # 2 - Counter-Strike: Source                                 #
ECHO   # 3 - Counter-Strike: Global Offensive                       #
ECHO   # 4 - Left 4 Dead 2                                          #
ECHO   # 5 - Exit                                                   #
ECHO   # 6 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "B="
SET /P B=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%B%"=="1" GOTO run-server
IF "%B%"=="2" GOTO run-server
IF "%B%"=="3" GOTO run-server 
IF "%B%"=="4" GOTO run-server
IF "%B%"=="5" EXIT
IF "%B%"=="6" GOTO start


:run-server

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                         Run Server                         #
IF "%B%"=="1" ECHO   #                    Garry's Mod                             #
IF "%B%"=="2" ECHO   #                    Counter-Strike: Source                  #
IF "%B%"=="3" ECHO   #                    Counter-Strike: Global Offensive        #
IF "%B%"=="4" ECHO   #                    Left 4 Dead 2                           #
ECHO   #                                                            #
ECHO   # 1 - Yes                                                    #
ECHO   # 2 - No                                                     #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "C="
SET /P C=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%C%"=="1" GOTO server-start
IF "%C%"=="2" GOTO start
IF "%C%"=="3" EXIT


:server-start

cls
CD %runcmd%
title %programname% - %servername%
ECHO %programname% is started

:restart

IF "%B%"=="1" START G:\Server\Steam\GMod\srcds.exe & GOTO start
IF "%B%"=="2" START G:\Server\Steam\CS\Source\srcds.exe -game cstrike & GOTO start
IF "%B%"=="3" START G:\Server\Steam\CS\GO\srcds.exe & GOTO start
IF "%B%"=="4" START G:\Server\Steam\L4D2\srcds.exe & GOTO start


:login

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                           Login                            #
ECHO   #                                                            #
ECHO   # 1 - Anonymous                                              #
ECHO   # 2 - Account                                                #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "D="
SET /P D=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%D%"=="1" ECHO Login Anonymous
IF "%D%"=="2" ECHO Login Account
IF "%D%"=="3" EXIT


:install

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                           Install                          #
IF "%D%"=="1" ECHO   #                    Chosen Login: Anonymous                 #
IF "%D%"=="2" ECHO   #                    Chosen Login: Account                   #
ECHO   #                                                            #
ECHO   # 1 - Install Garry's Mods                                   #
ECHO   # 2 - Install Counter-Strike: Source                         #
ECHO   # 3 - Install Counter-Strike: GO                             #
ECHO   # 4 - Install Left 4 Dead 2                                  #
ECHO   # 5 - Goto Update-Validate                                   #
ECHO   # 6 - Exit                                                   #
ECHO   # 7 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "E="
SET /P E=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%E%"=="1" ECHO Install Garry's Mods & GOTO run
IF "%E%"=="2" ECHO Install Counter-Strike: Source & GOTO run
IF "%E%"=="3" ECHO Install Counter-Strike: GO & GOTO run
IF "%E%"=="4" ECHO Install Left 4 Dead 2 & GOTO run
IF "%E%"=="5" GOTO update
IF "%E%"=="6" EXIT
IF "%E%"=="7" GOTO start


:update

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                      Update-Validate                       #
IF "%D%"=="1" ECHO   #                  Chosen Login: Anonymous                   #
IF "%D%"=="2" ECHO   #                  Chosen Login: Account                     #
ECHO   #                                                            #
ECHO   # 1 - Update-Validate Garry's Mod                            #
ECHO   # 2 - Update-Validate Counter-Strike: Source                 #
ECHO   # 3 - Update-Validate Counter-Strike: GO                     #
ECHO   # 4 - Update-Validate Left 4 Dead 2                          #
ECHO   # 5 - Goto Install                                           #
ECHO   # 6 - Exit                                                   #
ECHO   # 7 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "F="
SET /P F=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%F%"=="1" ECHO Validate Garry's Mod & GOTO run
IF "%F%"=="2" ECHO Validate Counter-Strike: Source & GOTO run
IF "%F%"=="3" ECHO Validate Counter-Strike: GO & GOTO run
IF "%E%"=="4" ECHO Validate Left 4 Dead 2 & GOTO run
IF "%F%"=="5" GOTO install
IF "%F%"=="6" EXIT
IF "%F%"=="7" GOTO start


:run

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                            Run                             #
IF "%D%"=="1" ECHO   #                  Chosen Login: Anonymous                   #
IF "%D%"=="2" ECHO   #                  Chosen Login: Account                     #
IF "%E%"=="1" ECHO   #                  Install Garry's Mod                       #
IF "%E%"=="2" ECHO   #                  Install Counter-Strike: Source            #
IF "%E%"=="3" ECHO   #                  Install Counter-strike: GO                #
IF "%E%"=="4" ECHO   #                  Install Left 4 Dead 2                     #
IF "%F%"=="1" ECHO   #                  Update-Validate Garry's Mod               # 
IF "%F%"=="2" ECHO   #                  Update-Validate Counter-Strike: Source    #
IF "%F%"=="3" ECHO   #                  Update-Validate Counter-Strike: GO        #
IF "%F%"=="4" ECHO   #                  Update-Validate Left 4 Dead 2             #
ECHO   #                                                            #
ECHO   # Do you want to do the above.                               #
ECHO   # 1 - Yes                                                    #
ECHO   # 2 - No                                                     #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "G="
SET /P G=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%G%"=="1" ECHO Writing script.txt
IF "%G%"=="2" GOTO start
IF "%G%"=="3" Exit


(
IF "%D%"=="1" ECHO login anonymous 
IF "%D%"=="2" ECHO login %username% %password%
IF "%E%"=="1" ECHO force_install_dir G:\Server\Steam\GMod 
IF "%E%"=="1" ECHO app_update 4020
IF "%E%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%E%"=="2" ECHO app_update 232330
IF "%E%"=="3" ECHO force_install_dir G:\Server\Steam\CS\GO
IF "%E%"=="3" ECHO app_update 740
IF "%E%"=="4" ECHO force_install_dir G:\Server\Steam\L4D2
IF "%E%"=="4" ECHO app_update 222860
IF "%F%"=="1" ECHO force_install_dir G:\Server\Steam\GMod
IF "%F%"=="1" ECHO app_update 4020 validate
IF "%F%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%F%"=="2" ECHO app_update 232330 validate
IF "%F%"=="3" ECHO force_install_dir G:\Server\Steam\CS\GO
IF "%F%"=="3" ECHO app_update 740 validate
IF "%F%"=="4" ECHO force_install_dir G:\Server\Steam\L4D2
IF "%F%"=="4" ECHO app_update 222860 validate
ECHO quit
) >script.txt

steamcmd +runscript script.txt
EXIT
