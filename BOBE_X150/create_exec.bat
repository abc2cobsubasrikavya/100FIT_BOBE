
@echo off


rem 1. check for valid targets

set EXECTYPE=
if "%1" equ "standard_executable_file" set "EXECTYPE=%1"
if "%1" equ "stack" set "EXECTYPE=%1"
if "%1" equ "" set "EXECTYPE=standard_executable_file"

if not defined EXECTYPE (
	echo *** ERROR: %1 is not a valid exec type!
	goto :eof
)

rem 2. read and prepare settings

call settings.bat
echo ***
echo *** Current path                      %CD%
echo *** Current WORKPATH  settings.bat    %WORKPATH%
echo ***

rem ~~ Default Path of work path ~~
set "PATHBOBEDEFAULT=C:\Project\BOBE"
set "PATHOUT=%cd%\BuildOutput\%EXECTYPE%"
set "ODXPATHOUT=%cd%\BuildOutput\Odx"

if not exist %ODXPATHOUT% (
   mkdir %ODXPATHOUT%
)
if not exist %PATHOUT% (
   mkdir %PATHOUT%
)

rem ~~ Path to log files ~~
set "LOGTMP=%cd%\BuildOutput\%EXECTYPE%-exec-running.log"
set "LOGPATH=%PATHOUT%\Logs"
set "LOGTXT=%LOGPATH%\CreateExec.log"
set "LOGERROR=%LOGPATH%\Error.log"
echo Starting >%LOGTMP%

rem ~~ Path to needed input files from Bosch ~~
set "INPPATH=%cd%\BoschInputs"
rem ~~ Path to merger script ~~
set "A2LMERGERCMD=%INPPATH%\merge.py"
rem ~~ Path to Address patching script ~~
set "VARADDRESSPATCHCMD=%INPPATH%\VarAddressPatch.py"


rem ~~ Path to needed input libs from Bosch ~~
set "LIBINPPATH=%INPPATH%\Libraries"
rem ~~ Path to linker directives file ~~
set "LDPATH=%INPPATH%\linkseglayer.ld"
set "SEDPATHNAME=%INPPATH%\sed.exe"
set "UPDATERSED=%INPPATH%\updater.sed
rem ~~ path to library files ~~
set "LIBPATHNAME=%PATHOUT%\%NAMELIB%"
if "%EXECTYPE%" equ "stack" (
  set "LIBPATHNAME=%LIBPATHNAME%_stack"
)
rem ~~ Path to needed input data from Bosch ~~
set "DATAINPPATH=%INPPATH%\Data"
rem ~~ Path to needed input data odx from Bosch ~~
set "DATAODXINPPATH=%INPPATH%\DataODX"
rem ~~ Default Path to data odx from Bosch ~~
set "DATAODXINPPATHDEFAULT=%INPPATH%\DataODX\Default"
rem ~~ path to hexmodx exe ~~
set "HEXMODXPATH   =%INPPATH%\hexmodx\bin"
set "HEXMODXCMDPATH=%INPPATH%\hexmodx\bin\HexmodX.cmd"
set "HEXMODX_PATCH_SCRIPT=%INPPATH%\hexmodx_scripts\HexmodX_BOBE.cmd"
rem ~~ path to hexmodx exe ~~
set "HEXMODXCMDPATHTEMPLATE=%INPPATH%\hexmodx_scripts\HexmodX_BOBE_TEMPLATE.cmd"

rem ~~ name of hex file without extention ~~
set "NAMEHEX=3G1300D7000T02_RG1_X_VARI04__%NAMELIB%"
rem ~~ Path to map file ~~
set "UPDATERMAPPATHNAME=%PATHOUT%\%NAMEHEX%_update.map"
rem ~~ path to elf file ~~
set "ELFPATHNAME=%PATHOUT%\%NAMEHEX%.elf"
rem ~~ Path to hex files ~~
set "PREHEXPATHNAME=%PATHOUT%\%NAMEHEX%_pre.hex"
set "PREHEXPATHNAME_patched=%PATHOUT%\%NAMEHEX%_patched"
set "HEXPATHNAME=%PATHOUT%\3G1300D7000T02_RG1_X_VARI04__MQB37W_ASC_SAC_StartAtDrive.hex"
set "REFHEXPATHNAME=%DATAINPPATH%\3G1300D7000T02_RG1_X_VARI04_with_backup_patched.hex"
rem ~~ Software version number maximum 4 characters ~~
set "SWVERCUST_MIN4CHAR=%SWVERCUST%0000"
set "SWVERCUST_4CHAR=%SWVERCUST_MIN4CHAR:~,4%"

