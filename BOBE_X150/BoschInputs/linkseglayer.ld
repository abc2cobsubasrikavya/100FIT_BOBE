
# generated file - do not edit
# if you need an update, change linkseglayer.mak file


/*****************************************************************************
| C O P Y R I G H T
|-----------------------------------------------------------------------------
| Copyright (c) Robert Bosch Automotive Steering GmbH, Germany
|
| This file is property of Robert Bosch GmbH. Any unauthorised copy, use or
| distribution is an offensive act against international law and may me
| prosecuted under federal law. Its content is company confidential.
|-----------------------------------------------------------------------------
| D E S C R I P T I O N
|-----------------------------------------------------------------------------
|
|       Purpose: linker command file CCCube D4 (R7F701327)
|-----------------------------------------------------------------------------
| N O T E S
|-----------------------------------------------------------------------------
|  Notes on sections:
|  .text — holds program code.
|  .data — holds variables with explicitly initialized values (e.g. int i=1;).
|  .bss  — holds variables that are not explicitly initialized (for example, static int j;)
|  .rodata — holds some read-only data, such as const variables. This data varies depending on your target.
|
|  If the Small Data Area (SDA) optimization is enabled, the compiler re-allocates some data from the primary sections to the equivalent SDA sections:
|  .sdata - initialized read/write data
|  .sbss - uninitialized read/write data
|  .rosdata - constant data
|
|  If the Zero Data Area (ZDA) optimization is enabled, the compiler re-allocates some data items to the equivalent ZDA sections:
|  .zdata - initialized data
|  .zbss - uninitialized data
|  .rozdata - constant data
*****************************************************************************/

OPTION("-no_append")

CONSTANTS
{
  std_header_size                = 0x10
  std_header_crc_size            = 0x04
  btldr_reprogRequest_size = 16
  bootmemcpycmdstruct_size = 256
}

MEMORY
{
  # ROM **************************************************************
  # Code Flash Bank A ************************************************
  #  ESB Block *******************************************************
  ESB_Rom               : ORIGIN = 0x00000000,          LENGTH = 8/4 * 4k
  # NV-Share data (only production) **********************************
  NvShare_Rom           : ORIGIN = 0x00002000,      LENGTH = 8/4 * 4k
  # FOC Work (hwlib )*************************************************
  Foc_Work_Rom          : ORIGIN = 0x00004000,     LENGTH = 8/4 * 4k
  # System work  *****************************************************
  System_Work_Rom       : ORIGIN = 0x00006000,     LENGTH = 8/4 * 4k
  #  Tuning Work *****************************************************
  Tuning_Work_Rom       : ORIGIN = 0x00008000,     LENGTH = 8/2 * 4k
  #  OEM Work ********************************************************
  OEM_Work_Rom          : ORIGIN = 0x0000C000,     LENGTH = 8/2 * 4k
  # Bootmanager ******************************************************
  Bootmanager_Rom       : ORIGIN = 0x00010000,  LENGTH = 8 * 4k
  # Customer Bootloader **********************************************
  Boot_Rom              : ORIGIN = 0x00018000,   LENGTH = 192/4 * 4k
  # Drive (with ISR table) *******************************************
  Drive_Rom             : ORIGIN = 0x00048000,        LENGTH = 1760/4 * 4k

  # Code Flash Bank B ************************************************
  # Drive B  *********************************************************
  DriveB_Rom            : ORIGIN = 0x00800000,      LENGTH = 1568/4 * 4k
  #  OEM SW **********************************************************
  OEM_Rom               : ORIGIN = 0x00988000,          LENGTH = 288/4 * 4k
  #  Wipeout  *********************************************************
  WipeOut_Rom           : ORIGIN = 0x009D0000,      LENGTH = 32/4 * 4k
  #  HSM *************************************************************
  HSM_Rom               : ORIGIN = 0x009D8000,          LENGTH = 160/4 * 4k


  # RAM **************************************************************
  # local RAM PE1 ****************************************************
  lRAM_PE1                    : ORIGIN = 0xFEBF0000,                LENGTH = 0 # must be empty
  lRAM_PE1_stack              : ORIGIN = .,                                     LENGTH = 24 * 1k
  lRAM_PE1_data               : ORIGIN = .,                                     LENGTH = 36 * 1k
  lRAM_PE1_DTS                : ORIGIN = .,                                     LENGTH = 4 * 1k

  # local RAM PE2 ****************************************************
  lRAM_PE2                    : ORIGIN = 0xFE9F0000,                LENGTH = 0 # must be empty
  lRAM_PE2_stack              : ORIGIN = .,                                     LENGTH = 33 * 1k
  lRAM_PE2_data               : ORIGIN = .,                                     LENGTH = 31 * 1k

  # local RAM Self ***************************************************
  lRAM_self                   : ORIGIN = 0xFEDF0000,               LENGTH = 64 * 1k

   gRAM                     : ORIGIN = 0xFEE88000                  LENGTH = 928 * 1k
   gRAM_END                 : ORIGIN = 0xFEF77FFF,                   LENGTH = 0
   hsmRAM                   : ORIGIN = 0xFEF70000,          LENGTH = 32 * 1k
}


