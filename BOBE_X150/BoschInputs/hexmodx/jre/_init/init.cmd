@echo off
rem #
rem # initializing Java 2 Runtime Environment 1.8.0_252_64
rem #

rem # disable Java specific environment variables
set JavaHome=
set ClassPath=
set JRE_HOME=%TB_TOOL_HOME%
set Java_Home=%JRE_HOME%

rem # integration into toolbase environment
@set TB_TOOL_SPATH=%TB_TOOL_HOME%\bin

exit /b 0