rem ~~ Path to a2l files ~~
set "A2LOEMPATHNAME_MERGED=%PATHOUT%\3G1300D7000T02_RG1_X_VARI04_Merged.a2l"
rem copy %INPPATH%\3G1300D7000T02_RG1_X_VARI04_OEM.a2l %A2LOEMPATHNAME_MERGED%
copy %INPPATH%\3G1300D7000T02_RG1_X_VARI04_OEM.a2l %A2LOEMPATHNAME_MERGED%
set "A2LOEMPATHNAME_UPDATED=%PATHOUT%\3G1300D7000T02_RG1_X_VARI04_Updated.a2l"
set "A2LOEMPATHNAME_MERGEDONLY=%PATHOUT%\3G1300D7000T02_RG1_X_VARI04_MergedOnly.a2l"
set "A2LOEMPATHNAME_FINAL=%PATHOUT%\3G1300D7000T02_RG1_X_VARI04__%NAMELIB%.a2l"
rem ~~ Path to a2l ini files ~~
set "INIMERGER=%INPPATH%\a2l_merge.ini"
set "INIUPDATER=%INPPATH%\a2l_updater.ini"
rem ~~ delete all underlines and spaces and cut postfix to max. 14 signs
set "ODXPOSTFIX=%NAMELIB%"
set "ODXPOSTFIX=%ODXPOSTFIX:_=%"
set "ODXPOSTFIX=%ODXPOSTFIX: =%"
set "ODXPOSTFIX=%ODXPOSTFIX:~0,14%"
set "BOBEODXSWVERSIONNUMBERDEFAULT=F150"
set "BOBEODXSWPARTNUMBER=3QH907164H  3QN907145A  5QS907164   5QS907164  "
set "BOBEODXSWPARTNUMBER_DEFAULT=3QH907164H "

rem ~~ path to odx config ~~
set "ODXCONFIGPATHNAME=%DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf"
set "ADAPTEDODXCONFIGPATHNAME=%ODXPATHOUT%\Main_Odx_Config_BankAB_OEM_FDS.ocnf"
rem ~~ path to searchandreplace.exe ~~
set "SEARCHREPLACE=%INPPATH%\searchandreplace.exe"
set "BOBEODX_SignatureKeyFile=%DATAODXINPPATH%\FDSProject_2657_E.p8"
set "BOBEODX_FDSProjCfgFile=%DATAODXINPPATH%\config_FDSProject_2657_E.xml"
set "BOBEODX_1000FLASHDATA=%DATAODXINPPATH%\1000FLASHDATA.Data.hex"
set "BOBEODX_BootUpdater=%DATAODXINPPATH%\AS_VW_100FIT_BLU_MST_D4_chk_Patched.hex"
set "BOBEODX_HSM_HEX_Path=%DATAODXINPPATH%\HSM_D4.hex"
set "BOBEODX_BU_BootUpdater=%DATAODXINPPATH%\AS_VW_100FIT_BLU_SLV_D3_chk_Patched.hex"


rem ~~ path to Stack Size log ~~
set "STACK_RESULT=%PATHOUT%\%NAMELIB%_StackSize.log"

rem ~~ DON'T CHANGE!!! ~ compiler flags ~~
set "ELFFLAGS=-Mnx -keepmap -map=%MAPPATH% -cpu=rh850g3m -ffunctions -lnk=-old_section_wildcard_matching -L%LIBINPPATH% -llibarch_NeededObjects.a -nostartfiles -entry=_rba_SysPreInit_Startup -nostdlib -individual_pragma_data_sections -individual_function_sections -individual_pragma_function_sections -individual_section_name_extra_dot -stack_protector"
rem ~~ DON'T CHANGE!!! ~ compiler flags ~~
set "COMPFLAGS=--no_debug -delete -passsource -ffunctions -recipf -cpu=rh850g3m -no_callt -ignore_callt_state_in_interrupts -large_sda -shorten_loads -shorten_moves --short_enum -nostdlib -reserve_r2 -MD --no_commons -prepare_dispose -inline_prologue -fhard -ansi -Wshadow --prototype_errors -DCOMPILERCFG_EXTENSION_MCAL_FILE -Ogeneral -sda=0"

rem ~~ DON'T CHANGE!!! ~ ELF options ~~
set "ELFOPTIONS="
rem ~~ all libs for linker ~~

