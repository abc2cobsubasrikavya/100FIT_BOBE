@echo off


rem 1. check for valid targets

set LIBTYPE=
if "%1" equ "standard" set "LIBTYPE=%1"
if "%1" equ "standard_executable_file" set "LIBTYPE=%1"
if "%1" equ "stack" set "LIBTYPE=%1"
if "%1" equ "sillib" set "LIBTYPE=%1"

if "%1" equ "" set "LIBTYPE=standard_executable_file"

if not defined LIBTYPE (
	echo *** ERROR: %1 is not a valid lib type!
	goto :eof
)


rem 2. read and prepare settings

call settings.bat

rem Path of produced lib files
set "PATHOUT=%cd%\BuildOutput\%LIBTYPE%"
mkdir %PATHOUT%

rem ~~ Path to log files ~~
set "LOGTMP=%cd%\BuildOutput\%LIBTYPE%-lib-running.log"
set "LOGPATH=%PATHOUT%\Logs"
set "LOGTXT=%LOGPATH%\CreateLib.log"
set "LOGERROR=%LOGPATH%\Error.log"
echo Starting >%LOGTMP%

rem Path to needed input files from Bosch
set "INPPATH=.\BoschInputs"
rem Path to Include files
set "INCPATH=%INPPATH%\Includes"

rem Path to header files
set "CUSTHPATH=%PATHOUT%\HFiles"

rem path to Ram and Rom Size log
set "RAMROMSIZETXT_SWC=%PATHOUT%\SWC_%NAMELIB%_RamRom.log"
set "RAMROMSIZETXT_MODULE=%PATHOUT%\MODULES_%NAMELIB%_RamRom.log"

if "%LIBTYPE%" equ "scalexio" (
	set "OBJ_EXT=lo86"
	set "LIB_EXT=a"
) else if "%LIBTYPE%" equ "sillib" (
	set "OBJ_EXT=obj"
	set "LIB_EXT=lib"
) else (
	set "OBJ_EXT=o"
	set "LIB_EXT=a"
)

if "%LIBTYPE%" equ "sillib" (
	rem Path to SiL object files
	set "OBJPATH=%PATHOUT%\ObjectsSiL"
	rem path to library files
	set "LIBPATHNAME=%PATHOUT%\%NAMELIB%_SiL_%MSVCBITOPT%bit"
) else if "%LIBTYPE%" equ "scalexio" (
	rem Path to HiL object files
	set "OBJPATH=%PATHOUT%\ObjectsHiL"
	rem path to library files
	set "LIBPATHNAME=%PATHOUT%\%NAMELIB%_HiL"
) else if "%LIBTYPE%" equ "stack" (
   rem Path to object files
	set "OBJPATH=%PATHOUT%\Objects"
	rem path to library files
	set "LIBPATHNAME=%PATHOUT%\%NAMELIB%_stack"
) else (
	rem Path to object files
	set "OBJPATH=%PATHOUT%\Objects"
	rem path to library files
	set "LIBPATHNAME=%PATHOUT%\%NAMELIB%"
)
set "LIBPATHNAMEFULL=%LIBPATHNAME%.%LIB_EXT%"
rem settings for SiL lib
set "OEM_VC_INCLUDE=%MSVCPATH%\include"
set "OEM_MSFLAGS=/Dconst="" /Dinline="" /wd4068 /wd4090 /Od /GS /EHsc /RTC1 /MT /W3 /nologo /c /Z7"
if "%MSVCBITOPT%" equ "64" (
	set "OEM_VC_BIN=%MSVCPATH%\bin\amd64"
) else (
	set "OEM_VC_BIN=%MSVCPATH%\bin"
)
set "OEM_VC_BAT=%OEM_VC_BIN%\vcvars%MSVCBITOPT%.bat"
set "OEM_MSCL=%OEM_VC_BIN%\cl.exe"
set "OEM_MSLIB=%OEM_VC_BIN%\lib.exe"

