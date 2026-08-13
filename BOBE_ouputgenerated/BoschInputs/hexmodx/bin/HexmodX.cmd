@echo off
rem ## HexmodX.cmd

setlocal enabledelayedexpansion


rem set OPTIONS=%~1 %~2 %~3
set OPTIONS=%*
set FILENAME=%~nx1
set FILEPATH=%~dp1

set HEXMODX_HOME=%~dp0
set HEXMODX_JAVA_HOME= "%~dp0..\jre\bin\java.exe"

:init
if defined TB_HEXMODX_JAVA_JRE (

  set HEXMODX_HOME=%TB_HEXMODX_HOME%\bin
  set HEXMODX_JAVA_HOME=%TB_HEXMODX_JAVA_JRE%\bin\java.exe
) 

goto :run

:run

%HEXMODX_JAVA_HOME% ^
-classpath "%HEXMODX_HOME%\HEXMODX.jar" 	^
-Xmx2048m ^
-Xms512m ^
com.bosch.hexmodx.HexmodX %OPTIONS%
set RC=%errorlevel%
if defined FILENAME popd
exit /b %RC%

:usage
   echo.
   echo.SYNTAX
   echo.  hexmodx ^<options^>
   echo.
   echo.EXAMPLES
   echo.  C:\^>hexmodx  /xyz.xml [/script.bsh] [-extjars "C:\location\example.jar";"C:\abc\pqr\sampler.jar"]
   echo.
   exit /b 0
goto :eof