set "ALLLIBSLINKER=%LIBINPPATH%\Mainpath_VARI04_Dev_Lib.a %LIBINPPATH%\Mainpath_VARI04_Lib.a %LIBINPPATH%\HWLIB_rel_HW46_FOC13_Faint_off_Lib.a %LIBPATHNAME%.a %LIBINPPATH%\DSFxp.lib %LIBINPPATH%\RTAOS.a"





rem 3. prepare environment

call :clean_folder "%PATHOUT%" "output" %STACK_RESULT% "*.dla" "*.dle" "*.dnm" "*.dep" "*.map" "*.elf" "*.hex"
call :clean_folder "%LOGPATH%" "build log" "CreateExec.log" "Error.log"
call :check_exist %LIBPATHNAME%.a || goto :finish_error
call :echo2


rem 4.check for external tools

call :check_exist %LDPATH% || goto :finish_error
call :check_exist %GHSPATH%\ccrh850.exe || goto :finish_error
if "%EXECTYPE%" neq "stack" (
	call :check_exist %GHSPATH%\gsrec.exe || goto :finish_error

	REM TODO
	call :check_exist %REFHEXPATHNAME% || goto :finish_error
)

rem 5. create files and A2L

call :echo2
call :echo2 Create ELF file
call :echo2
call :echo2 %GHSPATH%\ccrh850.exe %COMPFLAGS% %ELFFLAGS% -T %LDPATH% %ELFOPTIONS% -o %ELFPATHNAME% %ALLLIBSLINKER%
%GHSPATH%\ccrh850.exe %COMPFLAGS% %ELFFLAGS% -T %LDPATH% %ELFOPTIONS% -o %ELFPATHNAME% %ALLLIBSLINKER% >> %LOGTMP% 2>&1
call :echo2
call :check_exist %ELFPATHNAME% || goto :finish_error

call :echo2
call :echo2 create MAP file for a2l updater
call :echo2
call :echo2 %GHSPATH%\gnm.exe -p -no_dotdot -h -output %UPDATERMAPPATHNAME%_tmp %ELFPATHNAME%
%GHSPATH%\gnm.exe -p -no_dotdot -h -output %UPDATERMAPPATHNAME%_tmp %ELFPATHNAME%
call :echo2
call :echo2 %SEDPATHNAME%  -n -r -f %UPDATERSED%  %UPDATERMAPPATHNAME%_tmp > %UPDATERMAPPATHNAME%
%SEDPATHNAME%  -n -r -f %UPDATERSED%  %UPDATERMAPPATHNAME%_tmp > %UPDATERMAPPATHNAME%
call :clean_file %UPDATERMAPPATHNAME%_tmp

	call :echo2
	call :echo2 Create HEX file
	call :echo2
	call :echo2 %GHSPATH%\gsrec.exe -noS5 %ELFPATHNAME% -o %PREHEXPATHNAME%
	%GHSPATH%\gsrec.exe -noS5 %ELFPATHNAME% -o %PREHEXPATHNAME% >> %LOGTMP% 2>&1
	call :check_exist %PREHEXPATHNAME% || goto :finish_error

call :echo2
call :echo2 Updating the Hexmodx Script
call :echo2 %PYTHONCMD% %VARADDRESSPATCHCMD% %UPDATERMAPPATHNAME% %HEXMODXCMDPATHTEMPLATE% %HEXMODX_PATCH_SCRIPT%
%PYTHONCMD% %VARADDRESSPATCHCMD% %UPDATERMAPPATHNAME% %HEXMODXCMDPATHTEMPLATE% %HEXMODX_PATCH_SCRIPT%
call :echo2 %SEARCHREPLACE% %HEXMODX_PATCH_SCRIPT% %BOBE_HEXMODX_CMD_PLACEHOLDER% %HEXMODX_PATCH_SCRIPT%
%SEARCHREPLACE% %HEXMODX_PATCH_SCRIPT% "BOBE_HEXMODX_CMD_PLACEHOLDER" %HEXMODXCMDPATH%  nowarnings
%SEARCHREPLACE% %HEXMODX_PATCH_SCRIPT% "BOBE_REF_HEX_DIR_PLACEHOLDER" %REFHEXPATHNAME%  nowarnings
%SEARCHREPLACE% %HEXMODX_PATCH_SCRIPT% "BOBE_PREHEX_FILE_AT_OEM_PLACEHOLDER" %PREHEXPATHNAME%  nowarnings
%SEARCHREPLACE% %HEXMODX_PATCH_SCRIPT% "BOBE_HEX_FILE_AT_OEM_PLACEHOLDER" %HEXPATHNAME%  nowarnings