rem settings for Scalexio lib
set "QNXPATH=%QNX_HOST%\usr\bin"

rem DON'T CHANGE!!! ~ compiler flags
if "%LIBTYPE%" equ "stack" (
	set "COMPFLAGS= --no_debug -delete -passsource -ffunctions -recipf -cpu=rh850g3m -no_callt -ignore_callt_state_in_interrupts -large_sda -shorten_loads -shorten_moves --short_enum -nostdlib -reserve_r2 -MD --no_commons -prepare_dispose -inline_prologue -fhard -ansi -Wshadow --prototype_errors -DCOMPILERCFG_EXTENSION_MCAL_FILE -Ogeneral -sda=0 -gs --diag_suppress 186,191 --quit_after_warnings  -DHAVE_SDK                   -DFCT_CO_CONF_VAR1  -DFEAT_FUNCTIONCOORDINATOR               -DFEAT_VEHSP_SAFE -DFEAT_VEHSP_WRAPPER4OLD    -DFEAT_CPR_RACKPOSITION_SYNCHRONIZATION   -DFEAT_CPR_RACKPOSITION_MAIN       -DFEAT_MECHANICALSTUCKPREVENTIONCHECK    -DFEAT_SCRUISELIMITER -DFEAT_SCRUISELIMITER -UFEAT_SMARTCRUISE -DFEAT_SMARTCRUISE_FADER_WITH_SCI   -DFEAT_MOTORTORQUELIMITER -DFEAT_CPR_LOWVOLT_ASSISTREDUCTION     -DFEAT_TORQUESENSORFALLBACK  -DFEAT_CPR_ACTIVERETURNCHECK   -DFEAT_CPR_ENDSTOP  -DFEAT_HIGHSPEEDDAMPINGCHECK      -UFEAT_SACTRL_ENABLED           -DDITHERCONTROLCHECK   -DFEAT_CPR_SYSTEMDATA -DFEAT_CPR_BATTERY_VOLTAGE_MONITOR                          -UFEAT_PARCOMPILE_ON -USCIFI -UFEAT_PARNVHCOMPILE_ON -UNVHADDON               -DFEAT_CPR_APPLICATIONSTATEMACHINESUPP         -DENABLE_BLDR_MEMCPY                            -DSFDC_NO_EB_STDLIB    -DFEAT_MCDATA_INTEGRITY   -DFEAT_CPR_CALIB_DATA_HANDLER -DFEAT_STEERINGRANGETRACKER -DFEAT_MECHLOADTRACKER  -DFEAT_MILEAGETRACKER -DFEAT_TEMPERATURETRACKER -DFEAT_CPR_CUSTOMERDATA     -DFEAT_OSMONITORING_MULTICORE      -DFEAT_CPR_TASKCONTROL_MULTICORE                     -DFEAT_CPR_SW_COMPATIBILITY_CHECK                 -UFEAT_FITCOMPILE_ON"
) else if "%LIBTYPE%" equ "scalexio" (
	set "COMPFLAGS= -fno-common -nostdinc -fno-strict-aliasing -pipe -march=sandybridge -mno-avx -msse2 -mfpmath=sse -fomit-frame-pointer -ffast-math -Werror-implicit-function-declaration -mstackrealign -O2 -finline-functions -D_INLINE -I. -isystem"%QNXPATH%\target\qnx6\usr\include\c++\5.2.0" -isystem"%QNXPATH%\target\qnx6\usr\include\c++\5.2.0\i486-pc-nto-qnx6.5.0" -isystem"%QNXPATH%\target\qnx6\usr\include" -isystem"%QNXPATH%\host\win32\x86\usr\lib\gcc\i486-pc-nto-qnx6.5.0\5.2.0\include" -D_DSx86_32 -D_DS2510 -DDS_PLATFORM_X86 -DDS_PLATFORM_LE -DDS_PLATFORM_POSIX -DDS_PLATFORM_QNX -DDS_PLATFORM_CN -DDS_PLATFORM_HCN -DDS_PLATFORM_SMART -DDS_PLATFORM_SMARTHIL -DDS_PLATFORM_SMP  -D__INTEGRATION__=\4.2p4\ -DDS_RTLIB_VERSION_MAR=4 -DDS_RTLIB_VERSION_MIR=2 -DDS_QNX_VERSION=650 -DQNX_VERSION=6.5.0 -DDATA_PORT_ACCESS_POINT_API_VERSION=2 -D__HOSTNAME__=\SGMZ00GV\ -D_PARFROMOBJ_ -D_HIL_ -DTS_ARCH_FAMILY=TS_RH850 -DTS_ARCH_DERIVATE=TS_OS_RH850P1M -D__RH850P1M__ -DOS_TOOL=OS_ghs -DOS_CPU=OS_RH850P1M -DOS_ARCH=OS_RH850 -DOS_RELEASE_SUFFIX=OS_AS403 -DOS_MEMMAP=0 -DOS_USE_CLZ_QUEUE_ALGORITHM=1 -DOS_USE_OPTIMIZATION_OPTIONS -DOS_HAS_MPU=1 -DOS_HAS_SW_VECTORMODE -DOS_KERNEL_TYPE=OS_MICROKERNEL -DMK_CPU=MK_RH850P1M -DMK_CPUFAMILY=MK_RH850 -DDEM_DONT_PROVIDE_LEGACY_SYMBOLIC_NAMES -DNO_SDK_STUB -DHAVE_SDK -DFEAT_VEHSP_WRAPPER4OLD -DDITHERCONTROLCHECK -DFEAT_CPR_ENDSTOP -DFEAT_STEERINGFEELCOORDINATOR_RG1 -DFEAT_SAFETYCONTROLLER -DFEAT_TORQUESENSORFALLBACK -DFEAT_FADEOUT -DFEAT_MOTORTORQUELIMITER -DMATHLIBRARY_NO_INLINE -DFEAT_MATHLIBRARY -DFEAT_ALTCALC -DFEAT_ALTCALC_WORM_GEAR_ALTERATION -D_lint -DSIL -U_Pragma -D_Pragma=// -DRB_PRAGMA=// -D_Bool=char -D__ghs_c_int__=int -DMK_NTASKS=OS_NUM_TASKS -DMK_TOOL=MK_gnu -DOS_GETSET_BSEL -DOS_ResumeInterrupts -DPRQA_MESSAGES_OFF=//NotNeeded -DPRQA_MESSAGES_ON=//NotNeeded -D__asm=//__asm -D__inline__="" -DEB_STATIC_CHECK -D_INTERRUPT_="" -DVECU_LOGGER_ON -DSIL_USE_OEM_LIB=0 -D__const="" -Dconst="" -Dinline=""  "
) else (
	set "COMPFLAGS= --no_debug -delete -passsource -ffunctions -recipf -cpu=rh850g3m -no_callt -ignore_callt_state_in_interrupts -large_sda -shorten_loads -shorten_moves --short_enum -nostdlib -reserve_r2 -MD --no_commons -prepare_dispose -inline_prologue -fhard -ansi -Wshadow --prototype_errors -DCOMPILERCFG_EXTENSION_MCAL_FILE -Ogeneral -sda=0 --diag_suppress 186,191 --quit_after_warnings  -DHAVE_SDK                   -DFCT_CO_CONF_VAR1  -DFEAT_FUNCTIONCOORDINATOR               -DFEAT_VEHSP_SAFE -DFEAT_VEHSP_WRAPPER4OLD    -DFEAT_CPR_RACKPOSITION_SYNCHRONIZATION   -DFEAT_CPR_RACKPOSITION_MAIN       -DFEAT_MECHANICALSTUCKPREVENTIONCHECK    -DFEAT_SCRUISELIMITER -DFEAT_SCRUISELIMITER -UFEAT_SMARTCRUISE -DFEAT_SMARTCRUISE_FADER_WITH_SCI   -DFEAT_MOTORTORQUELIMITER -DFEAT_CPR_LOWVOLT_ASSISTREDUCTION     -DFEAT_TORQUESENSORFALLBACK  -DFEAT_CPR_ACTIVERETURNCHECK   -DFEAT_CPR_ENDSTOP  -DFEAT_HIGHSPEEDDAMPINGCHECK      -UFEAT_SACTRL_ENABLED           -DDITHERCONTROLCHECK   -DFEAT_CPR_SYSTEMDATA -DFEAT_CPR_BATTERY_VOLTAGE_MONITOR                          -UFEAT_PARCOMPILE_ON -USCIFI -UFEAT_PARNVHCOMPILE_ON -UNVHADDON               -DFEAT_CPR_APPLICATIONSTATEMACHINESUPP         -DENABLE_BLDR_MEMCPY                            -DSFDC_NO_EB_STDLIB    -DFEAT_MCDATA_INTEGRITY   -DFEAT_CPR_CALIB_DATA_HANDLER -DFEAT_STEERINGRANGETRACKER -DFEAT_MECHLOADTRACKER  -DFEAT_MILEAGETRACKER -DFEAT_TEMPERATURETRACKER -DFEAT_CPR_CUSTOMERDATA     -DFEAT_OSMONITORING_MULTICORE      -DFEAT_CPR_TASKCONTROL_MULTICORE                     -DFEAT_CPR_SW_COMPATIBILITY_CHECK                 -UFEAT_FITCOMPILE_ON"
)