SECTIONS
 {
  #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  #
  #
  #
  #
  #
  #
  #
  #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



   #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** Code Flash Area (Bank A) ****************************************************
   #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** ESB ********************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .ROM_START                                                                                                                : >ESB_Rom
   .ESB MIN_SIZE(addr(.STD_MEM_BLOCK_END_ESB)-addr(ESB_Rom))                                                                 : >.
   .ESB_LOCK_KEY 0x00000050                                                                                        : >.
   .ESB_CONFIG_DATA  0x00000FC0                                                                                 : >.
   .STD_MEM_BLOCK_END_ESB (endaddr(ESB_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x00001FFB != (endaddr(ESB_Rom)-std_header_crc_size-1)) 
|| (0x00001FFC != (endaddr(ESB_Rom)-std_header_crc_size))) 
? error("Conflicting address of ESB_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}          >.
   .ESB_END (0x00001FFF+1) :{final(((0x00001FFF+1) != (endaddr(ESB_Rom))) 
? error("Conflicting address of ESB_END_ADDR defined in file sections.mak!"):0);}                                        >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** NV SHARE ***************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .NV_SHARE MIN_SIZE(addr(.STD_MEM_BLOCK_END_NVSHARE)-addr(NvShare_Rom))                                                    : >NvShare_Rom
   .STD_MEM_BLOCK_END_NVSHARE  (endaddr(NvShare_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x00003FFB != (endaddr(NvShare_Rom)-std_header_crc_size-1)) 
|| (0x00003FFC != (endaddr(NvShare_Rom)-std_header_crc_size))) 
? error("Conflicting of NVSHARE_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}              >.
   .NV_SHARE_END (0x00003FFF+1) : {final(((0x00003FFF+1) != (endaddr(NvShare_Rom))) 
? error("Conflicting address of NVSHARE_END_ADDR defined in file sections.mak!"):0);}                                    >.

   # **** FOC Work *************************************
   .TUN_ROM_FOC_START                  : >Foc_Work_Rom
      .CALIBDAT_FOC_FLAS_START align(4) : >. /* this symbol is used by CalibDataHandler */
         .DATA_FOC_WORK           align(4) : >.
         .DAMOS_FOC_ROSDATA       align(4) : >.
         .CALIBDAT_FOC_FLAS_CRC   align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_FOC_FLAS_DAT_END (addr(.CALIBDAT_FOC_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_FOC_FLAS_END (endaddr(.CALIBDAT_FOC_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .FREE_FOC_WORK_ROM       align(4) MIN_SIZE(addr(.TUN_ROM_FOC_END)-addr(.FREE_FOC_WORK_ROM)) : >.
   .TUN_ROM_FOC_END (endaddr(Foc_Work_Rom)-1) : >.

   # **** SYSTEM DATA **********************************
   .TUN_ROM_SYSTEM_START          align(4) : >System_Work_Rom
      .CALIBDAT_SYSTEM_FLAS_START align(4) : >. /* this symbol is used by CalibDataHandler */
         .DAMOS_SYSTEM_ROSDATA       align(4) : >.
         .CALIBDAT_SYSTEM_FLAS_CRC   align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_FLAS_DAT_END (addr(.CALIBDAT_SYSTEM_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_SYSTEM_FLAS_END   (endaddr(.CALIBDAT_SYSTEM_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .FREE_SYSTEM_WORK_ROM       align(4) MIN_SIZE(addr(.TUN_ROM_SYSTEM_END)-addr(.FREE_SYSTEM_WORK_ROM)) : >.
   .TUN_ROM_SYSTEM_END (endaddr(System_Work_Rom)-1) : >.

   # **** TUNING DATA **********************************
   .TUN_ROM_TUNING_START          align(4) : >Tuning_Work_Rom
      .CALIBDAT_TUNING_FLAS_START align(4) : >. /* this symbol is used by CalibDataHandler */
         .DAMOS_TUNING_ROSDATA       align(4) : >.
         .CALIBDAT_TUNING_FLAS_CRC   align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_TUNING_FLAS_DAT_END (addr(.CALIBDAT_TUNING_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_TUNING_FLAS_END   (endaddr(.CALIBDAT_TUNING_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .FREE_TUNING_WORK_ROM       align(4) MIN_SIZE(addr(.TUN_ROM_TUNING_END)-addr(.FREE_TUNING_WORK_ROM)): >.
   .TUN_ROM_TUNING_END (endaddr(Tuning_Work_Rom)-1) : >.

   # **** OEM Work *************************************
   .TUN_ROM_OEM_WORK_START     align(4) : >OEM_Work_Rom
      .CALIBDAT_OEM_FLAS_START align(4) : >. /* this symbol is used by CalibDataHandler */

         .TUN_ROM_OEM_LIB_DATA    align(4)  ROM(.TUN_RAM_OEM_LIB_DATA)                           : >.
         .DAMOS_OEM_ROSDATA       align(4) : >.
         .CALIBDAT_OEM_FLAS_CRC   align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_OEM_FLAS_DAT_END (addr(.CALIBDAT_OEM_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_OEM_FLAS_END (endaddr(.CALIBDAT_OEM_FLAS_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .FREE_OEM_WORK         align(4) MIN_SIZE(addr(.TUN_ROM_OEM_WORK_END)-addr(.FREE_OEM_WORK)) : >.
   .TUN_ROM_OEM_WORK_END (endaddr(OEM_Work_Rom)-1) : >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** BOOT MANAGER ***********************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .BOOTMANAGER_START                                                                                        : >Bootmanager_Rom
    .BOOTMANAGER_DUMMY_BLK_1 MIN_SIZE(addr(.BOOTMANAGER_STD_HDR)-addr(.BOOTMANAGER_DUMMY_BLK_1))             : >.
    .BOOTMANAGER_STD_HDR 0x00017F70 MIN_SIZE(addr(.STD_MEM_BLOCK_END_BOOTMANAGER)-addr(.BOOTMANAGER_STD_HDR)) : >.
    .STD_MEM_BLOCK_END_BOOTMANAGER (endaddr(Bootmanager_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x00017FFB != (endaddr(Bootmanager_Rom)-std_header_crc_size-1)) 
|| (0x00017FFC != (endaddr(Bootmanager_Rom)-std_header_crc_size))) 
? error("Conflicting address of BOOTMANAGER_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}  >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** BOOTLOADER *************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .BOOT_START                                                                                                : >Boot_Rom
    .BOOTLOADER_DUMMY_BLK_1 MIN_SIZE(addr(.BOOTLOADER_STD_HDR)-addr(.BOOTLOADER_DUMMY_BLK_1))                 : >.
    .BOOTLOADER_STD_HDR 0x00047F70 MIN_SIZE(addr(.STD_MEM_BLOCK_END_BOOTLOADER)-addr(.BOOTLOADER_STD_HDR)) : >.
    .STD_MEM_BLOCK_END_BOOTLOADER (endaddr(Boot_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x00047FFB != (endaddr(Boot_Rom)-std_header_crc_size-1)) 
|| (0x00047FFC != (endaddr(Boot_Rom)-std_header_crc_size))) 
? error("Conflicting address of BOOTLOADER_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}  >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** DRIVE A SOFTWARE********************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .DRIVE_START               align(4)                                                                                       : >Drive_Rom /* logical memory area START */
   .CALPAGE_DRIVE_CODE_BANK_A_START : >. /* used in routine 0x029A for CRC recalculation  */
      .excpnvect     align(0x200) : >.
   .intvect                                                                                                                  : >. /* start of interrupt vector */
   .Os_intvect         0x00048610                                                                          : >. /* OS interrupt vector */
   .Os_EI_vect                                                                                                               : >.

   .DRIVE_STANDARD_HEADER  0x00049400 align(4)                                                            : >.
   .DRIVE_STANDARD_HEADER_OEM_SPEC                       align(4)                                                            : >.


   # +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   # Init values in the ROM for the initialized variables
   # RAM must have same layout for correct initialization!!!
   .init_begin_ROM                          align(16)                                                                        : >.
   .ROM.DAMOS_RAM_DATA                      align(4) ROM(.DAMOS_RAM_DATA)                                                    : >.
   .ROM.DAMOS_IN_RED                        align(4) ROM(.DAMOS_IN_RED)                                                      : >.
   .ROM.DAMOS_SHARED_IN_RED                 align(4) ROM(.DAMOS_SHARED_IN_RED)                                               : >.
   .ROM.data                                align(4) ROM(.data)                                                              : >.
   .ROM.tdata                               align(4) ROM(.tdata)                                                             : >.
   .ROM.DAMOS_RAM_ERRSTIM                   align(4) ROM(.DAMOS_RAM_ERRSTIM)                                                 : >.
   .ROM.RAM_1BIT                            align(4) ROM(.RAM_1BIT)                                                          : >.
   .ROM.sdata                               align(4) ROM(.sdata)                                                             : >.
   .ROM.VAR_INIT_8_sdata                    align(4) ROM(.VAR_INIT_8_sdata)                                                 :>.
   .ROM.VAR_INIT_16_sdata                   align(4) ROM(.VAR_INIT_16_sdata)                                                :>.
   .ROM.VAR_INIT_32_sdata                   align(4) ROM(.VAR_INIT_32_sdata)                                                :>.
   .ROM.VAR_INIT_UNSPECIFIED_sdata          align(4) ROM(.VAR_INIT_UNSPECIFIED_sdata)                                        :>.
   .ROM.CPR_ERRSTIM_sdata                   align(4) ROM_NOCOPY(.CPR_ERRSTIM_sdata)                                          : >.
   .ROM.SDK_CANTERM_sdata                   align(4) ROM(.SDK_CANTERM_sdata)                                                 : >.
   .ROM.ECUMODE_VAR_INIT_sdata              align(4) ROM(.ECUMODE_VAR_INIT_sdata)                                           :>.
   .ROM.DAMOS_RAM_DATAS                     align(4) ROM(.DAMOS_RAM_DATAS)                                                   : >.
   .ROM.DAMOS_SHARED_RAM_DATAS              align(4) ROM(.DAMOS_SHARED_RAM_DATAS)                                            : >.
   .ROM.HWL_ASIL_sdata                      align(4) ROM(.HWL_ASIL_sdata)                                                    : >.
   .ROM.HWL_QM_sdata                        align(4) ROM(.HWL_QM_sdata)                                                      : >.
   .ROM.HWL_ASIL_loc_sdata                  align(4) ROM(.HWL_ASIL_loc_sdata)                                                : >.
   .ROM.HWL_QM_loc_sdata                    align(4) ROM(.HWL_QM_loc_sdata)                                                  : >.
   .ROM.HWL_ASIL_glob_sdata                 align(4) ROM(.HWL_ASIL_glob_sdata)                                               : >.
   .ROM.HWL_QM_glob_sdata                   align(4) ROM(.HWL_QM_glob_sdata)                                                 : >.
   .ROM.HWL_ASIL_RED_sdata                  align(4) ROM(.HWL_ASIL_RED_sdata)                                                : >.
   .ROM.HWL_FAINT_sdata                     align(4) ROM(.HWL_FAINT_sdata)                                                  :>.

   .ROM.NVS_DATASAFE                        align(4) ROM(.NVS_DATASAFE)                                                      : >.

   .ROM.DTS_DATA                            align(0x1000) ROM(.DTS_DATA)                                                     : >.
   .init_end_ROM                                                                                                             : >.
   # +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

   # Drive program code
   .RTAOS_TEXT_START                                                                                                         : >.
   .Os_text     align(0x200)                                                                                                 : { "*RTAOS.a*(.text)" } >.
   .Os_primitives                                                                                                            : >. /* OS */
   .RTAOS_TEXT_END                                                                                                           : >.
   .text     align(4)                                                                                                        : >.


   # ----- START BasicSoftware -----
   .ROM.BSW_VAR_INIT_sdata      align(4) ROM(.BSW_VAR_INIT_sdata)                                                           : >.
   .BSW_CODE_text               align(4)                                                                                    : >.
   .BSW_CODE_rosdata            align(4)                                                                                    : >.
   .BSW_CONST_rosdata           align(4)                                                                                    : >.
   .BSW_CONFIG_DATA_rosdata     align(4)                                                                                    : >.

   .ROM.FLS_CONST_rodata          align(4) ROM(.FLS_CONST_rodata)                                                           : >.
   .ROM.FLS_CODE_text          align(4) ROM(.FLS_CODE_text)                                                                 : >.
   .ROM.FLS_CODE_rosdata        align(4) ROM(.FLS_CODE_rosdata)                                                             : >.
   # ----- END BasicSoftware -----

   # Rte program code
   .RTE_CODE_text   align(4)                                                                                                : >.

   # SWC program code
   .WipingController_CODE_text                                                                                              : >.
   .BootFlashHandler_CODE_text                                                                                              : >.

   # **** ProductionServices_L_Adapter *************************************
   .ProductionServices_L_Adapter_CODE_text                 align(4)                                                         : >.
   .ProductionServices_L_Adapter_CODE_rosdata              align(4)                                                         : >.

     # **** XCP User Cmd *************************************
    .XCPUSERCMD_CALIB_8_rosdata                                                                                             : >.

   # **** NetworkLifeCycleCoordinator *************************************
   .NetworkLifeCycleCoordinatorSupp_CODE_text                                                                               : >.
   .NetworkLifeCycleCoordinator_CODE_text                                                                                   : >.
   .NetworkLifeCycleCoordinatorSupp_CODE_rosdata                                                                            : >.

   # **** CryptoServices *************************************
   .CryptoServices_CODE_text                                                                                                : >.
   .CryptoServices_CODE_rosdata                                                                                             : >.
   .ROM.CryptoServices_HSMSHARED_VAR_INIT_sdata        align(4) ROM(.CryptoServices_HSMSHARED_VAR_INIT_sdata)               : >.

     # **** ComVarHdlr *************************************
    .ComVarHdlr_CODE_text                               align(4)                                                        : >.
    .ComVarHdlr_CODE_rosdata                            align(4)                                                        : >.

   # **** Diagnostics *************************************
   .DiagnosticAbstraction_CODE_text                                                                                         : >.
   .DiagnosticAbstraction_CODE_rosdata                                                                                      : >.

   .DiagA_CODE_text       : >.
   .DiagA_CONST_UNSPECIFIED_rosdata       : >.
   .NvA_CODE_text      : >.
   .IvdSfdA_CODE_text      : >.
   .ShA_CODE_text      : >.
   .SfdA_CODE_text      : >.
   .SfdA_CONST_UNSPECIFIED_rosdata      : >.
   .SfdA_CONST_8_rosdata  : >.
   .SfdA_CODE_rosdata      : >.

   .DiagA_CODE_rosdata      : >.
   .EndStopSupp_CODE_text      : >.

     # **** DemComplexDeviceDriver *************************************
    .DemComplexDeviceDriver_CODE_text                       align(4)                                                        : >.
     # **** FLASHHANDLER *************************************
    .FLASHHANDLER_CODE_text                                 align(4)                                                        : >.
    .ROM.FLASHHANDLER_DRV_CODE_text                         align(4) ROM(.FLASHHANDLER_DRV_CODE_text)                       : >.
    .FLASHHANDLER_CODE_rosdata                              align(4)                                                        : >.
    .ROM.FLASHHANDLER_DRV_CODE_rosdata                      align(4) ROM(.FLASHHANDLER_DRV_CODE_rosdata)                    : >.


   .fixaddr  align(4)                                                                                                        : >. /* ghs internal (compiler) */
   .fixtype  align(4)                                                                                                        : >. /* ghs internal (compiler) */
   .syscall  align(4)                                                                                                        : >. /* ghs internal (linker) */


   .CPR_ERRSTIM_text     MIN_SIZE(0x2FFF) MAX_SIZE(0x2FFF) align(4)                                                          : >.

   # T1 runtime measurement

   # GreenHills section info table for initializing vars using ROM() command.
   .secinfo                                 align(4)                                                                         : >.


   # CUBAS Flash Access Library for Renesas P1x-C devices
   .rom_R_FAL_CODE_USR ROM(.R_FAL_CODE_USR)                                                                                  : >. /* constant data to initialize variables in R_FAL_CODE_USR area (copied to RAM at startup)*/
   .rom_R_FAL_CODE_RAM ROM(.R_FAL_CODE_RAM)                                                                                  : >. /* constant data to initialize variables in R_FAL_CODE_RAM area (copied to RAM at startup)*/
   .rom_R_FAL_CODE_RAM_EX_PROT ROM(.R_FAL_CODE_RAM_EX_PROT)                                                                  : >. /* constant data to initialize variables in R_FAL_CODE_RAM_EX_PROT area (copOM */
   .R_FAL_CODE_ROM       align(4)                                                                                            : >. /* FAL code in ROM */
   .R_FAL_CONST          align(4)                                                                                            : >. /* FAL constants in ROM */

   .CONST_8_rosdata                                                                                                         : >.
   .CONST_16_rosdata                                                                                                        : >.
   .CONST_32_rosdata                                                                                                        : >.
   .CONST_64_rosdata                                                                                                        : >.
   .CONST_UNSPECIFIED_rosdata                                                                                               : >.


   # Drive const (incl. DAMOS Vector-Array of tuning data)
   .rodata   align(4)                                                                                                        : >.
   .rozdata                                                                                                                  : >.
   .rosdata  align(4)                                                                                                        : >.




   .rosda_start                                                                                                              : >.
   .HWL_ASIL_rosdata           align(4)                                                                                      : >.
   .HWL_QM_rosdata             align(4)                                                                                      : >.
   .rosda_end                                                                                                                : >.

   # HW-Lib program code
   .HWL_ASIL_text     align(4)                                                                                               : >.
   .HWL_QM_text       align(4)                                                                                               : >.


   .HWL_FAINT_text       MIN_SIZE(0x6100) MAX_SIZE(0x6100) align(16)                                                         : >.



   .SDK_CANTERM_ROSDATA        align(4) MIN_SIZE(0x43e4) MAX_SIZE(0x43e4)                                                    : >.

   # init values for global variables stored in .zdata and .sldata
   .romzdata      ROM(.zdata)                                                                                                : >. # Sections defined in HW-Lib
   .romsldata     ROM(.sldata)                                                                                               : >. /* constant data to initialize variables in LSDA area (copied to GRAM at startup)*/
   .romhsm_shared      ROM(.hsm_shared)                                                                                      : >.
   .romhsm_shared_data ROM(.hsm_shared.data)                                                                                 : >. /* constant data to initialize variables in HSM area (copied to GRAM at startup)*/
   .romhsm_shared_ro_data ROM(.hsm_shared_ro.data)                                                                           : >.



    .AZGSecurityAccess_CODE_text                            align(4)                                                        : >.
     # **** BootFlashHandler *************************************
    .BootFlashHandler_WipeOut_CODE_text                     align(4)                                                        : >.
     # **** AzgUdsAdapter *************************************
    .AzgUdsAdapter_CODE_text                                align(4)                                                        : >.
    .AzgUdsAdapter_CODE_rosdata                             align(4)                                                        : >.
    .ROM.AzgUdsAdapter_INTERNAL_VAR_INIT_sdata              align(4) ROM(.AzgUdsAdapter_INTERNAL_VAR_INIT_sdata)            : >.
     # **** ProductionUDS *************************************
    .ProductionUDS_CODE_text                                align(4)                                                        : >.
    .ProductionUDS_CODE_rosdata                             align(4)                                                        : >.
    .ProductionUDS_CONST_rosdata                            align(4)                                                        : >.
    .ROM.ProductionUDS_INTERNAL_VAR_INIT_sdata              align(4) ROM(.ProductionUDS_INTERNAL_VAR_INIT_sdata)            : >.
     # **** AZGCaller *************************************
    .AZGCaller_CODE_text                                    align(4)                                                        : >.
     # **** AZG *************************************
    .AZG_CODE_text                                          align(4)                                                        : >.
    .AZG_CODE_rosdata                                       align(4)                                                        : >.
    .ROM.AZG_INTERNAL_VAR_INIT_sdata                        align(4) ROM(.AZG_INTERNAL_VAR_INIT_sdata)                      : >.
    # **** CANTERM *************************************
    .SDK_CANTERM_text     MIN_SIZE(0x27FF) MAX_SIZE(0x27FF) align(4)                                                        : >.

      .DAMOS_FOC_ROSDATA_VEC            align(4) : >.
      .DAMOS_SYSTEM_ROSDATA_VEC         align(4) : >.
      .DAMOS_TUNING_ROSDATA_VEC         align(4) : >.
      .DAMOS_OEM_ROSDATA_VEC            align(4) : >.
      .DAMOS_SAFEDRIVE_ROSDATA_VEC      align(4) : >.
      .DAMOS_SAFESYSTEM_ROSDATA_VEC     align(4) : >.
      .DAMOS_HWLIB_ROSDATA_VEC          align(4) : >.


      # **** FOC Dataset *************************************
      .CALIBDAT_FOC_SETS_START (.+1)  align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_FOC_INIT_1_START align(4) : >. /* this symbol is used by CalibDataHandler */
            .CALIBDAT_FOC_INIT_1_DATA_FOC_WORK     align(4) MIN_SIZE(sizeof(.DATA_FOC_WORK)) : >.
            .CALIBDAT_FOC_INIT_1_DAMOS_FOC_ROSDATA align(4) MIN_SIZE(sizeof(.DAMOS_FOC_ROSDATA)) : >.
            .CALIBDAT_FOC_INIT_1_CRC               align(4) MIN_SIZE(sizeof(.CALIBDAT_FOC_FLAS_CRC)) : >.
         .CALIBDAT_FOC_INIT_1_END (endaddr(.CALIBDAT_FOC_INIT_1_CRC)-1) : {final((addr(.CALIBDAT_FOC_FLAS_END)-addr(.CALIBDAT_FOC_FLAS_START))!=(addr(.CALIBDAT_FOC_INIT_1_END)-addr(.CALIBDAT_FOC_INIT_1_START)) ? error("Size of area CALIBDAT_FOC_INIT unequal CALIBDAT_FOC_DEFA"):0);} >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_FOC_INIT_2_START align(4) MIN_SIZE(addr(.CALIBDAT_FOC_INIT_1_END)-addr(.CALIBDAT_FOC_INIT_1_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_FOC_INIT_2_END (endaddr(.CALIBDAT_FOC_INIT_2_START)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_FOC_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */

      # **** HWLib Dataset *************************************
      .CALIBDAT_HWLIB_SETS_START align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_HWLIB_INIT_START align(4) : >. /* this symbol is used by CalibDataHandler */
            .HWL_ASIL_rosdata_REF      align(4) : >.
            .HWL_QM_rosdata_REF        align(4) : >.
            .HWL_FAINT_rosdata         align(4) MIN_SIZE(0xFF) MIN_SIZE(0xFF) : >.
            .CALIBDAT_HWLIB_INIT_CRC   align(4) : >.
            .CALIBDAT_HWLIB_INIT_DAT_END (addr(.CALIBDAT_HWLIB_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_HWLIB_INIT_END (endaddr(.CALIBDAT_HWLIB_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_HWLIB_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */


      .CALPAGE_DRIVE_CODE_BANK_A_END             : >. /* used in routine 0x029A for CRC recalculation  */
   .FREE_DRIVE_ROM              MIN_SIZE(addr(.STD_MEM_BLOCK_END_DRIVE_A)-addr(.FREE_DRIVE_ROM))                                  : >.


   .STD_MEM_BLOCK_END_DRIVE_A (endaddr(Drive_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x001FFFFB != (endaddr(Drive_Rom)-std_header_crc_size-1)) 
|| (0x001FFFFC != (endaddr(Drive_Rom)-std_header_crc_size))) 
? error("Conflicting address of DRIVE_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}        >.




   .DRIVE_A_END                 align(4)                                                                                       : >. /* logical memory area END */


   #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** Code Flash Area (Bank B) ****************************************************
   #+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** Drive B *************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .DRIVE_B_START                                                                                                            : >DriveB_Rom
      .CALPAGE_DRIVE_CODE_BANK_B_START : >. /* used in routine 0x029A for CRC recalculation  */
      .DRIVE2_STANDARD_HEADER : >. /* used in VarId file to store compatibility index */

      # **** System Dataset *************************************
      .CALIBDAT_SYSTEM_SETS_START       align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_1_START     align(4) : >. /* this symbol is used by CalibDataHandler */
            .CALIBDAT_SYSTEM_INIT_DAMOS_SYSTEM_ROSDATA     align(4) MIN_SIZE(sizeof(.DAMOS_SYSTEM_ROSDATA)) : >.
            .CALIBDAT_SYSTEM_INIT_1_CRC                      align(4) MIN_SIZE(sizeof(.CALIBDAT_SYSTEM_FLAS_CRC)) : >.
         .CALIBDAT_SYSTEM_INIT_1_END (endaddr(.CALIBDAT_SYSTEM_INIT_1_CRC)-1) : {final((addr(.CALIBDAT_SYSTEM_FLAS_END)-addr(.CALIBDAT_SYSTEM_FLAS_START))!=(addr(.CALIBDAT_SYSTEM_INIT_1_END)-addr(.CALIBDAT_SYSTEM_INIT_1_START)) ? error("Size of area CALIBDAT_SYSTEM_INIT unequal CALIBDAT_SYSTEM_DEFA"):0);} >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_2_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_1_END)-addr(.CALIBDAT_SYSTEM_INIT_1_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_2_END (endaddr(.CALIBDAT_SYSTEM_INIT_2_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_3_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_2_END)-addr(.CALIBDAT_SYSTEM_INIT_2_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_3_END (endaddr(.CALIBDAT_SYSTEM_INIT_3_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_4_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_3_END)-addr(.CALIBDAT_SYSTEM_INIT_3_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_4_END (endaddr(.CALIBDAT_SYSTEM_INIT_4_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_5_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_4_END)-addr(.CALIBDAT_SYSTEM_INIT_4_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_5_END (endaddr(.CALIBDAT_SYSTEM_INIT_5_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_6_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_5_END)-addr(.CALIBDAT_SYSTEM_INIT_5_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_6_END (endaddr(.CALIBDAT_SYSTEM_INIT_6_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_7_START     align(4) MIN_SIZE(addr(.CALIBDAT_SYSTEM_INIT_6_END)-addr(.CALIBDAT_SYSTEM_INIT_6_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SYSTEM_INIT_7_END (endaddr(.CALIBDAT_SYSTEM_INIT_7_START)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_SYSTEM_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */

      # **** Tuning dataset *************************************
      .CALIBDAT_TUNING_SETS_START      align(4)                      : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_TUNING_INIT_START      align(4)                      : >. /* this symbol is used by CalibDataHandler */
            .CALIBDAT_TUNING_INIT_DAMOS_TUNING_ROSDATA    align(4) MIN_SIZE(sizeof(.DAMOS_TUNING_ROSDATA))    : >.
            .CALIBDAT_TUNING_INIT_CRC                     align(4) MIN_SIZE(sizeof(.CALIBDAT_TUNING_FLAS_CRC))  : >.
         .CALIBDAT_TUNING_INIT_END        (endaddr(.CALIBDAT_TUNING_INIT_CRC)-1) : {final((addr(.CALIBDAT_TUNING_FLAS_END)-addr(.CALIBDAT_TUNING_FLAS_START))!=(addr(.CALIBDAT_TUNING_INIT_END)-addr(.CALIBDAT_TUNING_INIT_START)) ? error("Size of area CALIBDAT_TUNING_INIT unequal CALIBDAT_TUNING_DEFA"):0);} >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_TUNING_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */

      # **** SafeDrive Dataset *************************************
      .CALIBDAT_SAFEDRIVE_SETS_START align(4) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFEDRIVE_INIT_START align(4) : >. /* this symbol is used by CalibDataHandler */
            .DAMOS_SAFEDRIVE_ROSDATA       align(4) : >.
            .CALIBDAT_SAFEDRIVE_INIT_CRC   align(4) : >.
            .CALIBDAT_SAFEDRIVE_INIT_DAT_END (addr(.CALIBDAT_SAFEDRIVE_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFEDRIVE_INIT_END (endaddr(.CALIBDAT_SAFEDRIVE_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_SAFEDRIVE_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */

      # **** SafeSystem Dataset *************************************
      .CALIBDAT_SAFESYSTEM_SETS_START   align(8) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_1_START align(4) : >. /* this symbol is used by CalibDataHandler */
            .DAMOS_SAFESYSTEM_ROSDATA         align(4) : >.
            .CALIBDAT_SAFESYSTEM_INIT_CRC     align(4) : >.
            .CALIBDAT_SAFESYSTEM_INIT_DAT_END (addr(.CALIBDAT_SAFESYSTEM_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_1_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_CRC)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_2_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_1_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_1_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_2_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_2_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_3_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_2_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_2_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_3_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_3_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_4_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_3_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_3_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_4_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_4_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_5_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_4_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_4_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_5_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_5_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_6_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_5_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_5_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_6_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_6_START)-1) : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_7_START align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_INIT_6_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_6_START)+1): >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_SAFESYSTEM_INIT_7_END (endaddr(.CALIBDAT_SAFESYSTEM_INIT_7_START)-1) : >. /* this symbol is used by CalibDataHandler */
     .CALIBDAT_SAFESYSTEM_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */


   .FREE_DRIVE_B_ROM MIN_SIZE(addr(.STD_MEM_BLOCK_END_DRIVE_B)-addr(.FREE_DRIVE_B_ROM))                                      : >.

   .STD_MEM_BLOCK_END_DRIVE_B (endaddr(DriveB_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x00987FFB != (endaddr(DriveB_Rom)-std_header_crc_size-1)) 
|| (0x00987FFC != (endaddr(DriveB_Rom)-std_header_crc_size))) 
? error("Conflicting address of DRIVE_B_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}     >.
      .CALPAGE_DRIVE_CODE_BANK_B_END (endaddr(DriveB_Rom)-1) : >. /* used in routine 0x029A for CRC recalculation  */
   .DRIVE_B_END (endaddr(DriveB_Rom)-1) : >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** Oem *************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .OEM_START                                                                                                           : >OEM_Rom
      .CALPAGE_OEM_CODE_START : >. /* used in routine 0x029A for CRC recalculation  */
      .OEM_SW_STANDARD_HEADER : >. /* used in VarId file to store compatibility index */
      # **** OEM dataset - fixed size during Bobe build *************************************
      .CALIBDAT_OEM_SETS_START         align(4)                      : >. /* this symbol is used by CalibDataHandler */
         .CALIBDAT_OEM_INIT_START         align(4)                      : >. /* this symbol is used by CalibDataHandler */
            .CALIBDAT_OEM_INIT_TUN_ROM_OEM_LIB_DATA       align(4) MIN_SIZE(sizeof(.TUN_ROM_OEM_LIB_DATA))  : >.
            .CALIBDAT_OEM_INIT_DAMOS_OEM_ROSDATA       align(4) MIN_SIZE(sizeof(.DAMOS_OEM_ROSDATA))        : >.
            .CALIBDAT_OEM_INIT_CRC                     align(4) MIN_SIZE(sizeof(.CALIBDAT_OEM_FLAS_CRC))    : >.
         .CALIBDAT_OEM_INIT_END           (endaddr(.CALIBDAT_OEM_INIT_CRC)-1) : {final((addr(.CALIBDAT_OEM_FLAS_END)-addr(.CALIBDAT_OEM_FLAS_START))!=(addr(.CALIBDAT_OEM_INIT_END)-addr(.CALIBDAT_OEM_INIT_START)) ? error("Size of area CALIBDAT_OEM_INIT unequal CALIBDAT_OEM_DEFA"):0);} >. /* this symbol is used by CalibDataHandler */
      .CALIBDAT_OEM_SETS_END align(4) : >. /* this symbol is used by CalibDataHandler */


      .OEM_TEXT                                                                 :{MQB37W_ASC_SAC.a(*)(.text)} >.
      .DSFxp_TEXT                                                               :{"*DSFxp.lib*(.text)"}       >.


      .ROM.OEM_RAM_data            align(4) ROM(.OEM_RAM_data)                                              : >.
      .ROM.OEM1_RAM_data           align(4) ROM(.OEM1_RAM_data)                                             : >.
      .ROM.OEM2_RAM_data           align(4) ROM(.OEM2_RAM_data)                                             : >.

      .FREE_OEM_SW MIN_SIZE         (addr(.STD_MEM_BLOCK_END_OEM)-addr(.FREE_OEM_SW)) : >.
   .STD_MEM_BLOCK_END_OEM (endaddr(OEM_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x009CFFFB != (endaddr(OEM_Rom)-std_header_crc_size-1)) 
|| (0x009CFFFC != (endaddr(OEM_Rom)-std_header_crc_size))) 
? error("Conflicting address of OEM_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}    >.
   .CALPAGE_OEM_CODE_END         (endaddr(OEM_Rom)-1) : >. /* used in routine 0x029A for CRC recalculation  */
   .OEM_END    0x009CFFFF                                                                                          : >.
   .DRIVE_END                    align(4) : >. /* Symbol for MPU --> end of executable text */

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** WipeOut ****************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .WIPE_OUT_START                                                                                                           : >WipeOut_Rom
    .FREE_WIPEOUT MIN_SIZE(addr(.STD_MEM_BLOCK_END_WIPEOUT)-addr(.FREE_WIPEOUT))                                            : >.
    .STD_MEM_BLOCK_END_WIPEOUT (endaddr(WipeOut_Rom)-std_header_size) MIN_SIZE(std_header_size): 
{final(((0x009D7FFB != (endaddr(WipeOut_Rom)-std_header_crc_size-1)) 
|| (0x009D7FFC != (endaddr(WipeOut_Rom)-std_header_crc_size))) 
? error("Conflicting address of WIPEOUT_STD_MEM_BLOCK_END_DAT_ADDR or CRC_ADDR defined in file sections.mak!"):0);}     >.
   .WIPE_OUT_END    0x009D7FFF                                                                                      : >.

   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   # ** HSM ****************************************
   #++++++++++++++++++++++++++++++++++++++++++++++++++++
   .HSM_START                                                                                                                : >HSM_Rom
     .HSM_STANDARD_HEADER    (MIN_SIZE(0x100)) : >.
   .HSM_END     0x009FFFFF                                                                                              : >.



#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#            LL          RRRRRRRR        AAA       MM     MM
#            LL          RR     RR      AA AA      MMM   MMM
#            LL          RR     RR     AA   AA     MMMM MMMM
#            LL          RRRRRRRR     AA     AA    MM MMM MM
#            LL          RR   RR      AAAAAAAAA    MM     MM
#            LL          RR    RR     AA     AA    MM     MM
#            LLLLLLLL    RR     RR    AA     AA    MM     MM
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    # ** Start of local RAM area processor entity 1 (core 1) (lRAM_PE1)  **************************************
    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    .LRAM_PE1_START                                                                                 : >lRAM_PE1
    .CALPAGE_LRAM1_START                                                                            : >. /* used in project A2L and Xcp_CalPage for start of LRAM1 */
    .sda_start          /* With 23bit whole LRAM and GRAM can be SDA */                             : >.
    .top_of_RAM    	align(4) NOCLEAR                                                                : >.
    .INT_RAM      	align(4) NOCLEAR                                                                : >.
    .neram_mem  	align(4) NOCLEAR /* is used in CUBAS startup code */                            : >.

    .stack            align(4) NOCLEAR pad(0x5C00)         /* definition of stack size */           : >lRAM_PE1_stack
    .stackbarrier     align(4) pad(4)                                                               : >.
    .abortstack       align(4) pad(0x3FC)          /* 1k - 4 Byte */                                : >.

    .LRAM_DATA_PE1_START                                                                            : >lRAM_PE1_data /* logical memory area START */

    # HwLib local data
   .HWL_ASIL_loc_sdata    align(4)                                                                 : >.
   .HWL_QM_loc_sdata      align(4)                                                                 : >.
    .HWL_ASIL_RED_sdata    align(4)                                                                 : >.
    .HWL_FAINT_sdata       align(4)                                                                 : >.

    .FREE_LRAM_DATA_PE1       MIN_SIZE((addr(.DTS_DATA)-1)-addr(.FREE_LRAM_DATA_PE1))               : >.

    # HW-Lib DMA stuff (RAM Portion)
    .DTS_DATA                   align(0x1000)                                                       : >lRAM_PE1_DTS
    .DTS_RESERVED_END           (endaddr(lRAM_PE1_DTS)-1)                                           : >.

    .CALPAGE_LRAM1_END                                                                              : >. /* used in project A2L and Xcp_CalPage for end of LRAM1 */
    .LRAM_DATA_PE1_END                                                                              : >. /* logical memory area END */



    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    # ** Start of local RAM area processor entity 2 (core 2) (lRAM_PE2)  **************************************
    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    .LRAM_PE2_START                                                                                 : >lRAM_PE2 /* logical memory area START */
    .CALPAGE_LRAM2_START                                                                            : >. /* used in project A2L and Xcp_CalPage for start of LRAM2 */

    .stack2           align(4) NOCLEAR pad(0x8000)         /* definition of stack size */           : >lRAM_PE2_stack
    .stackbarrier2    align(4) pad(4)                                                               : >.
    .abortstack2      align(4) pad(0x3FC)          /* 1k - 4 Byte */                                : >.

    .LRAM_DATA_PE2_START                                                                            : >lRAM_PE2_data

    .DAMOS_RAM_DATA    align(4)                                                                     : >.
    .DAMOS_RAM_DATAS   align(4)                                                                     : >.
    .DAMOS_IN_RED      align(4)                                                                     : >.

   #OEM blackbockbox local data
    .OEM_BLACKBOX1_START                  align(4)                                                  : >.
    .OEM1_RAM_sbss              align(4)         clear                                              : >.   /* e.g. RTE buffers for OemBb1 */
    .OEM1_RAM_bss               align(4)         clear      : {MQB37W_ASC_SAC.a(asc_swc.o)(.bss)}     >.   /* OEM Blackbox 1 */
    .BBAASCIN_INTERNAL_VAR_CLEARED_sbss   align(4)                                                  : >.
    .OEM1_RAM_data              align(4)                    : {MQB37W_ASC_SAC.a(asc_swc.o)(.data)}    >.
    .OEM_BLACKBOX2_START                  align(4)                                                  : >.
    .OEM_RAM_data               align(4)                    : {MQB37W_ASC_SAC.a(ZPC_eep.o)(.data)
                                                               MQB37W_ASC_SAC.a(ZPC_msm.o)(.data)}    >.
    .OEM_BLACKBOX1_END          align(4)                                                            : >.
    .BBASACIN_INTERNAL_VAR_CLEARED_sbss   align(4)                                                  : >.
    .OEM2_RAM_sbss              align(4)          clear                                             : >.   /* e.g. RTE buffers for OemBb2 */
    .OEM2_RAM_bss               align(4)          clear     : {MQB37W_ASC_SAC.a(sac_swc.o)(.bss)}     >.   /* OEM Blackbox 2 */
    .OEM2_RAM_data              align(4)                    : {MQB37W_ASC_SAC.a(sac_swc.o)(.data)}    >.
    .OEM_BLACKBOX2_END                    align(4)                                                  : >.

    .FREE_LRAM_DATA_PE2 MIN_SIZE(addr(.LRAM_DATA_PE2_END)-addr(.FREE_LRAM_DATA_PE2))                : >.
    .CALPAGE_LRAM2_END (endaddr(lRAM_PE2_data)-1)                                                   : >. /* used in project A2L and Xcp_CalPage for end of LRAM2 */
    .LRAM_DATA_PE2_END  (endaddr(lRAM_PE2_data)-1)                                                  : >. /* logical memory area END */




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#             GGGGGG     RRRRRRRR        AAA       MM     MM
#            GG    GG    RR     RR      AA AA      MMM   MMM
#            GG          RR     RR     AA   AA     MMMM MMMM
#            GG GGGGG    RRRRRRRR     AA     AA    MM MMM MM
#            GG    GG    RR   RR      AAAAAAAAA    MM     MM
#            GG    GG    RR    RR     AA     AA    MM     MM
#             GGGGGGG    RR     RR    AA     AA    MM     MM
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

   .GRAM_START           align(4)                                                               : >gRAM /* logical memory area START */


   #===================================================== area gRAM_XCP_BCK
   .GRAM_XCP_BCK_START  align(8) : >.
      .CALDATA_START       align(8) : >. /* this symbol is used by MPU */

      .CALIBDAT_FOC_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .DATA_FOC_WORK_BACKUP    align(4) MIN_SIZE(addr(.TUN_ROM_FOC_END) - addr(.TUN_ROM_FOC_START)) : >. /* Use min-size of Backup block. RAM is also used as flash buffer. */
      .CALIBDAT_FOC_BACK_END  : {final((addr(.TUN_ROM_FOC_END)-addr(.TUN_ROM_FOC_START))!=(addr(.CALIBDAT_FOC_BACK_END)-addr(.CALIBDAT_FOC_BACK_START)) ? error("Size of area CALIBDAT_FOC_WORK unequal CALIBDAT_FOC_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SYSTEM_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_SYSTEM_BACK        align(4) MIN_SIZE(addr(.TUN_ROM_SYSTEM_END) - addr(.TUN_ROM_SYSTEM_START)) : >. /* Use min-size of Backup block. RAM is also used as flash buffer. */
      .CALIBDAT_SYSTEM_BACK_END : {final((addr(.TUN_ROM_SYSTEM_END)-addr(.TUN_ROM_SYSTEM_START))!=(addr(.CALIBDAT_SYSTEM_BACK_END)-addr(.CALIBDAT_SYSTEM_BACK_START)) ? error("Size of area CALIBDAT_SYSTEM_WORK unequal CALIBDAT_SYSTEM_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_TUNING_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_TUNING_BACK        align(4) MIN_SIZE(addr(.TUN_ROM_TUNING_END) - addr(.TUN_ROM_TUNING_START)) : >. /* Use min-size of Backup block. RAM is also used as flash buffer. */
      .CALIBDAT_TUNING_BACK_END : {final((addr(.TUN_ROM_TUNING_END)-addr(.TUN_ROM_TUNING_START))!=(addr(.CALIBDAT_TUNING_BACK_END)-addr(.CALIBDAT_TUNING_BACK_START)) ? error("Size of area CALIBDAT_TUNING_WORK unequal CALIBDAT_TUNING_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_OEM_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_OEM_BACK        align(4) MIN_SIZE(addr(.TUN_ROM_OEM_WORK_END) - addr(.TUN_ROM_OEM_WORK_START)) : >. /* Use min-size of Backup block. RAM is also used as flash buffer. */
      .CALIBDAT_OEM_BACK_END : {final((addr(.TUN_ROM_OEM_WORK_END)-addr(.TUN_ROM_OEM_WORK_START))!=(addr(.CALIBDAT_OEM_BACK_END)-addr(.CALIBDAT_OEM_BACK_START)) ? error("Size of area CALIBDAT_OEM_WORK unequal CALIBDAT_OEM_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SAFEDRIVE_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_SAFEDRIVE_BACK        align(4) MIN_SIZE(addr(.CALIBDAT_SAFEDRIVE_WORK_END) - addr(.CALIBDAT_SAFEDRIVE_WORK_START)) : >.
      .CALIBDAT_SAFEDRIVE_BACK_END : {final((addr(.CALIBDAT_SAFEDRIVE_WORK_END)-addr(.CALIBDAT_SAFEDRIVE_WORK_START))!=(addr(.CALIBDAT_SAFEDRIVE_BACK_END)-addr(.CALIBDAT_SAFEDRIVE_BACK_START)) ? error("Size of area CALIBDAT_SAFEDRIVE_WORK unequal CALIBDAT_SAFEDRIVE_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SAFESYSTEM_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_SAFESYSTEM_BACK        align(4) MIN_SIZE(addr(.CALIBDAT_SAFESYSTEM_WORK_END) - addr(.CALIBDAT_SAFESYSTEM_WORK_START)) : >.
      .CALIBDAT_SAFESYSTEM_BACK_END : {final((addr(.CALIBDAT_SAFESYSTEM_WORK_END)-addr(.CALIBDAT_SAFESYSTEM_WORK_START))!=(addr(.CALIBDAT_SAFESYSTEM_BACK_END)-addr(.CALIBDAT_SAFESYSTEM_BACK_START)) ? error("Size of area CALIBDAT_SAFESYSTEM_WORK unequal CALIBDAT_SAFESYSTEM_BACK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_HWLIB_BACK_START align(8) : >. /* this symbol is used by CalibDataHandler */
      .TUN_RAM_HWLIB_BACKUP      align(4)     MIN_SIZE(sizeof(.TUN_RAM_HWLIB_WORK))      : >.
      .HWL_ASIL_rosdata_BACKUP   align(4)     MIN_SIZE(sizeof(.HWL_ASIL_rosdata_CPY))    : >.
      .HWL_QM_rosdata_BACKUP     align(4)     MIN_SIZE(sizeof(.HWL_QM_rosdata_CPY))      : >.
      .HWL_FAINT_rosdata_BACKUP  align(4)     MIN_SIZE(sizeof(.HWL_FAINT_rosdata_CPY))   : >.
      .CALIBDAT_HWLIB_BACK_CRC   align(4)     MIN_SIZE(sizeof(.CALIBDAT_HWLIB_INIT_CRC)) : >.
      .CALIBDAT_HWLIB_BACK_END (endaddr(.CALIBDAT_HWLIB_BACK_CRC)-1) : {final((addr(.CALIBDAT_HWLIB_WORK_END)-addr(.CALIBDAT_HWLIB_WORK_START))!=(addr(.CALIBDAT_HWLIB_BACK_END)-addr(.CALIBDAT_HWLIB_BACK_START)) ? error("Size of area CALIBDAT_HWLIB_WORK unequal CALIBDAT_HWLIB_BACK"):0);} >. /* this symbol is used by CalibDataHandler */
   .GRAM_XCP_BCK_END : >.

   #===================================================== area gRAM_XCP_Work
   .GRAM_XCP_WORK_START align(8) : >.
      .CALIBDAT_FOC_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .DATA_FOC_WORK_CPY       align(4) : >.
         .TUN_RAM_FOC_WORK        align(4) : >.
         .CALIBDAT_FOC_WORK_CRC   align(4) MIN_SIZE(sizeof(.CALIBDAT_FOC_INIT_1_CRC)) : >.
      .CALIBDAT_FOC_WORK_END   (endaddr(.CALIBDAT_FOC_WORK_CRC)-1) : {final((addr(.CALIBDAT_FOC_INIT_1_END)-addr(.CALIBDAT_FOC_INIT_1_START))!=(addr(.CALIBDAT_FOC_WORK_END)-addr(.CALIBDAT_FOC_WORK_START)) ? error("Size of area CALIBDAT_FOC_INIT unequal CALIBDAT_FOC_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SYSTEM_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_SYSTEM             align(4) : >.
         .CALIBDAT_SYSTEM_WORK_CRC align(4) MIN_SIZE(sizeof(.CALIBDAT_SYSTEM_INIT_1_CRC)) : >.
      .CALIBDAT_SYSTEM_WORK_END (endaddr(.CALIBDAT_SYSTEM_WORK_CRC)-1) : {final((addr(.CALIBDAT_SYSTEM_INIT_1_END)-addr(.CALIBDAT_SYSTEM_INIT_1_START))!=(addr(.CALIBDAT_SYSTEM_WORK_END)-addr(.CALIBDAT_SYSTEM_WORK_START)) ? error("Size of area CALIBDAT_SYSTEM_INIT unequal CALIBDAT_SYSTEM_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_TUNING_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_TUNING             align(4) : >.
         .CALIBDAT_TUNING_WORK_CRC   align(4) MIN_SIZE(sizeof(.CALIBDAT_TUNING_INIT_CRC)) : >.
      .CALIBDAT_TUNING_WORK_END   (endaddr(.CALIBDAT_TUNING_WORK_CRC)-1) : {final((addr(.CALIBDAT_TUNING_INIT_END)-addr(.CALIBDAT_TUNING_INIT_START))!=(addr(.CALIBDAT_TUNING_WORK_END)-addr(.CALIBDAT_TUNING_WORK_START)) ? error("Size of area CALIBDAT_TUNING_INIT unequal CALIBDAT_TUNING_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_OEM_WORK_START   align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_OEM_LIB_DATA   MIN_SIZE(0x00002800) MAX_SIZE(0x00002800): {MQB37W_ASC_SAC.a(*)(.rodata)}      >.                   /* this symbol will be used for copying in XCP driver */
         .TUN_RAM_OEM_WORK       align(4) : >.
         .TUN_RAM_OEM_CAL        align(4) : >.
         .CALIBDAT_OEM_WORK_CRC  align(4) MIN_SIZE(sizeof(.CALIBDAT_OEM_INIT_CRC)) : >.
      .CALIBDAT_OEM_WORK_END     (endaddr(.CALIBDAT_OEM_WORK_CRC)-1) : {final((addr(.CALIBDAT_OEM_INIT_END)-addr(.CALIBDAT_OEM_INIT_START))!=(addr(.CALIBDAT_OEM_WORK_END)-addr(.CALIBDAT_OEM_WORK_START)) ? error("Size of area CALIBDAT_OEM_INIT unequal CALIBDAT_OEM_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SAFEDRIVE_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_SAFEDRIVE_WORK        align(4) : >.
         .CALIBDAT_SAFEDRIVE_WORK_CRC   align(4) MIN_SIZE(sizeof(.CALIBDAT_SAFEDRIVE_INIT_CRC)) : >.
      .CALIBDAT_SAFEDRIVE_WORK_END (endaddr(.CALIBDAT_SAFEDRIVE_WORK_CRC)-1) : {final((addr(.CALIBDAT_SAFEDRIVE_INIT_END)-addr(.CALIBDAT_SAFEDRIVE_INIT_START))!=(addr(.CALIBDAT_SAFEDRIVE_WORK_END)-addr(.CALIBDAT_SAFEDRIVE_WORK_START)) ? error("Size of area CALIBDAT_SAFEDRIVE_INIT unequal CALIBDAT_SAFEDRIVE_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_SAFESYSTEM_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_SAFESYSTEM_WORK        align(4) : >.
         .CALIBDAT_SAFESYSTEM_WORK_CRC   align(4) MIN_SIZE(sizeof(.CALIBDAT_SAFESYSTEM_INIT_CRC)) : >.
      .CALIBDAT_SAFESYSTEM_WORK_END (endaddr(.CALIBDAT_SAFESYSTEM_WORK_CRC)-1) : {final((addr(.CALIBDAT_SAFESYSTEM_INIT_1_END)-addr(.CALIBDAT_SAFESYSTEM_INIT_1_START))!=(addr(.CALIBDAT_SAFESYSTEM_WORK_END)-addr(.CALIBDAT_SAFESYSTEM_WORK_START)) ? error("Size of area CALIBDAT_SAFESYSTEM_INIT unequal CALIBDAT_SAFESYSTEM_WORK"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALIBDAT_HWLIB_WORK_START align(8) : >. /* this symbol is used by CalibDataHandler */
         .TUN_RAM_HWLIB_WORK        align(4) : >.
         .HWL_ASIL_rosdata_CPY      align(4) MIN_SIZE(sizeof(.HWL_ASIL_rosdata_REF)) : >.
         .HWL_QM_rosdata_CPY        align(4) MIN_SIZE(sizeof(.HWL_QM_rosdata_REF))   : >.
         .HWL_FAINT_rosdata_CPY     align(4) MIN_SIZE(sizeof(.HWL_FAINT_rosdata))    : >.
         .CALIBDAT_HWLIB_WORK_CRC   align(4) MIN_SIZE(sizeof(.CALIBDAT_HWLIB_INIT_CRC))   : >.
      .CALIBDAT_HWLIB_WORK_END (endaddr(.CALIBDAT_HWLIB_WORK_CRC)-1) : {final((addr(.CALIBDAT_HWLIB_WORK_END)-addr(.CALIBDAT_HWLIB_WORK_START))!=(addr(.CALIBDAT_HWLIB_INIT_END)-addr(.CALIBDAT_HWLIB_INIT_START)) ? error("Size of area CALIBDAT_HWLIB_WORK unequal CALIBDAT_HWLIB_INIT"):0);} >. /* this symbol is used by CalibDataHandler */

      .CALDATA_END (endaddr(.CALIBDAT_HWLIB_WORK_CRC)) : >. /* this symbol is used for MPU configuration */
   .GRAM_XCP_WORK_END : >.
    #===================================================== Miscellaneous
    .GRAM_DATA_START           align(4)                                                                             : >. /* logical memory area START */
    .CALPAGE_GRAM_START : >. /* used in project A2L and Xcp_CalPage for start of GRAM */
    .slsync    min_size(4) /* user defined segment for semaphore data located in global RAM */                      : >.
    .sldata    align(4)    /* user defined segment for initialized data located in global RAM */                    : >.
    .slbss    align(4)    /* user defined segment for uninitialized data located in global RAM */                   : >.

	# RAM data area
    .DAMOS_SHARED_RAM_DATAS   align(4)                                                                              : >.
    .DAMOS_SHARED_IN_RED      align(4)                                                                              : >.
    .data              align(4)                                                                                     : >.
    .tdata             align(4)                                                                                     : >.
    .DAMOS_RAM_ERRSTIM MIN_SIZE(0x80) MAX_SIZE(0x80)  align(4)                                                      : >.
    .RAM_1BIT          align(4)                                                                                     : >.
    .sdata             align(4)                                                                                     : >.
    .VAR_INIT_8_sdata  align(4)                                                           : >.
    .VAR_INIT_16_sdata align(4)                                                           : >.
    .VAR_INIT_32_sdata align(4)                                                           : >.
    .VAR_INIT_UNSPECIFIED_sdata  align(4)                                                 : >.
    .ProductionUDS_INTERNAL_VAR_INIT_sdata                                                : >.
    .AzgUdsAdapter_INTERNAL_VAR_INIT_sdata                                                : >.
    .AZG_INTERNAL_VAR_INIT_sdata                                                          : >.



    .CPR_ERRSTIM_sdata MIN_SIZE(0x80) MAX_SIZE(0x80) align(8)                                                       : >.
    .SDK_CANTERM_sdata MIN_SIZE(0x1FF) MAX_SIZE(0x1FF) align(4)                                                     : >.

    .HWL_ASIL_sdata         align(4)                                                                                : >.
    .HWL_QM_sdata           align(4)                                                                                : >.
    .HWL_ASIL_glob_sdata    align(4)                                                                                : >.
    .HWL_QM_glob_sdata      align(4)                                                                                : >.



    .NVS_DATASAFE      align(4)                                                                                     : >.

    .sbss              align(4)                                                                                     : >.

   # ----- START BasicSoftware -----
     .BSW_VAR_INIT_sdata   align(4)                                                       : >.
     .BSW_VAR_CLEARED_sbss align(4)           CLEAR                                       : >.
   # ----- END BasicSoftware -----

    .VAR_CLEARED_BOOLEAN_sbss        CLEAR                                                : >.
    .VAR_CLEARED_8_sbss              CLEAR                                                : >.
    .VAR_CLEARED_16_sbss             CLEAR                                                : >.
    .VAR_CLEARED_32_sbss             CLEAR                                                : >.
    .VAR_CLEARED_64_sbss             CLEAR                                                : >.
    .VAR_CLEARED_UNSPECIFIED_sbss    CLEAR                                                : >.


    .SfdA_VAR_CLEARED_UNSPECIFIED_sbss      CLEAR                                        : >.
    .SfdA_VAR_CLEARED_8_sbss                CLEAR                                        : >.
    .SfdA_VAR_CLEARED_16_sbss               CLEAR                                        : >.
    .SfdA_VAR_CLEARED_BOOLEAN_sbss          CLEAR                                        : >.
    .SfdA_VAR_CLEARED_32_sbss               CLEAR                                        : >.
    .SfdA_VAR_INIT_8_sdata                  align(4)                                     : >.

    .ProductionUDS_INTERNAL_VAR_CLEARED_sbss    CLEAR                                     : >.

    .SDK_CANTERM_sbss  align(4) MIN_SIZE(0x32F) MAX_SIZE(0x32F)                                                     : >.
    .ECUMODE_VAR_INIT_sdata MIN_SIZE(0x2) MAX_SIZE(0x2) align(4)                          : >.
    # Data Section for FAL
    .R_FAL_DATA                                                                                                     : >. /* FAL data */


    .bss              align(4)                                                                                      : >.
    .CPR_ERRSTIM_bss  align(4)                                                                                      : >.
    .zdata            align(4)                     /* initialized data in ZDA area*/                                : >.
    .zbss             align(4)                                                                                      : >.

    .GRAM_DATA_END             align(4)                                                                             : >. /* logical memory area END */

    #===================================================== Exchange Buffer PEI
    .EXCHANGE_RAM_PE1_START                                                                                         : >.
    .EXCHANGE_RAM_PE1_END                                                                                           : >.

    #===================================================== Exchange Buffer PEII
    .EXCHANGE_RAM_PE2_START                                                                                         : >.
    .EXCHANGE_RAM_PE2_END                                                                                           : >.



    #===================================================== gRAM_MultiUseBuffer
    .RAM_CODE_START          align(4)                                                                               : >. /* logical memory area START */
    .R_FAL_CODE_USR          align(4)                                                                               : >. /* User code located in RAM */
    .R_FAL_CODE_RAM          align(4)                                                                               : >. /* FAL code in RAM */
    .R_FAL_CODE_RAM_EX_PROT  pad(0x30) align(4)                                                                     : >. /* Blank section after FAL code to avoid pre-fetch ECC errors */
    .FLS_CODE_text           align(4)                                                                               : >.
    .FLS_CODE_rosdata        align(4)                                                                               : >.
    .FLS_CONST_rodata        align(4)                                                                               : >.
    .FLASHHANDLER_DRV_CODE_text                         align(4)                                                    : >.
    .FLASHHANDLER_DRV_CODE_rosdata                      align(4)                                                    : >.
    .RAM_CODE_END              align(4)                                                                             : >. /* logical memory area END */

    .GLOBAL_SHARED_START    align(4)                                                                                : >. /* logical memory area START */
    .SVM_SIC_BUFFER               align(4)                                                                          : >.
    .XCP_BSW_GLOBAL_VARIABLES     align(4)                                                                          : >.




   .FREE_GRAM MIN_SIZE((addr(.BootFlashHandler_BootMemCpyCmdStruct_INTERNAL_VAR_CLEARED_sbss)-1) - addr(.FREE_GRAM))             : >.
   .BOOT_INTERFACE_START  : >.
      .BootFlashHandler_BootMemCpyCmdStruct_INTERNAL_VAR_CLEARED_sbss  align(4) clear       0xFEF65EA0   : >. /* segement to be shared with bootloader;  needs to be defined in sections.mak depending on the interface address to Bootloader!*/
      .RAM_ROM_COPY            align(4) clear       MIN_SIZE(sizeof(ESB_Rom))               0xFEF65EF0      : >. /* is used for ESB and NVSHARE flashing by Bootlaoder;  needs to be defined in sections.mak depending on the interface address to Bootloader! */
      .btldr_reprogRequest 0xFEF67EF0 MIN_SIZE(btldr_reprogRequest_size) MAX_SIZE(btldr_reprogRequest_size) NOCLEAR : >.
   .BOOT_INTERFACE_END : >.
    .sda_end                                                                                                        : >.
    .GLOBAL_SHARED_END                                                                                              : >. /* logical memory area END */

    .BURAM_START             align(4)                                                                               : >. /* logical memory area START */
    .ERR_INFO_BACKUP_RAM     NOCLEAR MIN_SIZE(0x3C)                                                                 : >.
    .BLDR_RESET_REASON                                                                                              : >.
    .BLDR_INTERNAL                                                                                                  : >.
    .MEM_CPY_BURAM                                                                                                  : >.
    .FAST_RESET_DATA                                                                                                : >.
    .FREE_BURAM  MIN_SIZE((endaddr(.BURAM_END)-1) - sizeof(.HWL_BACKUP_RAM) -addr(.FREE_BURAM))                     : >.
    .HWL_BACKUP_RAM          MIN_SIZE(0x100)                                                                        : >.
    .BURAM_END                (addr(hsmRAM)-1)                                                                      : >.  /* logical memory area END */

    .GRAM_END                                                                                                       : >.


    #===================================================== HSM shared
    .HSM_SHARED_START                   align(4)                                                                    : >hsmRAM /* logical memory area START */
      .CryptoServices_HSMSHARED_VAR_INIT_sdata   align(4)                                                           : >.
      .hsm_shared                       align(4)                                                                    : >.
      .hsm_shared.data                  align(4)                                                                    : >.
      .hsm_shared.host_storage_cache    align(4)                                                                    : >.
      .hsm_shared.bss                   align(4) clear                                                              : >.

      .hsm_shared_ro                    align(4)                                                                    : >.
      .hsm_shared_ro.data               align(4)                                                                    : >.
      .hsm_shared_ro.bss                align(4) clear                                                              : >.
    .HSM_SHARED_END                     align(4)                                                                    : >. /* logical memory area END */
    .HSM_SHARED_RO_START                align(4)                                                                    : >. /* logical memory area START */
      /* moved to HSM_SHARED as workaround, see BIBASE-335
      .hsm_shared_ro                    align(4)                                                                    : >.
      .hsm_shared_ro.data               align(4)                                                                    : >.
      .hsm_shared_ro.bss                align(4) clear                                                              : >.
      */
    .HSM_SHARED_RO_END                  align(4)                                                                    : >. /* logical memory area END */
    .FREE_HSMRAM              MIN_SIZE((endaddr(hsmRAM)-1) - addr(.FREE_HSMRAM))                                    : >.
   .CALPAGE_GRAM_END (endaddr(gRAM_END)) : >gRAM_END /* used in project A2L and Xcp_CalPage for end of GRAM */

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
#
#
#
#
#
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ___ghssize_CALIBDAT_FOC_SIZE_IN_BYTES = addr(.CALIBDAT_FOC_INIT_1_END) - addr(.CALIBDAT_FOC_INIT_1_START) + 1;
   ___ghssize_CALIBDAT_FOC_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_FOC_SETS_END) - addr(.CALIBDAT_FOC_SETS_START);
   ___ghssize_TUN_ROM_FOC_SIZE_IN_BYTES = addr(.TUN_ROM_FOC_END) - addr(.TUN_ROM_FOC_START) + 1;

   ___ghssize_CALIBDAT_SYSTEM_SIZE_IN_BYTES = addr(.CALIBDAT_SYSTEM_INIT_1_END) - addr(.CALIBDAT_SYSTEM_INIT_1_START) + 1;
   ___ghssize_CALIBDAT_SYSTEM_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_SYSTEM_SETS_END) - addr(.CALIBDAT_SYSTEM_SETS_START);
   ___ghssize_TUN_ROM_SYSTEM_SIZE_IN_BYTES = addr(.TUN_ROM_SYSTEM_END) - addr(.TUN_ROM_SYSTEM_START) + 1;

   ___ghssize_CALIBDAT_TUNING_SIZE_IN_BYTES = addr(.CALIBDAT_TUNING_INIT_END) - addr(.CALIBDAT_TUNING_INIT_START) + 1;
   ___ghssize_CALIBDAT_TUNING_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_TUNING_SETS_END) - addr(.CALIBDAT_TUNING_SETS_START);
   ___ghssize_TUN_ROM_TUNING_SIZE_IN_BYTES = addr(.TUN_ROM_TUNING_END) - addr(.TUN_ROM_TUNING_START) + 1;

   ___ghssize_CALIBDAT_OEM_SIZE_IN_BYTES = addr(.CALIBDAT_OEM_INIT_END) - addr(.CALIBDAT_OEM_INIT_START) + 1;
   ___ghssize_CALIBDAT_OEM_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_OEM_SETS_END) - addr(.CALIBDAT_OEM_SETS_START);
   ___ghssize_TUN_ROM_OEM_SIZE_IN_BYTES = addr(.TUN_ROM_OEM_WORK_END) - addr(.TUN_ROM_OEM_WORK_START) + 1;

   ___ghssize_CALIBDAT_SAFEDRIVE_SIZE_IN_BYTES = addr(.CALIBDAT_SAFEDRIVE_INIT_END) - addr(.CALIBDAT_SAFEDRIVE_INIT_START) + 1;
   ___ghssize_CALIBDAT_SAFEDRIVE_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_SAFEDRIVE_SETS_END) - addr(.CALIBDAT_SAFEDRIVE_SETS_START);

   ___ghssize_CALIBDAT_SAFESYSTEM_SIZE_IN_BYTES = addr(.CALIBDAT_SAFESYSTEM_INIT_1_END) - addr(.CALIBDAT_SAFESYSTEM_INIT_1_START) + 1;
   ___ghssize_CALIBDAT_SAFESYSTEM_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_SAFESYSTEM_SETS_END) - addr(.CALIBDAT_SAFESYSTEM_SETS_START);

   ___ghssize_CALIBDAT_HWLIB_SIZE_IN_BYTES = addr(.CALIBDAT_HWLIB_INIT_END) - addr(.CALIBDAT_HWLIB_INIT_START) + 1;
   ___ghssize_CALIBDAT_HWLIB_SETS_SIZE_IN_BYTES = addr(.CALIBDAT_HWLIB_SETS_END) - addr(.CALIBDAT_HWLIB_SETS_START);


    ___ghsbegin_CALIBDAT_FOC_INIT_1 = addr(.CALIBDAT_FOC_INIT_1_START);
    _xCalDatHdl_FOC_FocDataSelect_XDU8_1 = final(_xCalDatHdl_FOC_FocDataSelect_XDU8_CPY) - addr(.CALIBDAT_FOC_WORK_START) + addr(.CALIBDAT_FOC_INIT_1_START);
    _xCalDatHdl_FOC_Layout_XDU16_1 = final(_xCalDatHdl_FOC_Layout_XDU16_CPY) - addr(.CALIBDAT_FOC_WORK_START) + addr(.CALIBDAT_FOC_INIT_1_START);
    ___ghssize_CALIBDAT_FOC_INIT_1 = addr(.CALIBDAT_FOC_INIT_1_END) - addr(.CALIBDAT_FOC_INIT_1_START) +1;













    ___ghsbegin_CALIBDAT_SYSTEM_INIT_1 = addr(.CALIBDAT_SYSTEM_INIT_1_START);
    _xCalDatHdl_System_RackType_XDU8_1 = final(_xCalDatHdl_System_RackType_XDU8_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_1_START);
    _xCalDatHdl_System_Layout_XDU16_1 = final(_xCalDatHdl_System_Layout_XDU16_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_1_START);
    ___ghssize_CALIBDAT_SYSTEM_INIT_1 = addr(.CALIBDAT_SYSTEM_INIT_1_END) - addr(.CALIBDAT_SYSTEM_INIT_1_START) +1;

    ___ghsbegin_CALIBDAT_SYSTEM_INIT_2 = addr(.CALIBDAT_SYSTEM_INIT_2_START);
    _xCalDatHdl_System_RackType_XDU8_2 = final(_xCalDatHdl_System_RackType_XDU8_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_2_START);
    _xCalDatHdl_System_Layout_XDU16_2 = final(_xCalDatHdl_System_Layout_XDU16_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_2_START);
    ___ghssize_CALIBDAT_SYSTEM_INIT_2 = addr(.CALIBDAT_SYSTEM_INIT_2_END) - addr(.CALIBDAT_SYSTEM_INIT_2_START) +1;

    ___ghsbegin_CALIBDAT_SYSTEM_INIT_3 = addr(.CALIBDAT_SYSTEM_INIT_3_START);
    _xCalDatHdl_System_RackType_XDU8_3 = final(_xCalDatHdl_System_RackType_XDU8_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_3_START);
    _xCalDatHdl_System_Layout_XDU16_3 = final(_xCalDatHdl_System_Layout_XDU16_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_3_START);
    ___ghssize_CALIBDAT_SYSTEM_INIT_3 = addr(.CALIBDAT_SYSTEM_INIT_3_END) - addr(.CALIBDAT_SYSTEM_INIT_3_START) +1;

    ___ghsbegin_CALIBDAT_SYSTEM_INIT_4 = addr(.CALIBDAT_SYSTEM_INIT_4_START);
    _xCalDatHdl_System_RackType_XDU8_4 = final(_xCalDatHdl_System_RackType_XDU8_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_4_START);
    _xCalDatHdl_System_Layout_XDU16_4 = final(_xCalDatHdl_System_Layout_XDU16_CPY) - addr(.CALIBDAT_SYSTEM_WORK_START) + addr(.CALIBDAT_SYSTEM_INIT_4_START);
    ___ghssize_CALIBDAT_SYSTEM_INIT_4 = addr(.CALIBDAT_SYSTEM_INIT_4_END) - addr(.CALIBDAT_SYSTEM_INIT_4_START) +1;





























    ___ghsbegin_CALIBDAT_TUNING_INIT = addr(.CALIBDAT_TUNING_INIT_START);
    _xCalDatHdl_Tuning_RackType_XDU8_1 = final(_xCalDatHdl_Tuning_RackType_XDU8_CPY) - addr(.CALIBDAT_TUNING_WORK_START) + addr(.CALIBDAT_TUNING_INIT_START);
    _xCalDatHdl_Tuning_Layout_XDU16_1 = final(_xCalDatHdl_Tuning_Layout_XDU16_CPY) - addr(.CALIBDAT_TUNING_WORK_START) + addr(.CALIBDAT_TUNING_INIT_START);
    ___ghssize_CALIBDAT_TUNING_INIT = addr(.CALIBDAT_TUNING_INIT_END) - addr(.CALIBDAT_TUNING_INIT_START) +1;

    ___ghsbegin_CALIBDAT_OEM_INIT = addr(.CALIBDAT_OEM_INIT_START);

    _xCalDatHdl_Oem_Layout_XDU16_1 = final(_xCalDatHdl_OEM_Layout_XDU16_CPY) - addr(.CALIBDAT_OEM_WORK_START) + addr(.CALIBDAT_OEM_INIT_START);
    ___ghssize_CALIBDAT_OEM_INIT = addr(.CALIBDAT_OEM_INIT_END) - addr(.CALIBDAT_OEM_INIT_START) +1;

    ___ghsbegin_CALIBDAT_SAFEDRIVE_INIT = addr(.CALIBDAT_SAFEDRIVE_INIT_START);

    ___ghssize_CALIBDAT_SAFEDRIVE_INIT = addr(.CALIBDAT_SAFEDRIVE_INIT_END) - addr(.CALIBDAT_SAFEDRIVE_INIT_START) +1;

    ___ghsbegin_CALIBDAT_SAFESYSTEM_INIT_1 = addr(.CALIBDAT_SAFESYSTEM_INIT_1_START);
    _xCalDatHdl_SafeSystem_RackType_XDU8_1 = final(_xCalDatHdl_SafeSystem_RackType_XDU8_CPY) - addr(.CALIBDAT_SAFESYSTEM_WORK_START) + addr(.CALIBDAT_SAFESYSTEM_INIT_1_START);

    ___ghssize_CALIBDAT_SAFESYSTEM_INIT_1 = addr(.CALIBDAT_SAFESYSTEM_INIT_1_END) - addr(.CALIBDAT_SAFESYSTEM_INIT_1_START) +1;

    ___ghsbegin_CALIBDAT_SAFESYSTEM_INIT_2 = addr(.CALIBDAT_SAFESYSTEM_INIT_2_START);
    _xCalDatHdl_SafeSystem_RackType_XDU8_2 = final(_xCalDatHdl_SafeSystem_RackType_XDU8_CPY) - addr(.CALIBDAT_SAFESYSTEM_WORK_START) + addr(.CALIBDAT_SAFESYSTEM_INIT_2_START);

    ___ghssize_CALIBDAT_SAFESYSTEM_INIT_2 = addr(.CALIBDAT_SAFESYSTEM_INIT_2_END) - addr(.CALIBDAT_SAFESYSTEM_INIT_2_START) +1;

    ___ghsbegin_CALIBDAT_SAFESYSTEM_INIT_3 = addr(.CALIBDAT_SAFESYSTEM_INIT_3_START);
    _xCalDatHdl_SafeSystem_RackType_XDU8_3 = final(_xCalDatHdl_SafeSystem_RackType_XDU8_CPY) - addr(.CALIBDAT_SAFESYSTEM_WORK_START) + addr(.CALIBDAT_SAFESYSTEM_INIT_3_START);

    ___ghssize_CALIBDAT_SAFESYSTEM_INIT_3 = addr(.CALIBDAT_SAFESYSTEM_INIT_3_END) - addr(.CALIBDAT_SAFESYSTEM_INIT_3_START) +1;

    ___ghsbegin_CALIBDAT_SAFESYSTEM_INIT_4 = addr(.CALIBDAT_SAFESYSTEM_INIT_4_START);
    _xCalDatHdl_SafeSystem_RackType_XDU8_4 = final(_xCalDatHdl_SafeSystem_RackType_XDU8_CPY) - addr(.CALIBDAT_SAFESYSTEM_WORK_START) + addr(.CALIBDAT_SAFESYSTEM_INIT_4_START);

    ___ghssize_CALIBDAT_SAFESYSTEM_INIT_4 = addr(.CALIBDAT_SAFESYSTEM_INIT_4_END) - addr(.CALIBDAT_SAFESYSTEM_INIT_4_START) +1;





























    ___ghsbegin_CALIBDAT_HWLIB_INIT = addr(.CALIBDAT_HWLIB_INIT_START);

    ___ghssize_CALIBDAT_HWLIB_INIT = addr(.CALIBDAT_HWLIB_INIT_END) - addr(.CALIBDAT_HWLIB_INIT_START) +1;



   ___ghssize_CALPAGE_LRAM1_SIZE_IN_BYTES = addr(.CALPAGE_LRAM1_END) - addr(.CALPAGE_LRAM1_START) + 1;
   ___ghssize_CALPAGE_LRAM2_SIZE_IN_BYTES = addr(.CALPAGE_LRAM2_END) - addr(.CALPAGE_LRAM2_START) + 1;
   ___ghssize_CALPAGE_GRAM_SIZE_IN_BYTES = addr(.CALPAGE_GRAM_END) - addr(.CALPAGE_GRAM_START) + 1;
   ___ghssize_CALPAGE_DRIVE_CODE_BANK_A_SIZE_IN_BYTES = addr(.CALPAGE_DRIVE_CODE_BANK_A_END) - addr(.CALPAGE_DRIVE_CODE_BANK_A_START) + 1;
   ___ghssize_CALPAGE_DRIVE_CODE_BANK_B_SIZE_IN_BYTES = addr(.CALPAGE_DRIVE_CODE_BANK_B_END) - addr(.CALPAGE_DRIVE_CODE_BANK_B_START) + 1;
   ___ghssize_CALPAGE_OEM_CODE_SIZE_IN_BYTES = addr(.CALPAGE_OEM_CODE_END) - addr(.CALPAGE_OEM_CODE_START) + 1;

   ___START_ROM_DAMOS_RAM_DATAS = addr(.ROM.DAMOS_RAM_DATAS);
   ___START_DAMOS_RAM_DATAS = addr(.DAMOS_RAM_DATAS);

   ___START_ROM_BANK_A = 0x00000000;
   ___END_ROM_BANK_A = 0x001FFFFF;
   ___START_ROM_BANK_B = 0x00800000;
   ___END_ROM_BANK_B = 0x009FFFFF;
   ___START_ROM_GAP_BANK_A_TO_B = ___END_ROM_BANK_A + 1;
   ___END_ROM_GAP_BANK_A_TO_B = ___START_ROM_BANK_B - 1;
   ___ghssize_BOOT_SIZE_IN_BYTES = endaddr(Boot_Rom) - addr(.BOOTMANAGER_START);
   ___ghssize_DRIVE_SIZE_IN_BYTES = addr(.DRIVE_A_END) - addr(.DRIVE_START);
   ___ghssize_DRIVE2_SIZE_IN_BYTES = addr(.DRIVE_B_END) - addr(.DRIVE_B_START) + 1;
   ___ghssize_OEM_SW_SIZE_IN_BYTES = addr(.OEM_END) - addr(.OEM_START) + 1;
   ___ghssize_HSM_SIZE_IN_BYTES = addr(.HSM_END) - addr(.HSM_START) + 1;

   ___ghsbegin_BU_BOOT_START = 0x000E0000;
   ___ghssize_BU_BOOT_SIZE_IN_BYTES = 0x000FFFFF - ___ghsbegin_BU_BOOT_START + 1;
   ___ghsbegin_BU_DRIVE_START = 0x0000C000;
   ___ghssize_BU_DRIVE_SIZE_IN_BYTES = 0x000DFFFF - ___ghsbegin_BU_DRIVE_START + 1;
   ___ghsbegin_BU_SYS_DATA_START = 0x00004000;
   ___ghssize_BU_SYS_DATA_SIZE_IN_BYTES = 0x00005FFF - ___ghsbegin_BU_SYS_DATA_START + 1;

   # Calculate ROM address for OEM Structs
   _SYS_Struct_ROM = final(_SYS_Struct - addr(.TUN_RAM_OEM_LIB_DATA) + addr(.TUN_ROM_OEM_LIB_DATA));
   _VEH_Struct_ROM = final(_VEH_Struct - addr(.TUN_RAM_OEM_LIB_DATA) + addr(.TUN_ROM_OEM_LIB_DATA));

# Calculation of base address for OEM Structs "_SYS_Struct_ROM" and "_VEH_Struct_ROM" is located in file LinkSegLayer.mak
#
# Calculate ROM address for OEM struct elements

SYS_Struct = final(_SYS_Struct_ROM);
VEH_Struct = final(_VEH_Struct_ROM);
EEP_Struct = final(_EEP_Struct);
MSM_Struct = final(_MSM_Struct);
RAM_Struct = final(_RAM_Struct);
}

/*===========================================================================*/
/*      End of File                                                          */
/*===========================================================================*/

