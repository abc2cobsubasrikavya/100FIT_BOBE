@echo off
setlocal EnableDelayedExpansion

REM Instruction
REM memCopy -from 0x001ffffc -l 0x00000004 -to 0x001ffff8 -o true -fill 0xFF ^
REM memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_SYSTEM_SETS_START -l  %SYSWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_SYSTEM_SETS_START -o true -fill 0xFF ^
set /a FOCWORK_BLOCK_LENGTH_DEC= (__ghsbegin_CALIBDAT_FOC_FLAS_END - __ghsbegin_CALIBDAT_FOC_FLAS_START +1)*2
call cmd /c exit /b %FOCWORK_BLOCK_LENGTH_DEC%
set FOCWORK_BLOCK_LENGTH=%=exitcode%
set /a SYSWORK_BLOCK_LENGTH_DEC= (__ghsbegin_CALIBDAT_SYSTEM_FLAS_END - __ghsbegin_CALIBDAT_SYSTEM_FLAS_START +1)*7
call cmd /c exit /b %SYSWORK_BLOCK_LENGTH_DEC%
set SYSWORK_BLOCK_LENGTH=%=exitcode%
set /a TUNWORK_BLOCK_LENGTH_DEC= __ghsbegin_CALIBDAT_TUNING_FLAS_END - __ghsbegin_CALIBDAT_TUNING_FLAS_START +1
call cmd /c exit /b %TUNWORK_BLOCK_LENGTH_DEC%
set TUNWORK_BLOCK_LENGTH=%=exitcode%
set /a SAFEDRIVE_BLOCK_LENGTH_DEC= (__ghsbegin_CALIBDAT_SAFEDRIVE_INIT_END - __ghsbegin_CALIBDAT_SAFEDRIVE_INIT_START +1)
call cmd /c exit /b %SAFEDRIVE_BLOCK_LENGTH_DEC%
set SAFEDRIVE_BLOCK_LENGTH=%=exitcode%
set /a SAFESYSWORK_BLOCK_LENGTH_DEC= (__ghsbegin_CALIBDAT_SAFESYSTEM_INIT_1_END - __ghsbegin_CALIBDAT_SAFESYSTEM_INIT_1_START +1)*7
call cmd /c exit /b %SAFESYSWORK_BLOCK_LENGTH_DEC%
set SAFESYSWORK_BLOCK_LENGTH=%=exitcode%
set /a CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC= xCalDatHdl_HwLib_CRC_XDU32 -1
call cmd /c exit /b %CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC%
set CALIBDAT_HWLIB_INIT_DAT_END_CRC=%=exitcode%
set /a OEMWORK_BLOCK_LENGTH_DEC=__ghsbegin_CALIBDAT_OEM_FLAS_END - __ghsbegin_CALIBDAT_OEM_FLAS_START+1
call cmd /c exit /b %OEMWORK_BLOCK_LENGTH_DEC%
set OEMWORK_BLOCK_LENGTH=%=exitcode%
BOBE_HEXMODX_CMD_PLACEHOLDER ^
read -in BOBE_REF_HEX_DIR_PLACEHOLDER -id ID1 ^
read -in BOBE_PREHEX_FILE_AT_OEM_PLACEHOLDER -id ID2 -type S19 ^
select -id ID2 ^
patch -t IHEX -addr ySy_OemDatasetName_XAU8 -val 0x31303130 ^
patch -t IHEX -addr ySy_OemDatasetSwVersion_XAU8 -val 0x2D2D2D2D ^
patch -t IHEX -addr xCalDatHdl_OEM_Layout_XDU16 -val BOBE_BLOCK_LAYOUT_NO_OEM_WORK_PLACEHOLDER ^
crc32 -startaddress __ghsbegin_CALIBDAT_OEM_FLAS_START -endaddress .CALIBDAT_OEM_FLAS_DAT_END -outputaddress xCalDatHdl_OEM_CRC_XDU32 ^
memCopy -from __ghsbegin_CALIBDAT_OEM_FLAS_START -l  %OEMWORK_BLOCK_LENGTH% -to __ghsbegin_CALIBDAT_OEM_SETS_START -o true ^
memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_FOC_SETS_START -l  %FOCWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_FOC_SETS_START -o true -fill 0xFF ^
memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_SYSTEM_SETS_START -l  %SYSWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_SYSTEM_SETS_START -o true -fill 0xFF ^
memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_TUNING_SETS_START -l  %TUNWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_TUNING_SETS_START -o true -fill 0xFF ^
memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_SAFEDRIVE_INIT_START -l  %SAFEDRIVE_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_SAFEDRIVE_INIT_START -o true -fill 0xFF ^
memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_SAFESYSTEM_INIT_1_START -l  %SAFESYSWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_SAFESYSTEM_INIT_1_START -o true -fill 0xFF ^
select -id ID1 ^
memcopyacross -id ID2 -from 0x00048000 -l  0x001B8000 -id2 ID1 -to 0x00048000 -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00800000 -l  0x00188000 -id2 ID1 -to 0x00800000 -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00988000 -l  0x00048000 -id2 ID1 -to 0x00988000 -o true -fill 0xFF ^
crc32 -startaddress 0x0100A000 -endaddress 0x010DFFFF -outputaddress yDiagSrv_DefaultCrcBackupAppl_gdu32 ^
crc32 -startaddress 0x01004000 -endaddress 0x01005FFF -outputaddress yDiagSrv_DefaultCrcBackupSysWork_gdu32 ^
crc32 -startaddress 0x010E0000 -endaddress 0x010FFFFF -outputaddress yDiagSrv_DefaultCrcBackupBoot_gdu32 ^
crc32 -startaddress 0x00800000 -endaddress 0x00987FFB -outputaddress 0x00987FFC ^
crc32 -startaddress 0x00988000 -endaddress 0x009CFFFB -outputaddress 0x009CFFFC ^
crc32 -startaddress 0x009d8000 -endaddress 0x009fffff -outputaddress yDiagSrv_DefaultCrcHsmCode_gdu32 ^
crc32 -startaddress __ghsbegin_CALIBDAT_HWLIB_SETS_START -endaddress %CALIBDAT_HWLIB_INIT_DAT_END_CRC% -outputaddress xCalDatHdl_HwLib_CRC_XDU32 ^
crc32 -startaddress 0x00048000 -endaddress 0x001FFFFB -outputaddress 0x001FFFFC ^
select -id ID2 ^
memcopyacross -id ID1 -from 0x001FFFFC -l  0x00000004 -id2 ID2 -to 0x001FFFFC -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x00987FFC -l  0x00000004 -id2 ID2 -to 0x00987FFC -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x009CFFFC -l  0x00000004 -id2 ID2 -to 0x009CFFFC -o true -fill 0xFF ^
select -id ID1 ^
memcopyacross -id ID2 -from 0x001FFFFF -l  0x00000001 -id2 ID1 -to 0x001FFFFC -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x001FFFFE -l  0x00000001 -id2 ID1 -to 0x001FFFFD -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x001FFFFD -l  0x00000001 -id2 ID1 -to 0x001FFFFE -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x001FFFFC -l  0x00000001 -id2 ID1 -to 0x001FFFFF -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00987FFF -l  0x00000001 -id2 ID1 -to 0x00987FFC -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00987FFE -l  0x00000001 -id2 ID1 -to 0x00987FFD -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00987FFD -l  0x00000001 -id2 ID1 -to 0x00987FFE -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00987FFC -l  0x00000001 -id2 ID1 -to 0x00987FFF -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x009CFFFF -l  0x00000001 -id2 ID1 -to 0x009CFFFC -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x009CFFFE -l  0x00000001 -id2 ID1 -to 0x009CFFFD -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x009CFFFD -l  0x00000001 -id2 ID1 -to 0x009CFFFE -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x009CFFFC -l  0x00000001 -id2 ID1 -to 0x009CFFFF -o true -fill 0xFF ^
write -out BOBE_HEX_FILE_AT_OEM_PLACEHOLDER ^
exit