rem DON'T CHANGE!!! ~ compiler flags
set "LIBBUILDERFLAGS="

rem check customer includes
if "%CUSTINCPATH%" equ "" (
	set "CUSTINCTXT= "
) else (
	set "CUSTINCTXT=-I %CUSTINCPATH%"
)




rem 3. prepare environment

call :clean_folder "%PATHOUT%" "library" "%LIBPATHNAME%.*" %RAMROMSIZETXT_SWC% %RAMROMSIZETXT_MODULE% "tmpcinp.txt"
call :clean_folder "%LOGPATH%" "build log" "CreateLib.log" "Error.log"
call :clean_folder "%CUSTHPATH%" "customer header" "*.*"
call :clean_folder "%OBJPATH%" "object" "*.*"


rem 4.check for external tools

if "%LIBTYPE%" equ "sillib" (
	call :check_exist %OEM_VC_BAT% || goto :finish_error
	call :check_exist %OEM_MSCL% || goto :finish_error
	for /L %%i in (0,1) do (call :subroutine_initmsvc "%%i")
) else if "%LIBTYPE%" equ "scalexio" (
	call :check_exist %QNXPATH%\ntox86-gcc.exe || goto :finish_error
) else (
	call :check_exist %GHSPATH%\ccrh850.exe || goto :finish_error
)
call :echo2


