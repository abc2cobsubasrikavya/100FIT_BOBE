@echo off
setlocal EnableDelayedExpansion

REM Instruction
REM memCopy -from 0x001ffffc -l 0x00000004 -to 0x001ffff8 -o true -fill 0xFF ^
REM memcopyacross -id ID1 -from 0x0080000c -l  %SYSWORK_BLOCK_LENGTH% -id2 ID2 -to 0x0080000c -o true -fill 0xFF ^
set /a FOCWORK_BLOCK_LENGTH_DEC= (0x000054ff - 0x00004000 +1)*2
call cmd /c exit /b %FOCWORK_BLOCK_LENGTH_DEC%
set FOCWORK_BLOCK_LENGTH=%=exitcode%
set /a SYSWORK_BLOCK_LENGTH_DEC= (0x00007cab - 0x00006000 +1)*7
call cmd /c exit /b %SYSWORK_BLOCK_LENGTH_DEC%
set SYSWORK_BLOCK_LENGTH=%=exitcode%
set /a TUNWORK_BLOCK_LENGTH_DEC= 0x00008573 - 0x00008000 +1
call cmd /c exit /b %TUNWORK_BLOCK_LENGTH_DEC%
set TUNWORK_BLOCK_LENGTH=%=exitcode%
set /a SAFEDRIVE_BLOCK_LENGTH_DEC= (0x0080d377 - 0x0080ce34 +1)
call cmd /c exit /b %SAFEDRIVE_BLOCK_LENGTH_DEC%
set SAFEDRIVE_BLOCK_LENGTH=%=exitcode%
set /a SAFESYSWORK_BLOCK_LENGTH_DEC= (0x0080d54b - 0x0080d378 +1)*7
call cmd /c exit /b %SAFESYSWORK_BLOCK_LENGTH_DEC%
set SAFESYSWORK_BLOCK_LENGTH=%=exitcode%
set /a CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC= 0x00198e70 -1
call cmd /c exit /b %CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC%
set CALIBDAT_HWLIB_INIT_DAT_END_CRC=%=exitcode%
set /a OEMWORK_BLOCK_LENGTH_DEC=0x0000e81b - 0x0000c000+1
call cmd /c exit /b %OEMWORK_BLOCK_LENGTH_DEC%
set OEMWORK_BLOCK_LENGTH=%=exitcode%
C:\eps_deploy\BitBucketBuild\BOBE\BoschInputs\hexmodx\bin\HexmodX.cmd ^
read -in C:\eps_deploy\BitBucketBuild\BOBE\BoschInputs\Data\3G1300D7000T02_RG1_X_VARI04_with_backup_patched.hex -id ID1 ^
read -in C:\eps_deploy\BitBucketBuild\BOBE\BuildOutput\standard_executable_file\3G1300D7000T02_RG1_X_VARI04__MQB37W_ASC_SAC_pre.hex -id ID2 -type S19 ^
select -id ID2 ^
patch -t IHEX -addr 0x0000e80c -val 0x31303130 ^
patch -t IHEX -addr 0x0000e800 -val 0x2D2D2D2D ^
patch -t IHEX -addr 0x0000e806 -val 22 ^
crc32 -startaddress 0x0000c000 -endaddress 0x0000e817 -outputaddress 0x0000e818 ^
memCopy -from 0x0000c000 -l  %OEMWORK_BLOCK_LENGTH% -to 0x0098800c -o true ^
memcopyacross -id ID1 -from 0x0019630c -l  %FOCWORK_BLOCK_LENGTH% -id2 ID2 -to 0x0019630c -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x0080000c -l  %SYSWORK_BLOCK_LENGTH% -id2 ID2 -to 0x0080000c -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x0080c8c0 -l  %TUNWORK_BLOCK_LENGTH% -id2 ID2 -to 0x0080c8c0 -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x0080ce34 -l  %SAFEDRIVE_BLOCK_LENGTH% -id2 ID2 -to 0x0080ce34 -o true -fill 0xFF ^
memcopyacross -id ID1 -from 0x0080d378 -l  %SAFESYSWORK_BLOCK_LENGTH% -id2 ID2 -to 0x0080d378 -o true -fill 0xFF ^
select -id ID1 ^
memcopyacross -id ID2 -from 0x00048000 -l  0x001B8000 -id2 ID1 -to 0x00048000 -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00800000 -l  0x00188000 -id2 ID1 -to 0x00800000 -o true -fill 0xFF ^
memcopyacross -id ID2 -from 0x00988000 -l  0x00048000 -id2 ID1 -to 0x00988000 -o true -fill 0xFF ^
crc32 -startaddress 0x0100A000 -endaddress 0x010DFFFF -outputaddress 0x00114108 ^
crc32 -startaddress 0x01004000 -endaddress 0x01005FFF -outputaddress 0x0011410c ^
crc32 -startaddress 0x010E0000 -endaddress 0x010FFFFF -outputaddress 0x00114110 ^
crc32 -startaddress 0x00800000 -endaddress 0x00987FFB -outputaddress 0x00987FFC ^
crc32 -startaddress 0x00988000 -endaddress 0x009CFFFB -outputaddress 0x009CFFFC ^
crc32 -startaddress 0x009d8000 -endaddress 0x009fffff -outputaddress 0x00114114 ^
crc32 -startaddress 0x00198d0c -endaddress %CALIBDAT_HWLIB_INIT_DAT_END_CRC% -outputaddress 0x00198e70 ^
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
write -out C:\eps_deploy\BitBucketBuild\BOBE\BuildOutput\standard_executable_file\3G1300D7000T02_RG1_X_VARI04__MQB37W_ASC_SAC_StartAtDrive.hex ^
exit