call :echo2
	call :echo2 Call HEXMODX Script
	call :echo2
	call :echo2 %HEXMODX_PATCH_SCRIPT%
	call %HEXMODX_PATCH_SCRIPT% >> %LOGTMP% 2>&1
	if exist ped.log (
		echo ped.log: >> %LOGTMP%
		type ped.log >> %LOGTMP% 2>&1
		echo. >> %LOGTMP%
		move /Y ped.log %LOGPATH%\%NAMELIB%_PED.log
	)
	call :check_exist %HEXPATHNAME% || goto :finish_error
	call :clean_file %PREHEXPATHNAME%

	copy %INIMERGER% %PATHOUT%\MERGER.INI
	copy %INIUPDATER% %PATHOUT%\UPDATER.INI

    call :echo2
    call :echo2 Merge A2L
    call :echo2 %A2LMERGEUPDATEPATH%
    call :clean_file %PATHOUT%\tmpa2lmergeinp.txt
    forfiles /p %A2LMERGEUPDATEPATH% /m *.a2l /c "cmd /c echo @path >> %PATHOUT%\tmpa2lmergeinp.txt"
    for /f %%i in (%PATHOUT%\tmpa2lmergeinp.txt) do (call :subroutine_a2l_merge "%%i")
    if not exist %PATHOUT%\tmpa2lmergeinp.txt (
        call :echo2 **************************************
        call :echo2 WARNING: No a2l file available in %A2LMERGEUPDATEPATH%!
        call :echo2 **************************************
        call :echo2
    )

    call :echo2
    call :echo2 Update A2L
    call :echo2
    call :echo2 %SEDPATHNAME% -r s/"ARRAY_SIZE (.*)$"/"MATRIX_DIM \\1 1 1"/ %A2LOEMPATHNAME_MERGED% into %A2LOEMPATHNAME_MERGED%_fixed
    %SEDPATHNAME% -r s/"ARRAY_SIZE (.*)$"/"MATRIX_DIM \\1 1 1"/ %A2LOEMPATHNAME_MERGED% > %A2LOEMPATHNAME_MERGED%_fixed
    call :echo2 %A2LUPDATERCMD% -I %A2LOEMPATHNAME_MERGED%_fixed -O %A2LOEMPATHNAME_UPDATED% -A %UPDATERMAPPATHNAME% -L %LOGPATH%\%NAMELIB%_a2l_update.log
    %A2LUPDATERCMD% -I %A2LOEMPATHNAME_MERGED%_fixed -O %A2LOEMPATHNAME_UPDATED% -A %UPDATERMAPPATHNAME% -L %LOGPATH%\%NAMELIB%_a2l_update.log
    copy %A2LOEMPATHNAME_UPDATED% %A2LOEMPATHNAME_FINAL%
    call :clean_file %PATHOUT%\UPDATER.INI
    call :clean_file %PATHOUT%\MERGER.INI
    call :clean_file %A2LOEMPATHNAME_MERGED%
    call :clean_file %A2LOEMPATHNAME_MERGED%_fixed
    call :clean_file %A2LOEMPATHNAME_MERGED%_tmp
    call :clean_file %A2LOEMPATHNAME_UPDATED%
    call :clean_file %A2LOEMPATHNAME_MERGEDONLY%

        call :echo2
        call :echo2 Call ODX Create
        call :echo2
        rem ~~ fill in the correct hex input and output directory

        copy %DATAODXINPPATHDEFAULT%\*.cmd  %DATAODXINPPATH%
        copy %DATAODXINPPATHDEFAULT%\*.hex  %DATAODXINPPATH%
        copy %DATAODXINPPATHDEFAULT%\*.ocnf %DATAODXINPPATH%

        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_A.cmd         BOBE_PLACEHOLDER_HEX_FILE        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_A.cmd         BOBE_PLACEHOLDER_Odx_Artifacts   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_A.cmd         BOBE_PLACEHOLDER_HexmodX_CMD     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_B.cmd         BOBE_PLACEHOLDER_HEX_FILE        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_B.cmd         BOBE_PLACEHOLDER_Odx_Artifacts   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Drive_Bank_B.cmd         BOBE_PLACEHOLDER_HexmodX_CMD     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Oem_Code.cmd       BOBE_PLACEHOLDER_HEX_FILE        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Oem_Code.cmd       BOBE_PLACEHOLDER_Odx_Artifacts   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Oem_Code.cmd       BOBE_PLACEHOLDER_HexmodX_CMD     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_Drive_Bank_A.cmd  BOBE_PLACEHOLDER_HEX_FILE        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_Drive_Bank_A.cmd  BOBE_PLACEHOLDER_Odx_Artifacts   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_Drive_Bank_A.cmd  BOBE_PLACEHOLDER_HexmodX_CMD     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_SysHex.cmd        BOBE_PLACEHOLDER_HEX_FILE        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_SysHex.cmd        BOBE_PLACEHOLDER_Odx_Artifacts   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Backup_SysHex.cmd        BOBE_PLACEHOLDER_HexmodX_CMD     %HEXMODXCMDPATH%  nowarnings

        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_SignatureKeyFile     %BOBEODX_SignatureKeyFile%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_FDSProjCfgFile       %BOBEODX_FDSProjCfgFile%    nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_1000FLASHDATA        %BOBEODX_1000FLASHDATA%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_BootUpdater          %BOBEODX_BootUpdater%       nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_HSM_HEX_Path         %BOBEODX_HSM_HEX_Path%      nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_BU_BootUpdater       %BOBEODX_BU_BootUpdater%    nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_Odx_Artifacts        %DATAODXINPPATH%            nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\Main_Odx_Config_BankAB_OEM_FDS.ocnf  BOBE_PLACEHOLDER_ODXPath              %ODXPATHOUT%                nowarnings

        rem ~~ create the hex files for ODX creation
        call :echo2
        call :echo2
        call %DATAODXINPPATH%\Drive_Bank_A.cmd
        call %DATAODXINPPATH%\Drive_Bank_B.cmd
        call %DATAODXINPPATH%\Oem_Code.cmd
        call %DATAODXINPPATH%\Backup_Drive_Bank_A.cmd
        call %DATAODXINPPATH%\Backup_SysHex.cmd

        rem ~~ hex files for ODX creation done
        for %%X in (%BOBEODXSWPARTNUMBER%) do (
            call :echo2 ~~ Create ODX Software Version %SWVERCUST% with Software Part Number: %%X
            copy %ODXCONFIGPATHNAME% %ADAPTEDODXCONFIGPATHNAME%
            %SEARCHREPLACE% %ADAPTEDODXCONFIGPATHNAME% %BOBEODXSWPARTNUMBER_DEFAULT% %%X  nowarnings
            call :echo2 %ODXCREATEPATH%\ODXCreate.exe %ADAPTEDODXCONFIGPATHNAME%
            call %ODXCREATEPATH%\ODXCreate.exe %ADAPTEDODXCONFIGPATHNAME% >> %LOGTMP% 2>&1
        )