rem 5. collect sources (h and c files)

call :echo2 Search for header files in %WORKPATH%
call :echo2
forfiles /p %WORKPATH% /s /m *.h /c "cmd /c copy @path %CUSTHPATH% >NUL"
dir /B %CUSTHPATH%
dir /B %CUSTHPATH% >> %LOGTMP%

call :echo2 Search for c files in %WORKPATH%
call :echo2
forfiles /p %WORKPATH% /s /m *.c /c "cmd /c echo @path >> %PATHOUT%\tmpcinp.txt"
type %PATHOUT%\tmpcinp.txt
type %PATHOUT%\tmpcinp.txt >> %LOGTMP%

if not exist %PATHOUT%\tmpcinp.txt (
	call :echo2 ********************************
	call :echo2 ERROR: No c file available!
	call :echo2 ********************************
	goto :finish_error
)



rem 6. compile c files

call :echo2 Create objects in %OBJPATH%
call :echo2

set CNTCFILES=0
for /f %%i in (%PATHOUT%\tmpcinp.txt) do (call :subroutine_c "%%i")
call :clean_file %PATHOUT%\tmpobjinp.txt
forfiles /p %OBJPATH% /m *.%OBJ_EXT% /c "cmd /c echo @path >> %PATHOUT%\tmpobjinp.txt"

