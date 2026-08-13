set "USE_OEM_SETTINGS=NO"

if "%USE_OEM_SETTINGS%" equ "YES" (

	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	rem ~~~ Please, fill in your settings! ~~~
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	rem ~~ Path to your ASC/SAC project with */SRC/*.c and */INC/*.h files (other files and other paths will be ignored) ~~
	set "WORKPATH=C:\Projekte\ASC_SAC"
	rem ~~ Target name of the library file that will be generated (without path or file extension) ~~
	set "NAMELIB=MQB37W_ASC_SAC"
	rem ~~	Path to a folder for additional includes, please copy all includes to this folder ~~
	set "CUSTINCPATH=%WORKPATH%\INC"
	rem ~~	Path to Greenhills RH850 compiler (a folder containing ccrh850.exe) ~~
	set "GHSPATH=C:\ghs\v850_V201517P01"
	rem ~~	Path to compiler license server (optional if license server used) ~~
	set "GHS_LMHOST=OPTINONAL_CUSTOMER_CONFIGURATION"
	rem ~~	Name of compiler used by license server (optional if license server used) ~~
	set "GHS_LMWHICH=ghs"
	rem ~~	Software version number that will be used for ODX Create (shall have a length of 4 characters) ~~
	set "SWVERCUST=F150"
	rem ~~	Path to a python interpreter version 3.9.5 (including the name of the executable) ~~
	set "PYTHONCMD=C:\PROGRA~1\python\3.9.5.0.0\python-3.9.5.amd64\python.exe"
	rem ~~ Path to an A2L updater command (including the name of the executable) ~~
	set "A2LUPDATERCMD=C:\PROGRA~2\Vector\ASAP2T~1.0\Exec\ASAP2Updater.exe"
	rem ~~ Path to your a2l merge and update folder ~~
	set "A2LMERGEUPDATEPATH=%WORKPATH%\A2L\merge_update"
	rem ~~ Path to your a2l merge folder ~~
	set "A2LMERGEPATH=%WORKPATH%\A2L\merge"
	rem ~~ Path to an ODXCreate command (a folder containing ODXCreate.exe) ~~
	set "ODXCREATEPATH=C:\ODXCreate"
	rem ~~ Path to MSVC Compiler (a folder containing bin/cl.exe or bin/amd64/cl.exe depending on <MSVCBITOPT>) ~~
	set "MSVCPATH=OPTINONAL_CUSTOMER_CONFIGURATION"
	rem ~~ Architecture to use for MSVC Compiler: Either 32 for x86 or 64 for amd64 ~~
	set "MSVCBITOPT=OPTINONAL_CUSTOMER_CONFIGURATION"
) else (
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	rem ~~~ Please, don't change this settings! ~~~
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	rem ~~	Path to your project with *.c and *.h files (other files will be ignored) ~~
	set "WORKPATH=c:\eps_deploy\BitBucketBuild\BOBE"
	rem ~~	Target name of the library file that will be generated (without path or file extension) ~~
	set "NAMELIB=MQB37W_ASC_SAC"
	rem ~~	Path to a folder for additional includes, please copy all includes to this folder ~~
	set "CUSTINCPATH=%WORKPATH%\Includes"
	rem ~~	Path to Greenhills RH850 compiler (a folder containing ccrh850.exe) ~~
	set "GHSPATH=C:\toolbase\greenhills_rel\comp_202115_2fp_x64"
	rem ~~	Path to compiler license server (optional if license server used) ~~
	set "GHS_LMHOST=%GHS_LIC_SERVER3%"
	rem ~~	Name of compiler used by license server (optional if license server used) ~~
	set "GHS_LMWHICH=ghs"
	rem ~~	Software version number that will be used for ODX Create (shall have a length of 4 characters) ~~
	set "SWVERCUST=F150"
	rem ~~	Path to a python interpreter version 3.9.5 (including the name of the executable) ~~
	set "PYTHONCMD=C:\toolbase\python\3.9.5.0.0\python-3.9.5.amd64\python.exe"
	rem ~~ Path to an A2L updater command (including the name of the executable) ~~
	set "A2LUPDATERCMD=c:\git\100fit\tool_forks\asap2_tools\updater.exe"
	rem ~~ Path to your a2l merge and update folder ~~
	set "A2LMERGEUPDATEPATH=%WORKPATH%\A2L\merge_update"
	rem ~~ Path to your a2l merge folder ~~
	set "A2LMERGEPATH=%WORKPATH%\A2L\merge"
	rem ~~ Path to an ODXCreate command (a folder containing ODXCreate.exe) ~~
	set "ODXCREATEPATH=C:\make_tools\ODXCreate"
	rem ~~ Full path to a signature key file (Flashdatensicherheit) that will be used for ODX Create ~~
	set "FDSSIGKEYFILE=%WORKPATH%\BoschInputs\DataODX\FDSProject_2657_E.p8"
	rem ~~ Full path to a project config file (Flashdatensicherheit) that will be used for ODX Create ~~
	set "FDSPRJCFGFILE=%WORKPATH%\BoschInputs\DataODX\config_FDSProject_2657_E.xml"
	rem ~~ Path to MSVC Compiler (a folder containing bin/cl.exe or bin/amd64/cl.exe depending on <MSVCBITOPT>) ~~
	set "MSVCPATH=C:\PROGRA~2\MICROS~1.0\VC"
	rem ~~ Architecture to use for MSVC Compiler: Either 32 for x86 or 64 for amd64 ~~
	set "MSVCBITOPT=64"
)
