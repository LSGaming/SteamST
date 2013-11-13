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
ECHO   #                     Steam Server Tool                      #
ECHO   #                                                            #
ECHO   # 1 - Start Server                                           #
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
GOTO start


:server

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                       Start Server                         #
ECHO   # - Srcds Server                                             #
ECHO   #                                                            #
ECHO   # 1 - Garry's Mod                                            #
ECHO   # 2 - Counter-Strike: Source                                 #
ECHO   # 3 - Left 4 Dead 2                                          #
ECHO   # 4 - Team Fortress 2                                        #
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
GOTO server

:run-server

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                      Run Srcds Server                      #
IF "%B%"=="1" ECHO   # - Garry's Mod                                              #
IF "%B%"=="2" ECHO   # - Counter-Strike: Source                                   #
IF "%B%"=="3" ECHO   # - Left 4 Dead 2                                            #
IF "%B%"=="4" ECHO   # - Team Fortress 2                                          #
ECHO   #                                                            #
ECHO   # Do you want to do the above.                               #
ECHO   # 1 - Yes                                                    #
ECHO   # 2 - No Goto Start                                          #
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
GOTO run-server


:server-start

cls
CD %runcmd%
title %programname% - %servername%
ECHO %programname% is started

IF "%B%"=="1" START G:\Server\Steam\GMod\srcds.exe & EXIT
IF "%B%"=="2" START G:\Server\Steam\CS\Source\srcds.exe -game cstrike & EXIT
IF "%B%"=="3" START G:\Server\Steam\L4D2\srcds.exe & EXIT
IF "%B%"=="4" START G:\Server\Steam\TF2\srcds.exe -game tf & EXIT


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
IF "%D%"=="1" GOTO install
IF "%D%"=="2" GOTO install
IF "%D%"=="3" EXIT
GOTO login


:install

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                           Install                          #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
ECHO   #                                                            #
ECHO   # 1 - Install Garry's Mods                                   #
ECHO   # 2 - Install Counter-Strike: Source                         #
ECHO   # 3 - Install Left 4 Dead 2                                  #
ECHO   # 4 - Install Team Fortress 2                                #
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
IF "%E%"=="3" ECHO Install Left 4 Dead 2 & GOTO run
IF "%E%"=="4" ECHO Install Team Fortress 2 & GOTO run
IF "%E%"=="5" GOTO update
IF "%E%"=="6" EXIT
IF "%E%"=="7" GOTO start
GOTO install


:update

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                      Update-Validate                       #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
ECHO   #                                                            #
ECHO   # 1 - Update-Validate Garry's Mod                            #
ECHO   # 2 - Update-Validate Counter-Strike: Source                 #
ECHO   # 3 - Update-Validate Left 4 Dead 2                          #
ECHO   # 4 - Update-Validate Team Fortress 2                        #
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
IF "%F%"=="3" ECHO Validate Left 4 Dead 2 & GOTO run
IF "%F%"=="4" ECHO Validate Team Fortress 2 & GOTO run
IF "%F%"=="5" GOTO install
IF "%F%"=="6" EXIT
IF "%F%"=="7" GOTO start
GOTO update


:run

cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                            Run                             #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
IF "%E%"=="1" ECHO   # - Install Garry's Mod                                      #
IF "%E%"=="2" ECHO   # - Install Counter-Strike: Source                           #
IF "%E%"=="3" ECHO   # - Install Left 4 Dead 2                                    #
IF "%E%"=="4" ECHO   # - Install Team Fortress 2                                  #
IF "%F%"=="1" ECHO   # - Update-Validate Garry's Mod                              # 
IF "%F%"=="2" ECHO   # - Update-Validate Counter-Strike: Source                   #
IF "%F%"=="3" ECHO   # - Update-Validate Left 4 Dead 2                            #
IF "%F%"=="4" ECHO   # - Update-Validate Team Fortress 2                          #
ECHO   #                                                            #
ECHO   # Do you want to do the above.                               #
ECHO   # 1 - Yes                                                    #
ECHO   # 2 - No Goto Start                                          #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "G="
SET /P G=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%G%"=="1" ECHO Writing script.txt & GOTO script
IF "%G%"=="2" GOTO start
IF "%G%"=="3" Exit
GOTO run


:script

(
IF "%D%"=="1" ECHO login anonymous 
IF "%D%"=="2" ECHO login %username% %password%
IF "%E%"=="1" ECHO force_install_dir G:\Server\Steam\GMod 
IF "%E%"=="1" ECHO app_update 4020
IF "%E%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%E%"=="2" ECHO app_update 232330
IF "%E%"=="4" ECHO force_install_dir G:\Server\Steam\L4D2
IF "%E%"=="4" ECHO app_update 222860
IF "%E%"=="5" ECHO force_install_dir G:\Server\Steam\TF2
IF "%E%"=="5" ECHO app_update 232250
IF "%F%"=="1" ECHO force_install_dir G:\Server\Steam\GMod
IF "%F%"=="1" ECHO app_update 4020 validate
IF "%F%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%F%"=="2" ECHO app_update 232330 validate
IF "%F%"=="4" ECHO force_install_dir G:\Server\Steam\L4D2
IF "%F%"=="4" ECHO app_update 222860 validate
IF "%F%"=="5" ECHO force_install_dir G:\Server\Steam\TF2
IF "%F%"=="5" ECHO app_update 232250 validate
ECHO logout
ECHO quit
) >script.txt

steamcmd +runscript script.txt
EXIT