if not exist %PATHOUT%\tmpobjinp.txt (
	call :echo2 ************************************************************
	call :echo2 ERROR: No object file available!
	call :echo2 ************************************************************
	goto :finish_error
)

set CNTOFILES=0
for /f %%i in (%PATHOUT%\tmpobjinp.txt) do (call :subroutine_o "%%i")

if %CNTCFILES% gtr %CNTOFILES% (
	call :echo2 ************************************************************
	call :echo2 ERROR: Not all object files have been built.
	call :echo2 ************************************************************
	goto :finish_error
)





rem 7. link object files to a library

call :echo2 Create library %LIBPATHNAMEFULL%
call :echo2
for /f %%i in (%PATHOUT%\tmpobjinp.txt) do (
	@echo off
	if "%LIBTYPE%" equ "sillib" (
		if exist %LIBPATHNAMEFULL% (
			call :echo2 %OEM_MSLIB% /OUT:"%LIBPATHNAMEFULL%" /NOLOGO %LIBPATHNAMEFULL% %%i
			%OEM_MSLIB% /OUT:"%LIBPATHNAMEFULL%" /NOLOGO %LIBPATHNAMEFULL% %%i >> %LOGTMP% 2>&1
		) else (
			call :echo2 %OEM_MSLIB% /OUT:"%LIBPATHNAMEFULL%" /NOLOGO %%i
			%OEM_MSLIB% /OUT:"%LIBPATHNAMEFULL%" /NOLOGO %%i >> %LOGTMP% 2>&1
		)
	) else if "%LIBTYPE%" equ "scalexio" (
		call :echo2 %QNXPATH%\ntox86-ar.exe rc %LIBPATHNAMEFULL% %%i
		%QNXPATH%\ntox86-ar.exe rc %LIBPATHNAMEFULL% %%i >> %LOGTMP% 2>&1
	) else (
		call :echo2 %GHSPATH%\ccrh850.exe %%i -archive %LIBBUILDERFLAGS% -o %LIBPATHNAMEFULL%
		%GHSPATH%\ccrh850.exe %%i -archive %LIBBUILDERFLAGS% -o %LIBPATHNAMEFULL% >> %LOGTMP% 2>&1
	)
)



rem 8. calculating ram and rom usage

if "%LIBTYPE%" neq "sillib" if "%LIBTYPE%" neq "scalexio" (
   if exist %GHSPATH%\gsize.exe (
	   call :echo2 Calc Ram Rom usage of modules *** >> %RAMROMSIZETXT_MODULE% 2>&1
	   for /f %%i in (%PATHOUT%\tmpobjinp.txt) do (
		   echo  Object  %%i >> %RAMROMSIZETXT_MODULE% 2>&1
		   %GHSPATH%\gsize.exe -rom %%i >> %RAMROMSIZETXT_MODULE% 2>&1
		   %GHSPATH%\gsize.exe -ram %%i >> %RAMROMSIZETXT_MODULE% 2>&1
	   )
	   call :echo2

	   call :echo2 Calc Ram Rom usage of SWC *** >> %RAMROMSIZETXT_SWC% 2>&1
	   %GHSPATH%\gsize.exe -rom %LIBPATHNAMEFULL% >> %RAMROMSIZETXT_SWC% 2>&1
	   %GHSPATH%\gsize.exe -ram %LIBPATHNAMEFULL% >> %RAMROMSIZETXT_SWC% 2>&1
	   call :echo2
   ) else (
	   call :echo2 *************************************************
	   call :echo2 WARNING: %GHSPATH%\gsize.exe does not exist!
	   call :echo2 %RAMROMSIZETXT_MODULE% not created
	   call :echo2 %RAMROMSIZETXT_SWC% not created
	   call :echo2 *************************************************
   )
)


