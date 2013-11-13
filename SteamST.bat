@ECHO off

:start

::=======================::
::    SteamCMD Setup     ::
::       LSGaming        ::
::=======================::
set programname=SteamCMD Setup
set username=
set password=

::=======================::
::        Values         ::
::=======================::
set servername=LSGaming Private Server	


cls
CD %runcmd%

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                        Server Setup                        #
ECHO   #                                                            #
ECHO   # 1 - Server Start  [NOT READY YET]                          #
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
::IF "%A%"=="1" GOTO start
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
ECHO   # 4 - Exit                                                   #
ECHO   # 5 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.


SET "B="
SET /P B=Choose number of choice and press [ENTER] 
ECHO Loading.........
::IF "%B%"=="1" set runcmd G:\Server\Steam\GMod
::IF "%B%"=="1" set app=4020
IF "%B%"=="1" GOTO run-server
::IF "%B%"=="2" set runcmd G:\Server\Steam\CS\Source
::IF "%B%"=="2" set app=232330
IF "%B%"=="2" GOTO run-server
::IF "%B%"=="3" set runcmd G:\Server\Steam\CS\GO
::IF "%B%"=="3" set app=740 
IF "%B%"=="3" GOTO run-server 
IF "%B%"=="4" EXIT
IF "%B%"=="5" GOTO start



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
ECHO %programname% is gestart

 :restart

IF "%B%"=="1" START "G:\Server\Steam\GMod" srcds.exe
IF "%B%"=="2" 
IF "%B%"=="3" 

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
ECHO   # 4 - Goto Update-Validate                                   #
ECHO   # 5 - Exit                                                   #
ECHO   # 6 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "E="
SET /P E=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%E%"=="1" ECHO Install Garry's Mods
IF "%E%"=="1" GOTO run
IF "%E%"=="2" ECHO Install Counter-Strike: Source
IF "%E%"=="2" GOTO run
IF "%E%"=="3" ECHO Install Counter-Strike: GO
IF "%E%"=="3" GOTO run
IF "%E%"=="4" GOTO update
IF "%E%"=="5" EXIT
IF "%E%"=="6" GOTO start

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
ECHO   # 4 - Goto Install                                           #
ECHO   # 5 - Exit                                                   #
ECHO   # 6 - Goto Start                                             #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.


SET "F="
SET /P F=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%F%"=="1" ECHO Validate Garry's Mod 
IF "%F%"=="1" GOTO run
IF "%F%"=="2" ECHO Validate Counter-Strike: Source 
IF "%F%"=="2" GOTO run
IF "%F%"=="3" ECHO Validate Counter-Strike: GO 
IF "%F%"=="3" GOTO run
IF "%F%"=="4" GOTO install
IF "%F%"=="5" EXIT
IF "%F%"=="6" GOTO start

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
IF "%F%"=="1" ECHO   #                  Update-Validate Garry's Mod               # 
IF "%F%"=="2" ECHO   #                  Update-Validate Counter-Strike: Source    #
IF "%F%"=="3" ECHO   #                  Update-Validate Counter-Strike: GO        #
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
IF "%F%"=="1" ECHO force_install_dir G:\Server\Steam\GMod
IF "%F%"=="1" ECHO app_update 4020 validate
IF "%F%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%F%"=="2" ECHO app_update 232330 validate
IF "%F%"=="3" ECHO force_install_dir G:\Server\Steam\CS\GO
IF "%F%"=="3" ECHO app_update 740 validate
ECHO quit
) >script.txt

steamcmd +runscript script.txt