rem 9. Cleanup and done

call :clean_file MAPCONV.TMP
call :clean_file %PATHOUT%\*.dla
call :clean_file %PATHOUT%\*.dle
call :clean_file %PATHOUT%\*.dnm
call :clean_file %PATHOUT%\*.dep
call :clean_file %DATAODXINPPATH%\Backup_Drive_Bank_A.*
call :clean_file %DATAODXINPPATH%\Backup_SysHex.*
call :clean_file %DATAODXINPPATH%\Drive_Bank_A.*
call :clean_file %DATAODXINPPATH%\Drive_Bank_B.*
call :clean_file %DATAODXINPPATH%\Oem_Code.*
call :clean_file %PATHOUT%\tmpa2lmergeinp.txt
call :clean_file %PATHOUT%\tmpa2lmergeinp_onlymerge.txt

call :echo2
call :echo2 ******************************
call :echo2 %EXECTYPE% build done sucessfully
call :echo2 ******************************
move /Y %LOGTMP% %LOGTXT% >NUL
timeout /T 5
goto :eof

rem error handler -- direct invocation without "call" !
:finish_error
call :echo2 *********************************
echo ERROR occured!
echo See logfile %LOGERROR%
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
	del /q %~1
)
exit /b 0

:clean_folder
if not exist %~1 (
	call :echo2 Create %~2 folder %~1
	call :echo2
	md %~1
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

:subroutine_a2l_merge
set "tmpa2lfile=%~1"
call :echo2 merge %tmpa2lfile% to %A2LOEMPATHNAME_MERGED%
set "tmpa2lfile2=%tmpa2lfile:.=_%"
set "LOGFILENAME=%tmpa2lfile2:"=%"
%PYTHONCMD% %A2LMERGERCMD% %tmpa2lfile% %A2LOEMPATHNAME_MERGED% %A2LOEMPATHNAME_MERGED%
exit /b 0