rem 9. Cleanup and done

call :clean_file %PATHOUT%\tmpcinp.txt
call :clean_file %PATHOUT%\tmpobjinp.txt

call :echo2
call :echo2 ******************************
call :echo2 %LIBTYPE% build done sucessfully
call :echo2 ******************************
move /Y %LOGTMP% %LOGTXT% >NUL
timeout /T 5
goto :eof

rem error handler -- direct invocation without "call" !
:finish_error
call :echo2
call :echo2 *********************************
call :echo2 ERROR occured!
call :echo2 See logfile %LOGERROR%
call :echo2 *********************************
move /Y %LOGTMP% %LOGERROR% >NUL
timeout /T 10
goto :eof


rem collection of functions
goto :eof

:echo2
echo *** %*
echo *** %* >> %LOGTMP%
exit /b 0

:clean_file
if exist %~1 (
	call :echo2 Deleting %~1
	del /q %~1 >> %LOGTMP% 2>&1
)
exit /b 0

:clean_folder
if not exist %~1 (
	call :echo2 Create %~2 folder %~1
	call :echo2
	md %~1 >> %LOGTMP% 2>&1
	exit /b 0
)
call :echo2 Empty %~2 folder %~1
set CURRWORKPATH=%cd%
cd /D %~1 || exit /b 1
shift
shift
:clean_folder_loop
if "%~1" equ "" (
	cd /D %CURRWORKPATH% || exit /b 1
	call :echo2
	exit /b 0
)
call :clean_file %~1
shift
goto :clean_folder_loop

:check_exist
if exist %~1 (
	call :echo2 %~1 exists :^)
	exit /b 0
)
call :echo2 ****************************************************************
call :echo2 ERROR: %~1 does not exist!
call :echo2 ****************************************************************
call :echo2
exit /b 1

:subroutine_initmsvc
if %~1 equ 0 (
	call :echo2 Calling %OEM_VC_BAT%
	call :echo2
	%OEM_VC_BAT% >> %LOGTMP% 2>&1
)
exit /b 0



:subroutine_c
set "tmpcfile=%~1"
for /F %%i in ("%tmpcfile%") do @set tmpcfileBase=%%~ni
set /a CNTCFILES+=1
if "%LIBTYPE%" equ "scalexio" (
	call :echo2 %QNXPATH%\ntox86-gcc.exe %COMPFLAGS% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% -c %tmpcfile% -o %OBJPATH%\%tmpcfileBase%.lo86
	%QNXPATH%\ntox86-gcc.exe %COMPFLAGS% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% -c %tmpcfile% -o %OBJPATH%\%tmpcfileBase%.lo86 >> %LOGTMP% 2>&1
) else if "%LIBTYPE%" equ "sillib" (
	call :echo2 %OEM_MSCL% %OEM_MSFLAGS% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% %tmpcfile% /Fo%OBJPATH%
	%OEM_MSCL% %OEM_MSFLAGS% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% %tmpcfile% /Fo%OBJPATH%\\ >> %LOGTMP% 2>&1
) else (
	call :echo2 %GHSPATH%\ccrh850.exe %COMPFLAGS% -object_dir=%OBJPATH% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% -c %tmpcfile%
	%GHSPATH%\ccrh850.exe %COMPFLAGS% -object_dir=%OBJPATH% -I %INCPATH% -I %CUSTHPATH% %CUSTINCTXT% -c %tmpcfile% >> %LOGTMP% 2>&1
)
exit /b 0

:subroutine_o
set /a CNTOFILES+=1
echo Seen object file %~1 >> %LOGTMP%
exit /b 0

