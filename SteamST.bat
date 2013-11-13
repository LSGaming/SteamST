::=======================::
::        SteamST        ::
::       LSGaming        ::
::=======================::
set programname=SteamST
set username=
set password=


@ECHO off


:start

cls


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


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                       Start Server                         #
ECHO   # - GUI Server                                               #
ECHO   #                                                            #
ECHO   # 1 - Garry's Mod                                            #
ECHO   # 2 - Counter-Strike: Source                                 #
ECHO   # 3 - Team Fortress 2                                        #
ECHO   #                                                            #
ECHO   # - Console server                                           #
ECHO   #                                                            #
ECHO   # 4 - Garry's Mod                                            #
ECHO   # 5 - Counter-Strike: Source                                 #
ECHO   # 6 - Team Fortress 2                                        #
ECHO   #                                                            #
ECHO   # 7 - Exit                                                   #
ECHO   # 8 - Goto Start                                             #
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
IF "%B%"=="4" GOTO run-server-console
IF "%B%"=="5" GOTO run-server-console
IF "%B%"=="6" GOTO run-server-console
IF "%B%"=="7" EXIT
IF "%B%"=="8" GOTO start
GOTO server

:run-server

cls


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                      Run GUI Server                        #
IF "%B%"=="1" ECHO   # - Garry's Mod                                              #
IF "%B%"=="2" ECHO   # - Counter-Strike: Source                                   #
IF "%B%"=="3" ECHO   # - Team Fortress 2                                          #
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

title %programname% - %servername%
ECHO %programname% is started

IF "%B%"=="1" START G:\Server\Steam\GMod\srcds.exe & EXIT
IF "%B%"=="2" START G:\Server\Steam\CS\Source\srcds.exe -game cstrike & EXIT
IF "%B%"=="3" START G:\Server\Steam\TF2\srcds.exe -game tf & EXIT

:run-server-console

cls


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                     Run Console Server                     #
IF "%B%"=="4" ECHO   # - Garry's Mod                                              #
IF "%B%"=="5" ECHO   # - Counter-Strike: Source                                   #
IF "%B%"=="6" ECHO   # - Team Fortress 2                                          #
ECHO   #                                                            #
ECHO   # Do you want to do the above.                               #
ECHO   # 1 - Yes                                                    #
ECHO   # 2 - No Goto Start                                          #
ECHO   # 3 - Exit                                                   #
ECHO   #                                                            #
ECHO   ##############################################################
ECHO.
ECHO.

SET "H="
SET /P H=Choose number of choice and press [ENTER] 
ECHO Loading.........
IF "%H%"=="1" GOTO server-start-console
IF "%H%"=="2" GOTO start
IF "%H%"=="3" EXIT
GOTO run-server-console



:server-start-console

cls
IF "%B%"=="4" set runcmd=G:\Server\Steam\GMod\srcds.exe -console -game garrysmod -maxplayers 16 -port 27015 +map gm_construct
IF "%B%"=="4" set servername=TTT
IF "%B%"=="5" set runcmd=G:\Server\Steam\CS\Source\srcds.exe -console -game cstrike -maxplayers 16 +fps_max 200 -port 27015 +map de_dust -tickrate 66
IF "%B%"=="5" set servername=Counter-Strike
IF "%B%"=="6" set runcmd=G:\Server\Steam\TF2\srcds.exe -console -game tf -maxplayers 16 -port 27015 +map ctf_2fort
IF "%B%"=="6" set servername=TF2
 
:: Prints to the window what we are doing
echo Steam Server Tool has been started!
echo.
echo #############################################################################
echo # To close the server, close this window and type exit in the server window #
echo #############################################################################
echo.
echo.
echo %servername% is now starting...
>> "%servername%.log" echo.
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) Steam Server Tool has been started!
>> "%servername%.log" echo (%date%)(%time%) %servername% is now starting...
 

:restart
 
echo.
echo (%date%)(%time%) %servername% is now ONLINE
echo Watching %servername% for crashes...
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) %servername% is now ONLINE
>> "%servername%.log" echo (%date%)(%time%) Watching %servername% for crashes...
 
 
start /wait %runcmd%
 
echo.
echo (%date%)(%time%) Crash or Close detected!
echo %servername% is now restarting...
>> "%servername%.log" echo.
>> "%servername%.log" echo (%date%)(%time%) Crash or Close detected!
>> "%servername%.log" echo (%date%)(%time%) %servername% is now restarting...
 
goto restart


:login

cls


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


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                           Install                          #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
ECHO   #                                                            #
ECHO   # 1 - Install Garry's Mods                                   #
ECHO   # 2 - Install Counter-Strike: Source                         #
ECHO   # 3 - Install Team Fortress 2                                #
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
IF "%E%"=="1" ECHO Install Garry's Mods & GOTO run
IF "%E%"=="2" ECHO Install Counter-Strike: Source & GOTO run
IF "%E%"=="3" ECHO Install Team Fortress 2 & GOTO run
IF "%E%"=="4" GOTO update
IF "%E%"=="5" EXIT
IF "%E%"=="6" GOTO start
GOTO install


:update

cls


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                      Update-Validate                       #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
ECHO   #                                                            #
ECHO   # 1 - Update-Validate Garry's Mod                            #
ECHO   # 2 - Update-Validate Counter-Strike: Source                 #
ECHO   # 3 - Update-Validate Team Fortress 2                        #
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
IF "%F%"=="1" ECHO Validate Garry's Mod & GOTO run
IF "%F%"=="2" ECHO Validate Counter-Strike: Source & GOTO run
IF "%F%"=="3" ECHO Validate Team Fortress 2 & GOTO run
IF "%F%"=="4" GOTO install
IF "%F%"=="5" EXIT
IF "%F%"=="6" GOTO start
GOTO update


:run

cls


ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #                            Run                             #
IF "%D%"=="1" ECHO   # - Chosen Login: Anonymous                                  #
IF "%D%"=="2" ECHO   # - Chosen Login: Account                                    #
IF "%E%"=="1" ECHO   # - Install Garry's Mod                                      #
IF "%E%"=="2" ECHO   # - Install Counter-Strike: Source                           #
IF "%E%"=="3" ECHO   # - Install Team Fortress 2                                  #
IF "%F%"=="1" ECHO   # - Update-Validate Garry's Mod                              # 
IF "%F%"=="2" ECHO   # - Update-Validate Counter-Strike: Source                   #
IF "%F%"=="3" ECHO   # - Update-Validate Team Fortress 2                          #
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
IF "%E%"=="3" ECHO force_install_dir G:\Server\Steam\TF2
IF "%E%"=="3" ECHO app_update 232250
IF "%F%"=="1" ECHO force_install_dir G:\Server\Steam\GMod
IF "%F%"=="1" ECHO app_update 4020 validate
IF "%F%"=="2" ECHO force_install_dir G:\Server\Steam\CS\Source
IF "%F%"=="2" ECHO app_update 232330 validate
IF "%F%"=="3" ECHO force_install_dir G:\Server\Steam\TF2
IF "%F%"=="3" ECHO app_update 232250 validate
ECHO logout
ECHO quit
) >script.txt

steamcmd.exe +runscript script.txt
EXIT
