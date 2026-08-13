# $BASDHEADER$ ------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
#
#  Copyright (c) Robert Bosch Automotive Steering GmbH, Germany
#                All rights reserved
#
# -------------------------------------------------------------------------------------------------
#
#   Filename:       BOBE.mak
#
#   Responsibility: Tao Lu
#
#   Description:    Bosch OEM Build Environment
#
# -------------------------------------------------------------------------------------------------

# Note: BOBE shall be built based on the EPS_DEPLOY\BitBucketBuild (SW Release) after software integration

# BOBE uses some Bosch Header files to be able to compile software with customer code
BOBE_USE_OEM_CFILE_BOSCH_HFILE_FLAG     = YES
# Switch to active the ODX create in BOBE Environment
BOBE_USE_ODX_CREATE                     = YES
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
#Customer default Settings in settings.bat
BOBE_PROJECT_BASE_DIR_ATOEM             = C:\Projekte\ASC_SAC
BOBE_PROJECT_GHSPATH_ATOEM              = C:\ghs\v850_V201517P01
BOBE_PROJECT_GHS_LMHOST_ATOEM           = OPTINONAL_CUSTOMER_CONFIGURATION
BOBE_PROJECT_PYTHONCMD_ATOEM            = C:\PROGRA~1\python\3.9.5.0.0\python-3.9.5.amd64\python.exe
BOBE_PROJECT_A2LUPDATERCMD_ATOEM        = C:\PROGRA~2\Vector\ASAP2T~1.0\Exec\ASAP2Updater.exe
BOBE_PROJECT_ODXCREATEPATH_ATOEM        = C:\ODXCreate
BOBE_PROJECT_MSVCPATH_ATOEM             = OPTINONAL_CUSTOMER_CONFIGURATION
BOBE_PROJECT_MSVCBITOPT_ATOEM           = OPTINONAL_CUSTOMER_CONFIGURATION
BOBE_PROJECT_GHS_LMWHICH_ATOEM          = ghs
# -------------------------------------------------------------------------------------------------
#BOSCH default Settings in settings.bat
BOBE_PROJECT_BASE_DIR                   = $(EPS_DEPLOY)\BOBE
BOBE_PROJECT_GHSPATH                    = C:\toolbase\greenhills_rel\comp_202115_2fp_x64
BOBE_PROJECT_GHS_LMHOST                 = GHS_LIC_SERVER3
BOBE_PROJECT_PYTHONCMD                  = C:\toolbase\python\3.9.5.0.0\python-3.9.5.amd64\python.exe
BOBE_PROJECT_A2LUPDATERCMD              = $(UPDATER_CMD)
BOBE_PROJECT_ODXCREATEPATH              = $(ODX_CREATE_CMD:\ODXCreate.exe=)
BOBE_PROJECT_MSVCPATH                   = C:\PROGRA~2\MICROS~1.0\VC
BOBE_PROJECT_MSVCBITOPT                 = 64
BOBE_PROJECT_GHS_LMWHICH                = ghs
BOBE_CUSTOMER_INCLUDEPATH_USED          = YES
BOBE_CUSTOMER_INCLUDES_USED             = YES
BOBE_INCLUDES_USED                      = YES
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: A2L Folder Structure ...\BOBE\A2L\...
BOBE_BOSCH_A2L_FOLDER_NAME              = A2L
BOBE_BOSCH_A2L_MERGE_FOLDER_NAME        = merge
BOBE_BOSCH_A2L_MERGEUPDATE_FOLDER_NAME  = merge_update
BOBE_BOSCH_INPUTS_A2L_DIR               = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_BOSCH_A2L_FOLDER_NAME)
BOBE_BOSCH_A2L_MERGE_DIR                = $(BOBE_BOSCH_INPUTS_A2L_DIR)\$(BOBE_BOSCH_A2L_MERGE_FOLDER_NAME)
BOBE_BOSCH_A2L_MERGEUPDATE_DIR          = $(BOBE_BOSCH_INPUTS_A2L_DIR)\$(BOBE_BOSCH_A2L_MERGEUPDATE_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: Input Folder Structure ...\BOBE\BoschInputs\...
BOBE_BOSCH_INPUTS_FOLDER_NAME           = BoschInputs
BOBE_BOSCH_DATA_FOLDER_NAME             = Data
BOBE_BOSCH_DATAODX_FOLDER_NAME          = DataODX
BOBE_BOSCH_HEXMODX_FOLDER_NAME          = hexmodx
BOBE_BOSCH_HEXMODX_SCRIPTS_FOLDER_NAME  = hexmodx_scripts
BOBE_BOSCH_INCLUDES_FOLDER_NAME         = Includes
BOBE_BOSCH_LIBRARIES_FOLDER_NAME        = Libraries
BOBE_BOSCH_INPUTS_DIR                   = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_BOSCH_INPUTS_FOLDER_NAME)
BOBE_BOSCH_INPUTS_DATA_DIR              = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_DATA_FOLDER_NAME)
BOBE_BOSCH_INPUTS_DATAODX_DIR           = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_DATAODX_FOLDER_NAME)
BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR   = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_DATAODX_FOLDER_NAME)\Default
BOBE_BOSCH_INPUTS_HEXMODX_DIR           = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_HEXMODX_FOLDER_NAME)
BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_DIR   = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_HEXMODX_SCRIPTS_FOLDER_NAME)
BOBE_BOSCH_INPUTS_INCLUDES_DIR          = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_INCLUDES_FOLDER_NAME)
BOBE_BOSCH_INPUTS_LIBRARIES_DIR         = $(BOBE_BOSCH_INPUTS_DIR)\$(BOBE_BOSCH_LIBRARIES_FOLDER_NAME)

BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE_NAME   = HexmodX_BOBE_TEMPLATE.cmd
BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE        = $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_DIR)\$(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: BuildOutput Folder Structure ...\BOBE\BuildOutput\...
BOBE_OUTPUT_FOLDER_NAME                 = BuildOutput
BOBE_OUTPUT_ODX_FOLDER_NAME             = Odx
BOBE_OUTPUT_STANDARD_FOLDER_NAME        = standard
BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_FOLDER_NAME    = standard_executable_file
BOBE_OUTPUT_DIR                         = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_OUTPUT_FOLDER_NAME)
BOBE_OUTPUT_ODX_DIR                     = $(BOBE_OUTPUT_DIR)\$(BOBE_OUTPUT_ODX_FOLDER_NAME)
BOBE_OUTPUT_STANDARD_DIR                = $(BOBE_OUTPUT_DIR)\$(BOBE_OUTPUT_STANDARD_FOLDER_NAME)
BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_DIR            = $(BOBE_OUTPUT_DIR)\$(BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: Documentation Folder Structure ...\BOBE\Documentation\...
BOBE_BUILD_DOCU_FOLDER_NAME             = Documentation
BOBE_BUILD_DOCU_DIR                     = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_BUILD_DOCU_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: Folder Structure for OEM header files ...\BOBE\INC\...
BOBE_OEM_INC_FOLDER_NAME                = INC
BOBE_OEM_INC_DIR                        = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_OEM_INC_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: Folder Structure for addtional BOSCH header files ...\BOBE\Includes\...
BOBE_INCLUDES_FOLDER_NAME               = Includes
BOBE_INCLUDES_DIR                       = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_INCLUDES_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
### BOBE Folder Structures: Folder Structure for OEM source c files ...\BOBE\SRC\...
BOBE_OEM_SRC_FOLDER_NAME                = SRC
BOBE_OEM_SRC_DIR                        = $(BOBE_PROJECT_BASE_DIR)\$(BOBE_OEM_SRC_FOLDER_NAME)
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# The following files are copied from VOB into BOBE Delivery
BOBE_DIR_IN_VOB                         = $(CPR_ENV_BASE)\Bosch\BOBE
BOBE_PROJECT_NAMELIB                    = $(OEM_LIBNAME)
BOBE_PROJECT_NAMELIB_VOB_DIR            = $(ASW_BASE)\OemLibrary\components\OemBbLib_CPR\vendor\LIB\$(OEM_LIBNAME).a
BOBE_HEXMODX_SCRIPTS_TEMPLATE_IN_VOB    = $(BOBE_DIR_IN_VOB)\HexmodX_BOBE_TEMPLATE.cmd
BOBE_ADDRESS_PATCHING_PYTHON_IN_VOB     = $(BOBE_DIR_IN_VOB)\VarAddressPatch.py
BOBE_VOB_VERSION_TXT                    = $(BOBE_DIR_IN_VOB)\Version_BOBE_VXXX.txt
BOBE_VOB_DOCU_BOBE_PDF                  = $(BOBE_DIR_IN_VOB)\HOW_TO_BOBE.pdf
BOBE_DUMMY_C_IN_VOB                     = $(BOBE_DIR_IN_VOB)\dummy.c
BOBE_C_LINKER_FLAGS_OEM_LIB             = $(OEM_LIB_PATH)\libarch_NeededObjects.a
# -------------------------------------------------------------------------------------------------
BOBE_FDSSIGKEYFILE_IN_VOB               = $(CPR_ENV_BASE)\Flashdatensicherheit\config_FDSProject_2657_E\keys\FDSProject_2657_E.p8
BOBE_FDSPRJCFGFILE_IN_VOB               = $(CPR_ENV_BASE)\Flashdatensicherheit\config_FDSProject_2657_E\$(ODX_FDSProjCfgFile)
# -------------------------------------------------------------------------------------------------
# The following files are copied from eps_deploy into BOBE Delivery
# The reference HEX File
# c:\eps_deploy\BitBucketBuild\3G1300XXXXXXX_RG3_X_VARI04_foc13_with_backup_patched.hex
EPS_DEPLOY_HEX_FILE                     = $(HEX_FILE,S'.hex'_with_backup_patched.hex')
#3G1300XXXXXXX_RG3_X_VARI04_foc13_with_backup_patched.hex
BOBE_REF_HEX                            = $(EPS_DEPLOY_HEX_FILE,F)
BOBE_PLACEHOLDER_HEX_FILE               = BOBE_PLACEHOLDER_HEX_FILE
BOBE_REF_HEX_DIR                        = $(BOBE_BOSCH_INPUTS_DATA_DIR)\$(BOBE_REF_HEX)
# -------------------------------------------------------------------------------------------------
BOBE_PROJECT_FDSSIGKEYFILEM             = $(BOBE_BOSCH_INPUTS_FOLDER_NAME)\$(BOBE_BOSCH_DATAODX_FOLDER_NAME)\FDSProject_2657_E.p8
BOBE_PROJECT_FDSPRJCFGFILE              = $(BOBE_BOSCH_INPUTS_FOLDER_NAME)\$(BOBE_BOSCH_DATAODX_FOLDER_NAME)\$(ODX_FDSProjCfgFile)
# -------------------------------------------------------------------------------------------------
# Define the name of compiled HEX file in BOBE
BOBE_HEX_FILE_NAME_AT_OEM               = $(PRJ_OUTPUT_NAME)__$(BOBE_PROJECT_NAMELIB)_StartAtDrive.hex
BOBE_HEX_FILE_AT_OEM                    = $(BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_DIR)\$(BOBE_HEX_FILE_NAME_AT_OEM)
BOBE_PROJECT_VERSION_TXT                = $(BOBE_PROJECT_BASE_DIR)\Version_BOBE_$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT).txt
BOBE_PROJECT_DOCU_BOBE_PDF              = $(BOBE_PROJECT_BASE_DIR)\HOW_TO_BOBE.pdf
BOBE_PROJECT_CREATE_EXEC_BAT_NAME       = create_exec.bat
BOBE_PROJECT_CREATE_EXEC_BAT_DIR        = $(BOBE_PROJECT_BASE_DIR)\create_exec.bat
BOBE_C_LINKER_FLAGS_REPLACE             = $(OEM_LIB_PATH)
BOBE_C_LINKER_FLAGS_NEW                 = %LIBINPPATH%
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# OEM use own c file in BOBE workpath
# minimal require of header files
%if $(BOBE_USE_OEM_CFILE_BOSCH_HFILE_FLAG)==YES
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Compiler.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Compiler_Cfg.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Os.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Os_Cfg.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Os_Compiler_Cfg.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Os_Metrics.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Os_Safe_Cfg.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Platform_Types.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_ASC_SWC.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_ASC_SWC_Type.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_Cfg.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_Const.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_DataHandleType.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_Intl.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_MemMap.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_SAC_SWC.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_SAC_SWC_Type.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Rte_Type.h
    BOBE_HEADER_FILES               += $(EPS_DEPLOY)\include\Std_Types.h
%endif
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
### To generate the ODX in BOBE is required to generate the ODX File in current Software Release. ###
### The generated .bat and .ped will be then adapted and used in BOBE environments by make bobe.  ###
### Only difference is, in BOBE will the HEX File generated in BOBE environment used.             ###
### Setting for ODXCreate in BOBE: Input Files ###
# \100FIT_dev\EpsDriveSW\EnvironmentSet\Scripts\ODX_Creation\Main_Odx_FDS_DownGrad_BankAB_OEM.txt
#C:\eps_deploy\BitBucketBuild\Odx_Artifacts\Main_Odx_Config_BankAB_OEM_FDS.ocnf
EPS_DEPLOY_ODX_DIR                      = $(ODX_DIR)
EPS_DEPLOY_ODX_ARTIFACTS_DIR            = $(ODXARTIFACT_DIR)
###
#<ODXPath>$(ODX_DIR)</ODXPath>
#<ODXPath>c:\eps_deploy\BitBucketBuild\Odx</ODXPath>
EPS_DEPLOY_ODXPath                      = $(EPS_DEPLOY_ODX_DIR)
BOBE_PLACEHOLDER_ODXPath                = BOBE_PLACEHOLDER_ODXPath

EPS_DEPLOY_Odx_Artifacts                = $(EPS_DEPLOY_ODX_ARTIFACTS_DIR)
BOBE_PLACEHOLDER_Odx_Artifacts          = BOBE_PLACEHOLDER_Odx_Artifacts
#<SignatureKeyFile>$(SignatureKeyFile)</SignatureKeyFile>
#<SignatureKeyFile>o:\100FIT_dev\EpsDriveSw\EnvironmentSet\Flashdatensicherheit\config_FDSProject_2657_E\keys\FDSProject_2657_E.p8</SignatureKeyFile>
ODX_SignatureKeyFile_NAME               = FDSProject_2657_E.p8
EPS_DEPLOY_SignatureKeyFile             = $(CPR_ENV_BASE)\Flashdatensicherheit\config_FDSProject_2657_E\keys\$(ODX_SignatureKeyFile_NAME)
BOBE_DATAODX_SignatureKeyFile           = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_SignatureKeyFile_NAME)
BOBE_PLACEHOLDER_SignatureKeyFile       = BOBE_PLACEHOLDER_SignatureKeyFile
#<FDSProjCfgFile>$(FDSProjCfgFile)</FDSProjCfgFile>
#<FDSProjCfgFile>o:\100FIT_dev\EpsDriveSw\EnvironmentSet\Flashdatensicherheit\config_FDSProject_2657_E\config_FDSProject_2657_E.xml</FDSProjCfgFile>
ODX_FDSProjCfgFile                      = config_FDSProject_2657_E.xml
EPS_DEPLOY_FDSProjCfgFile               = $(CPR_ENV_BASE)\Flashdatensicherheit\config_FDSProject_2657_E\$(ODX_FDSProjCfgFile)
BOBE_DATAODX_FDSProjCfgFile             = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_FDSProjCfgFile)
BOBE_PLACEHOLDER_FDSProjCfgFile         = BOBE_PLACEHOLDER_FDSProjCfgFile
#<BlockFileName>$(PFT_HEX_PATCH)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\PFT_HEX_PATCH.hex</BlockFileName>
EPS_DEPLOY_PFT_HEX_PATCH                = $(EPS_DEPLOY_Odx_Artifacts)\PFT_HEX_PATCH.hex
BOBE_DATAODX_PFT_HEX_PATCH              = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\PFT_HEX_PATCH.hex
BOBE_PLACEHOLDER_PFT_HEX_PATCH          = BOBE_PLACEHOLDER_PFT_HEX_PATCH
#<BlockFileName>$(RUN_DRIVE)\100FIT_dev\EpsDriveSW\EnvironmentSet\Erase_Program\1000FLASHDATA.Data.hex</BlockFileName>
#<BlockFileName>o:\100FIT_dev\EpsDriveSW\EnvironmentSet\Erase_Program\1000FLASHDATA.Data.hex</BlockFileName>
ODX_1000FLASHDATA_NAME                  =1000FLASHDATA.Data.hex
EPS_DEPLOY_1000FLASHDATA                = $(RUN_DRIVE)\100FIT_dev\EpsDriveSW\EnvironmentSet\Erase_Program\$(ODX_1000FLASHDATA_NAME)
BOBE_DATAODX_1000FLASHDATA              = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_1000FLASHDATA_NAME)
BOBE_PLACEHOLDER_1000FLASHDATA          = BOBE_PLACEHOLDER_1000FLASHDATA
#<BlockFileName>$(RUN_DRIVE)\__build\BitBucketBuild\AS_VW_100FIT_BLU_MST_D4_chk_Patched.hex</BlockFileName>
#<BlockFileName>eps_deploy\BitBucketBuild\AS_VW_100FIT_BLU_MST_D4_chk_Patched.hex
ODX_BootUpdater_NAME                    = AS_VW_100FIT_BLU_MST_D4_chk_Patched.hex
EPS_DEPLOY_BootUpdater                  = $(EPS_DEPLOY)\$(ODX_BootUpdater_NAME)
BOBE_DATAODX_BootUpdater                = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_BootUpdater_NAME)
BOBE_PLACEHOLDER_BootUpdater            = BOBE_PLACEHOLDER_BootUpdater
#<BlockFileName>$(Drive_Bank_A_HEX_Path)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\Drive_Bank_A.hex</BlockFileName>
ODX_Drive_Bank_A_NAME                   = Drive_Bank_A
EPS_DEPLOY_Drive_Bank_A_CMD             = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Bank_A_NAME).cmd
EPS_DEPLOY_Drive_Bank_A_HEX_Path        = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Bank_A_NAME).hex
BOBE_DATAODX_Drive_Bank_A_CMD           = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Bank_A_NAME).cmd
BOBE_ODXCREATE_INPUT_CMD_FILES          += $(BOBE_DATAODX_Drive_Bank_A_CMD)
BOBE_DATAODX_Drive_Bank_A_HEX_Path      = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Bank_A_NAME).hex
BOBE_PLACEHOLDER_Bank_A_HEX_Path        = BOBE_PLACEHOLDER_Bank_A_HEX_Path
#<BlockFileName>$(Drive_Bank_B_HEX_Path)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\Drive_Bank_B.hex</BlockFileName>
ODX_Drive_Bank_B_NAME                   = Drive_Bank_B
EPS_DEPLOY_Drive_Bank_B_CMD             = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Bank_B_NAME).cmd
EPS_DEPLOY_Drive_Bank_B_HEX_Path        = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Bank_B_NAME).hex
BOBE_DATAODX_Drive_Bank_B_CMD           = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Bank_B_NAME).cmd
BOBE_ODXCREATE_INPUT_CMD_FILES          += $(BOBE_DATAODX_Drive_Bank_B_CMD)
BOBE_DATAODX_Drive_Bank_B_HEX_Path      = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Bank_B_NAME).hex
BOBE_PLACEHOLDER_Bank_B_HEX_Path        = BOBE_PLACEHOLDER_Bank_B_HEX_Path
#<BlockFileName>$(Oem_Code_HEX_Path)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\Oem_Code.hex</BlockFileName>
ODX_Drive_Oem_Code_NAME                 = Oem_Code
EPS_DEPLOY_Oem_Code_CMD                 = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Oem_Code_NAME).cmd
EPS_DEPLOY_Oem_Code_HEX_Path            = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Drive_Oem_Code_NAME).hex
BOBE_DATAODX_Oem_Code_CMD               = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Oem_Code_NAME).cmd
BOBE_ODXCREATE_INPUT_CMD_FILES          += $(BOBE_DATAODX_Oem_Code_CMD)
BOBE_DATAODX_Oem_Code_HEX_Path          = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Drive_Oem_Code_NAME).hex
BOBE_PLACEHOLDER_Oem_Code_HEX_Path      = BOBE_PLACEHOLDER_Oem_Code_HEX_Path
#<BlockFileName>$(HSM_HEX_Path)</BlockFileName>
#<BlockFileName>o:\BasicSoftware\Crypto\ecy_hsm\ecy_hsm_RH850_D4\bin\HSM_D4.hex</BlockFileName>
ODX_HSM_HEX_NAME                        = HSM_D4.hex
EPS_DEPLOY_HSM_HEX_Path                 = $(RUN_DRIVE)\BasicSoftware\Crypto\ecy_hsm\ecy_hsm_RH850_D4\bin\$(ODX_HSM_HEX_NAME)
BOBE_DATAODX_HSM_HEX_Path               = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_HSM_HEX_NAME)
BOBE_PLACEHOLDER_HSM_HEX_Path           = BOBE_PLACEHOLDER_HSM_HEX_Path
#<BlockFileName>$eps_deploy\BitBucketBuild\AS_VW_100FIT_BLU_SLV_D3_chk_Patched.hex
ODX_BU_BootUpdater_NAME                 = AS_VW_100FIT_BLU_SLV_D3_chk_Patched.hex
EPS_DEPLOY_BU_BootUpdater               = $(EPS_DEPLOY)\$(ODX_BU_BootUpdater_NAME)
BOBE_DATAODX_BU_BootUpdater             = $(BOBE_BOSCH_INPUTS_DATAODX_DIR)\$(ODX_BU_BootUpdater_NAME)
BOBE_PLACEHOLDER_BU_BootUpdater         = BOBE_PLACEHOLDER_BU_BootUpdater
#<BlockFileName>$(Backup_Drive_Bank_A_HEX_Path)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\Backup_Drive_Bank_A.hex</BlockFileName>
ODX_Backup_Drive_Bank_A_NAME            = Backup_Drive_Bank_A
EPS_DEPLOY_Backup_Drive_Bank_A_CMD      = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Backup_Drive_Bank_A_NAME).cmd
EPS_DEPLOY_Backup_Drive_Bank_A_HEX_Path = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Backup_Drive_Bank_A_NAME).hex
BOBE_DATAODX_Backup_Drive_Bank_A_CMD    = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Backup_Drive_Bank_A_NAME).cmd
BOBE_ODXCREATE_INPUT_CMD_FILES          += $(BOBE_DATAODX_Backup_Drive_Bank_A_CMD)
BOBE_DATAODX_Backup_Drive_Bank_A_HEX_Path     = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Backup_Drive_Bank_A_NAME).hex
BOBE_PLACEHOLDER_Backup_Drive_Bank_A_HEX_Path = BOBE_PLACEHOLDER_Backup_Drive_Bank_A_HEX_Path
#<BlockFileName>$(Backup_SysHex_Path)</BlockFileName>
#<BlockFileName>c:\eps_deploy\BitBucketBuild\Odx_Artifacts\Backup_SysHex.hex</BlockFileName>
ODX_Backup_SysHex_NAME                  = Backup_SysHex
EPS_DEPLOY_Backup_SysHex_CMD            = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Backup_SysHex_NAME).cmd
EPS_DEPLOY_Backup_SysHex_Path           = $(EPS_DEPLOY_Odx_Artifacts)\$(ODX_Backup_SysHex_NAME).hex
BOBE_DATAODX_Backup_SysHex_CMD          = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Backup_SysHex_NAME).cmd
BOBE_ODXCREATE_INPUT_CMD_FILES          += $(BOBE_DATAODX_Backup_SysHex_CMD)
BOBE_DATAODX_Backup_SysHex_Path         = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_Backup_SysHex_NAME).hex
BOBE_PLACEHOLDER_EPS_DEPLOY_Backup_SysHex_Path = BOBE_PLACEHOLDER_EPS_DEPLOY_Backup_SysHex_Path

EPS_DEPLOY_HexmodX_CMD                  = C:\toolbase\hexmodx\14.2.0\bin\HexmodX.cmd
BOBE_PLACEHOLDER_HexmodX_CMD            = BOBE_PLACEHOLDER_HexmodX_CMD

### ocnf file to generat the ODX
ODX_OCNF_FILE_NAME                      = Main_Odx_Config_BankAB_OEM_FDS.ocnf
EPS_DEPLOY_ODX_OCNF_FILE                = $(EPS_DEPLOY_ODX_ARTIFACTS_DIR)\$(ODX_OCNF_FILE_NAME)
BOBE_ODXCREATE_ODX_OCNF_FILE            = $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)\$(ODX_OCNF_FILE_NAME)

### Create odx file for all racktype
BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT = $(OEM_SOFTWARE_VERSION_NUMBER_00,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER_DEFAULT   = $(SOFTWARE_PART_NUMBER_00,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER           = $(SOFTWARE_PART_NUMBER_00,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER           += $(SOFTWARE_PART_NUMBER_03,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER           += $(SOFTWARE_PART_NUMBER_05,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER           += $(SOFTWARE_PART_NUMBER_06,"=)
BOBE_ODX_SOFTWARE_PART_NUMBER           += $(SOFTWARE_PART_NUMBER_07,"=)
### Specify Files in BOBE
SEARCHREPLACEEXE                        = $(BOBE_DIR)\searchandreplace.exe
BOBE_ADDRESS_PATCHING_PYTHON            = $(BOBE_BOSCH_INPUTS_DIR)\VarAddressPatch.py
EPS_DEPLOY_HEXMODX                      = $(BOBE_BOSCH_INPUTS_HEXMODX_DIR)
BOBE_HEXMODX_DIR                        = $(BOBE_BOSCH_INPUTS_HEXMODX_DIR)
BOBE_HEXMODX_CMD                        = $(BOBE_BOSCH_INPUTS_HEXMODX_DIR)\hexmodx\bin\HexmodX.cmd
BOBE_UPDATER_SED                        = $(BOBE_DIR)\updater.sed
### LOG Files
EPS_DEPLOY_BOBE_LOGFILE                 = $(LOG_BASE)\BOBE.log
EPS_DEPLOY_ERRLOG_SearchAndReplace      = $(LOG_BASE)\BOBE_SearchAndReplace.log
DocuCreationFile                        = $(BOBE_BUILD_DOCU_DIR)\BOBE_Documentation.html

# includes #
ALLINCL_BOBE_name                       = _Overview_Include_Files.txt
ALLINCL_BOBE                            = $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\$(ALLINCL_BOBE_name)
# libraries #
ALLLIBS_BOBE_name                       = _Overview_Lib_Files.txt
ALLLIBS_BOBE_dir                        = Libraries
ALLLIBS_BOBE                            = $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)\$(ALLLIBS_BOBE_name)
# data #
ALLDATA_BOBE_name                       = _Overview_Data_Files.txt
ALLDATA_BOBE                            = $(BOBE_BOSCH_INPUTS_DATA_DIR)\$(ALLDATA_BOBE_name)
# a2l #
MERGEININAME_OEM                        = a2l_merge.ini
UPDATERININAME_OEM                      = a2l_updater.ini
BOBE_A2L_FOR_MERGE                      = $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_foc13.a2l

# project specifications
%if ($(GHS_VERSION) == 517d)
  GhsVersion               = V5.1.7D
%else
  GhsVersion               = $(GHS_VERSION)
%endif

bobe_prepare :
   %echo
   %echo Target $(.TARGET) ...
   %echo

   %if exists($(EPS_DEPLOY_BOBE_LOGFILE))
      $(MAK_ECHO) %exec del /q $(EPS_DEPLOY_BOBE_LOGFILE)
   %endif

   %if exists($(EPS_DEPLOY_ERRLOG_SearchAndReplace))
      $(MAK_ECHO) %exec del /q $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
   %endif

  %if exists($(ALLINCL_BOBE))
      $(MAK_ECHO) %exec del /q $(ALLINCL_BOBE)
  %endif

  %if exists($(ALLLIBS_BOBE))
      $(MAK_ECHO) %exec del /q $(ALLLIBS_BOBE)
  %endif

  %if exists($(ALLDATA_BOBE))
      $(MAK_ECHO) %exec del /q $(ALLDATA_BOBE)
  %endif
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
### Check the availability of the required files for HEX, ODX generation in BOBE
 %if !%exists($(EPS_DEPLOY_ODX_OCNF_FILE))
    %echo EPS_DEPLOY_ODX_OCNF_FILE "$(EPS_DEPLOY_ODX_OCNF_FILE)" is missing!
    # %abort
 %endif
 %if !%exists($(OEM_A2L_FILE))
    %echo OEM_A2L_FILE "$(OEM_A2L_FILE)" is missing!
    # %abort
 %endif
 %if !%exists($(EPS_DEPLOY_HEX_FILE))
    %echo EPS_DEPLOY_HEX_FILE "$(EPS_DEPLOY_HEX_FILE)" is missing!
    # %abort
 %endif

 %if "$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT)" == ""
    %echo BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT "$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT)" is missing!
    # %abort
 %endif
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
### Create BOBE directory
### create BOBE Project Base Directory ...\BOBE
  %if !exists($(BOBE_PROJECT_BASE_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_PROJECT_BASE_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_PROJECT_BASE_DIR)
  %endif
  # create BOBE BOSCH Input Directory ...\BOBE\A2L
  %if !exists($(BOBE_BOSCH_INPUTS_A2L_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_A2L_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_A2L_DIR)
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_A2L_MERGE_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_A2L_MERGE_DIR)
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_A2L_MERGEUPDATE_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_A2L_MERGEUPDATE_DIR)
  %endif
  # create BOBE BOSCH Input Directory ...\BOBE\BoschInputs
  %if !exists($(BOBE_BOSCH_INPUTS_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DIR)
  %endif
  # create BOBE BOSCH Input Data Directory ...\BOBE\BoschInputs\Data
  %if !exists($(BOBE_BOSCH_INPUTS_DATA_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_DATA_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DATA_DIR)
  %endif
  # create BOBE BOSCH Input DataODX Directory ...\BOBE\BoschInputs\DataODX
  %if !exists($(BOBE_BOSCH_INPUTS_DATAODX_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_DATAODX_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DATAODX_DIR)
  %endif
   # create BOBE BOSCH Input DataODX Directory ...\BOBE\BoschInputs\DataODX\Default
  %if !exists($(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DATAODX_DEFAULT_DIR)
  %endif
  # create BOBE BOSCH Input hexmodx Directory ...\BOBE\BoschInputs\hexmodx
  %if !exists($(BOBE_BOSCH_INPUTS_HEXMODX_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_HEXMODX_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_HEXMODX_DIR)
  %endif
  # create BOBE BOSCH Input hexmodx Directory ...\BOBE\BoschInputs\hexmodx\hexmodx_scripts
  %if !exists($(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_DIR)
  %endif
   # create BOBE BOSCH Input Includes Directory ...\BOBE\BoschInputs\Includes
  %if !exists($(BOBE_BOSCH_INPUTS_INCLUDES_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)
  %endif
  # create BOBE BOSCH Input Libraies Directory ...\BOBE\BoschInputs\Libraries
  %if !exists($(BOBE_BOSCH_INPUTS_LIBRARIES_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
  %endif
  # create BOBE Includes directory ...\BOBE\BuildOutput
  %if !exists($(BOBE_OUTPUT_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OUTPUT_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OUTPUT_DIR)
  %endif
  # create BOBE\BuildOutput\ODX directory
  %if !exists($(BOBE_OUTPUT_ODX_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OUTPUT_ODX_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OUTPUT_ODX_DIR)
  %endif
  # create BOBE\BuildOutput\standard directory
  %if !exists($(BOBE_OUTPUT_STANDARD_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OUTPUT_STANDARD_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OUTPUT_STANDARD_DIR)
  %endif
  # create BOBE\BuildOutput\standard_Executable_file directory
  %if !exists($(BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OUTPUT_STANDARD_EXECUTABLE_FILE_DIR)
  %endif
  # create BOBE Documentation directory ...\BOBE\Documentation
  %if !exists($(BOBE_BUILD_DOCU_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_BUILD_DOCU_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_BUILD_DOCU_DIR)
  %endif
   # create BOBE Includes directory ...\BOBE\INC
  %if !exists($(BOBE_OEM_INC_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OEM_INC_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OEM_INC_DIR)
  %endif
  # create BOBE Includes directory ...\BOBE\Includes
  %if !exists($(BOBE_INCLUDES_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_INCLUDES_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_INCLUDES_DIR)
  %endif
  # create BOBE Includes directory ...\BOBE\SRC
  %if !exists($(BOBE_OEM_SRC_DIR))
      $(MAK_ECHO) %exec echo Creating directory $(BOBE_OEM_SRC_DIR)
      $(MAK_ECHO) %exec mkdir $(BOBE_OEM_SRC_DIR)
  %endif
# -------------------------------------------------------------------------------------------------
   %echo
   %echo $(.TARGET) done.
   %echo
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------

#**************************************************************************************************
# Bosch OEM Build Environment
#**************************************************************************************************
bobe_set : bobe_docu
   %echo
   %echo Target $(.TARGET) ....
   %echo


# don't build for t1
%if "$(ENABLE_XXGURU)" != "TRUE"
   $(MAK_ECHO) %exec copy $(BOBE_DIR)\BOBE.exe $(BOBE_PROJECT_BASE_DIR)\BOBE.exe
   ### create batch file for settings ###
   $(MAK_ECHO) %setenv OUTPUT_BAT = $(BOBE_PROJECT_BASE_DIR)\settings.bat
   $(MAK_ECHO) cmd /c type > $(OUTPUT_BAT) << $(OUTPUT_BAT,B,>.rsp)
set "USE_OEM_SETTINGS=YES"

if "%USE_OEM_SETTINGS%" equ "YES" (

	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	rem ~~~ Please, fill in your settings! ~~~
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	rem ~~ Path to your ASC/SAC project with */SRC/*.c and */INC/*.h files (other files and other paths will be ignored) ~~
	set "WORKPATH=$(BOBE_PROJECT_BASE_DIR_ATOEM)"
	rem ~~ Target name of the library file that will be generated (without path or file extension) ~~
	set "NAMELIB=$(BOBE_PROJECT_NAMELIB)"
	rem ~~	Path to a folder for additional includes, please copy all includes to this folder ~~
	set "CUSTINCPATH=%WORKPATH%\$(BOBE_OEM_INC_FOLDER_NAME)"
	rem ~~	Path to Greenhills RH850 compiler (a folder containing ccrh850.exe) ~~
	set "GHSPATH=$(BOBE_PROJECT_GHSPATH_ATOEM)"
	rem ~~	Path to compiler license server (optional if license server used) ~~
	set "GHS_LMHOST=$(BOBE_PROJECT_GHS_LMHOST_ATOEM)"
	rem ~~	Name of compiler used by license server (optional if license server used) ~~
	set "GHS_LMWHICH=$(BOBE_PROJECT_GHS_LMWHICH_ATOEM)"
	rem ~~	Software version number that will be used for ODX Create (shall have a length of 4 characters) ~~
	set "SWVERCUST=$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT)"
	rem ~~	Path to a python interpreter version 3.9.5 (including the name of the executable) ~~
	set "PYTHONCMD=$(BOBE_PROJECT_PYTHONCMD_ATOEM)"
	rem ~~ Path to an A2L updater command (including the name of the executable) ~~
	set "A2LUPDATERCMD=$(BOBE_PROJECT_A2LUPDATERCMD_ATOEM)"
	rem ~~ Path to your a2l merge and update folder ~~
	set "A2LMERGEUPDATEPATH=%WORKPATH%\A2L\merge_update"
	rem ~~ Path to your a2l merge folder ~~
	set "A2LMERGEPATH=%WORKPATH%\A2L\merge"
	rem ~~ Path to an ODXCreate command (a folder containing ODXCreate.exe) ~~
	set "ODXCREATEPATH=$(BOBE_PROJECT_ODXCREATEPATH_ATOEM)"
	rem ~~ Path to MSVC Compiler (a folder containing bin/cl.exe or bin/amd64/cl.exe depending on <MSVCBITOPT>) ~~
	set "MSVCPATH=$(BOBE_PROJECT_MSVCPATH_ATOEM)"
	rem ~~ Architecture to use for MSVC Compiler: Either 32 for x86 or 64 for amd64 ~~
	set "MSVCBITOPT=$(BOBE_PROJECT_MSVCBITOPT_ATOEM)"
) else (
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	rem ~~~ Please, don't change this settings! ~~~
	rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	rem ~~	Path to your project with *.c and *.h files (other files will be ignored) ~~
	set "WORKPATH=$(BOBE_PROJECT_BASE_DIR)"
	rem ~~	Target name of the library file that will be generated (without path or file extension) ~~
	set "NAMELIB=$(BOBE_PROJECT_NAMELIB)"
%if $(BOBE_CUSTOMER_INCLUDEPATH_USED) == YES
	rem ~~	Path to a folder for additional includes, please copy all includes to this folder ~~
	set "CUSTINCPATH=%WORKPATH%\$(BOBE_INCLUDES_FOLDER_NAME)"
%endif
	rem ~~	Path to Greenhills RH850 compiler (a folder containing ccrh850.exe) ~~
	set "GHSPATH=$(BOBE_PROJECT_GHSPATH)"
	rem ~~	Path to compiler license server (optional if license server used) ~~
	set "GHS_LMHOST=%$(BOBE_PROJECT_GHS_LMHOST)%"
	rem ~~	Name of compiler used by license server (optional if license server used) ~~
	set "GHS_LMWHICH=$(BOBE_PROJECT_GHS_LMWHICH)"
	rem ~~	Software version number that will be used for ODX Create (shall have a length of 4 characters) ~~
	set "SWVERCUST=$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT)"
	rem ~~	Path to a python interpreter version 3.9.5 (including the name of the executable) ~~
	set "PYTHONCMD=$(BOBE_PROJECT_PYTHONCMD)"
	rem ~~ Path to an A2L updater command (including the name of the executable) ~~
	set "A2LUPDATERCMD=$(BOBE_PROJECT_A2LUPDATERCMD)"
	rem ~~ Path to your a2l merge and update folder ~~
	set "A2LMERGEUPDATEPATH=%WORKPATH%\A2L\merge_update"
	rem ~~ Path to your a2l merge folder ~~
	set "A2LMERGEPATH=%WORKPATH%\A2L\merge"
	rem ~~ Path to an ODXCreate command (a folder containing ODXCreate.exe) ~~
	set "ODXCREATEPATH=$(BOBE_PROJECT_ODXCREATEPATH)"
	rem ~~ Full path to a signature key file (Flashdatensicherheit) that will be used for ODX Create ~~
	set "FDSSIGKEYFILE=%WORKPATH%\$(BOBE_PROJECT_FDSSIGKEYFILEM)"
	rem ~~ Full path to a project config file (Flashdatensicherheit) that will be used for ODX Create ~~
	set "FDSPRJCFGFILE=%WORKPATH%\$(BOBE_PROJECT_FDSPRJCFGFILE)"
	rem ~~ Path to MSVC Compiler (a folder containing bin/cl.exe or bin/amd64/cl.exe depending on <MSVCBITOPT>) ~~
	set "MSVCPATH=$(BOBE_PROJECT_MSVCPATH)"
	rem ~~ Architecture to use for MSVC Compiler: Either 32 for x86 or 64 for amd64 ~~
	set "MSVCBITOPT=$(BOBE_PROJECT_MSVCBITOPT)"
)
<< NOKEEP
%endif
   %echo
   %echo $(.TARGET) done.
   %echo

bobe_lib : bobe_set
   %echo
   %echo Target $(.TARGET) ....
   %echo

# don't build for t1
%if "$(ENABLE_XXGURU)" != "TRUE"
    ### create batch file for library creation ###
    # create BOBE directory and copy inputs
    %if $(BOBE_INCLUDES_USED) == YES
       %foreach HEADER_FILE in $(BOBE_HEADER_FILES)
           $(MAK_ECHO) %set HF=$(HEADER_FILE,S/: ?*$$//,S/^"//)
           %if !exists($(HF))
             %echo *------------------------------------------------------------------------------
             %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
             %echo Warning: Header file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)!
             %echo Warning: Header file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
             %echo $(HF) not found!
             %echo $(HF) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
             %echo *------------------------------------------------------------------------------
             %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
          %else
		     $(MAK_ECHO) %echo copy $(HF) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)
             $(MAK_ECHO) %exec copy $(HF) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)
          %endif
       %end
    %endif

    %if $(BOBE_CUSTOMER_INCLUDEPATH_USED) == YES
        $(MAK_ECHO) %set INCLUDEPATH_CUSTPATH =%CUSTINCTXT%
    %else
        $(MAK_ECHO) %set INCLUDEPATH_CUSTPATH =
    %endif
    %if $(BOBE_INCLUDES_USED) == YES
        $(MAK_ECHO) %set INCLUDEPATH_BOSCH =-I %INCPATH%
    %else
        $(MAK_ECHO) %set INCLUDEPATH_BOSCH =
    %endif
    %if $(BOBE_CUSTOMER_INCLUDES_USED) == YES
        $(MAK_ECHO) %set INCLUDEPATH_CUST =-I %CUSTHPATH%
    %else
        $(MAK_ECHO) %set INCLUDEPATH_CUST =
    %endif

   # substitute path of compiler
   $(MAK_ECHO) %set GHS_COMPILER_INCL__env =  $(GHS_COMPILER_INCL:$(CROSS_COMPILER_PATH_LOCAL)=%GHSPATH%\)
   # substitute dual debug with no debug - like requested from customer
   $(MAK_ECHO) %set CFLAGS__env_nosda =  $(CFLAGS,S'-sda\=all'-sda\=0')
   $(MAK_ECHO) %set CFLAGS__env =  $(CFLAGS__env_nosda:-g=--no_debug)
   $(MAK_ECHO) %set CFLAGS__env =  $(CFLAGS__env:-dual_debug=)
   $(MAK_ECHO) %set CFLAGS__env =  $(CFLAGS__env) $(BOBE_ADD_COMPFLAG)
   $(MAK_ECHO) %set CFLAGS__env_debug =  $(CFLAGS__env_nosda) $(BOBE_ADD_COMPFLAG)
   $(MAK_ECHO) %set CFLAGS__env_tmp =  $(CFLAGS__env_nosda:-g=-G)
   $(MAK_ECHO) %set CFLAGS__env_stack =  $(CFLAGS__env_tmp) -gs $(BOBE_ADD_COMPFLAG)
   # substitute path of map file
   $(MAK_ECHO) %set C_LIB_BUILDER_FLAGS__env =  $(C_LIB_BUILDER_FLAGS:$(MAP_FILE)=%MAPPATH%)
   # create batch file for lib creation
   $(MAK_ECHO) %setenv OUTPUT_BAT = $(BOBE_PROJECT_BASE_DIR)\create_lib.bat

   $(MAK_ECHO) cmd /c type > $(OUTPUT_BAT) << $(OUTPUT_BAT,B,>.rsp)
@echo off


rem 1. check for valid targets

set LIBTYPE=
if "%1" equ "standard" set "LIBTYPE=%1"
if "%1" equ "standard_executable_file" set "LIBTYPE=%1"
if "%1" equ "stack" set "LIBTYPE=%1"
if "%1" equ "sillib" set "LIBTYPE=%1"
#if "%1" equ "scalexio" set "LIBTYPE=%1"
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

%if $(BOBE_INCLUDES_USED) == YES
rem Path to needed input files from Bosch
set "INPPATH=.\$(BOBE_BOSCH_INPUTS_FOLDER_NAME)"
rem Path to Include files
set "INCPATH=%INPPATH%\$(BOBE_INCLUDES_FOLDER_NAME)"
%endif

%if $(BOBE_CUSTOMER_INCLUDES_USED) == YES
rem Path to header files
set "CUSTHPATH=%PATHOUT%\HFiles"
%endif

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
	set "COMPFLAGS=$(GHS_COMPILER_INCL__env) $(CFLAGS__env_stack) $(CDEFINES)"
) else if "%LIBTYPE%" equ "scalexio" (
	set "COMPFLAGS= -fno-common -nostdinc -fno-strict-aliasing -pipe -march=sandybridge -mno-avx -msse2 -mfpmath=sse -fomit-frame-pointer -ffast-math -Werror-implicit-function-declaration -mstackrealign -O2 -finline-functions -D_INLINE -I. -isystem"%QNXPATH%\target\qnx6\usr\include\c++\5.2.0" -isystem"%QNXPATH%\target\qnx6\usr\include\c++\5.2.0\i486-pc-nto-qnx6.5.0" -isystem"%QNXPATH%\target\qnx6\usr\include" -isystem"%QNXPATH%\host\win32\x86\usr\lib\gcc\i486-pc-nto-qnx6.5.0\5.2.0\include" -D_DSx86_32 -D_DS2510 -DDS_PLATFORM_X86 -DDS_PLATFORM_LE -DDS_PLATFORM_POSIX -DDS_PLATFORM_QNX -DDS_PLATFORM_CN -DDS_PLATFORM_HCN -DDS_PLATFORM_SMART -DDS_PLATFORM_SMARTHIL -DDS_PLATFORM_SMP  -D__INTEGRATION__=\4.2p4\ -DDS_RTLIB_VERSION_MAR=4 -DDS_RTLIB_VERSION_MIR=2 -DDS_QNX_VERSION=650 -DQNX_VERSION=6.5.0 -DDATA_PORT_ACCESS_POINT_API_VERSION=2 -D__HOSTNAME__=\SGMZ00GV\ -D_PARFROMOBJ_ -D_HIL_ -DTS_ARCH_FAMILY=TS_RH850 -DTS_ARCH_DERIVATE=TS_OS_RH850P1M -D__RH850P1M__ -DOS_TOOL=OS_ghs -DOS_CPU=OS_RH850P1M -DOS_ARCH=OS_RH850 -DOS_RELEASE_SUFFIX=OS_AS403 -DOS_MEMMAP=0 -DOS_USE_CLZ_QUEUE_ALGORITHM=1 -DOS_USE_OPTIMIZATION_OPTIONS -DOS_HAS_MPU=1 -DOS_HAS_SW_VECTORMODE -DOS_KERNEL_TYPE=OS_MICROKERNEL -DMK_CPU=MK_RH850P1M -DMK_CPUFAMILY=MK_RH850 -DDEM_DONT_PROVIDE_LEGACY_SYMBOLIC_NAMES -DNO_SDK_STUB -DHAVE_SDK -DFEAT_VEHSP_WRAPPER4OLD -DDITHERCONTROLCHECK -DFEAT_CPR_ENDSTOP -DFEAT_STEERINGFEELCOORDINATOR_RG1 -DFEAT_SAFETYCONTROLLER -DFEAT_TORQUESENSORFALLBACK -DFEAT_FADEOUT -DFEAT_MOTORTORQUELIMITER -DMATHLIBRARY_NO_INLINE -DFEAT_MATHLIBRARY -DFEAT_ALTCALC -DFEAT_ALTCALC_WORM_GEAR_ALTERATION -D_lint -DSIL -U_Pragma -D_Pragma=// -DRB_PRAGMA=// -D_Bool=char -D__ghs_c_int__=int -DMK_NTASKS=OS_NUM_TASKS -DMK_TOOL=MK_gnu -DOS_GETSET_BSEL -DOS_ResumeInterrupts -DPRQA_MESSAGES_OFF=//NotNeeded -DPRQA_MESSAGES_ON=//NotNeeded -D__asm=//__asm -D__inline__="" -DEB_STATIC_CHECK -D_INTERRUPT_="" -DVECU_LOGGER_ON -DSIL_USE_OEM_LIB=0 -D__const="" -Dconst="" -Dinline=""  "
) else (
	set "COMPFLAGS=$(GHS_COMPILER_INCL__env) $(CFLAGS__env) $(CDEFINES)"
)

rem DON'T CHANGE!!! ~ compiler flags
set "LIBBUILDERFLAGS=$(C_LIB_BUILDER_FLAGS__env)"

%if $(BOBE_CUSTOMER_INCLUDEPATH_USED) == YES
rem check customer includes
if "%CUSTINCPATH%" equ "" (
	set "CUSTINCTXT= "
) else (
	set "CUSTINCTXT=-I %CUSTINCPATH%"
)
%endif




rem 3. prepare environment

call :clean_folder "%PATHOUT%" "library" "%LIBPATHNAME%.*" %RAMROMSIZETXT_SWC% %RAMROMSIZETXT_MODULE% "tmpcinp.txt"
call :clean_folder "%LOGPATH%" "build log" "CreateLib.log" "Error.log"
%if $(BOBE_CUSTOMER_INCLUDES_USED) == YES
call :clean_folder "%CUSTHPATH%" "customer header" "*.*"
%endif
call :clean_folder "%OBJPATH%" "object" "*.*"


rem 4.check for external tools

if "%LIBTYPE%" equ "sillib" (
	call :check_exist %OEM_VC_BAT% || goto :finish_error
	call :check_exist %OEM_MSCL% || goto :finish_error
	for /L %%i in (0,1) do (call :subroutine_initmsvc "%%i")
) else if "%LIBTYPE%" equ "scalexio" (
	call :check_exist %QNXPATH%\ntox86-gcc.exe || goto :finish_error
) else (
	call :check_exist %GHSPATH%\$(CROSS_COMP_NAME).exe || goto :finish_error
)
call :echo2


rem 5. collect sources (h and c files)

%if $(BOBE_CUSTOMER_INCLUDES_USED) == YES
call :echo2 Search for header files in %WORKPATH%
call :echo2
%ifdef BOBE_CUSTOMER_INCLUDEFOLDER_NAME
set CURRWORKPATH=%cd%
cd /D %WORKPATH%
rem for /D: Wildcards must be used.
for /D /r %%i in ("*$(BOBE_CUSTOMER_INCLUDEFOLDER_NAME)") do (call :subroutine_h_dir "%%i")
cd /D %CURRWORKPATH%
%else
forfiles /p %WORKPATH% /s /m *.h /c "cmd /c copy @path %CUSTHPATH% >NUL"
%endif
dir /B %CUSTHPATH%
dir /B %CUSTHPATH% >> %LOGTMP%
%endif

call :echo2 Search for c files in %WORKPATH%
call :echo2
%ifdef BOBE_CUSTOMER_SOURCEFOLDER_NAME
call :clean_file %PATHOUT%\tmpcinp.txt
set CURRWORKPATH=%cd%
cd /D %WORKPATH%
rem for /D: Wildcards must be used.
for /D /r %%i in ("*$(BOBE_CUSTOMER_SOURCEFOLDER_NAME)") do (call :subroutine_c_dir "%%i")
cd /D %CURRWORKPATH%
%else
forfiles /p %WORKPATH% /s /m *.c /c "cmd /c echo @path >> %PATHOUT%\tmpcinp.txt"
%endif
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
		call :echo2 %GHSPATH%\$(CROSS_COMP_NAME).exe %%i -archive %LIBBUILDERFLAGS% -o %LIBPATHNAMEFULL%
		%GHSPATH%\$(CROSS_COMP_NAME).exe %%i -archive %LIBBUILDERFLAGS% -o %LIBPATHNAMEFULL% >> %LOGTMP% 2>&1
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

%if $(BOBE_CUSTOMER_INCLUDES_USED) == YES
%ifdef BOBE_CUSTOMER_INCLUDEFOLDER_NAME
:subroutine_h_dir
set tmphfolder=%~1
set last=%~1
set last=%last:\= %
for %%a in (%last%) do set last=%%a
set last=%last: =%
if "%last%" == "$(BOBE_CUSTOMER_INCLUDEFOLDER_NAME)" (
	forfiles /p %tmphfolder% /s /m *.h /c "cmd /c copy @path %CUSTHPATH% >NUL"
)
exit /b 0
%endif
%endif

%ifdef BOBE_CUSTOMER_SOURCEFOLDER_NAME
:subroutine_c_dir
set tmpcfolder=%~1
set last=%~1
set last=%last:\= %
for %%a in (%last%) do set last=%%a
set last=%last: =%
if "%last%" == "$(BOBE_CUSTOMER_SOURCEFOLDER_NAME)" (
	forfiles /p %tmpcfolder% /s /m *.c /c "cmd /c echo @path >> %PATHOUT%\tmpcinp.txt"
)
exit /b 0
%endif

:subroutine_c
set "tmpcfile=%~1"
for /F %%i in ("%tmpcfile%") do @set tmpcfileBase=%%~ni
set /a CNTCFILES+=1
if "%LIBTYPE%" equ "scalexio" (
	call :echo2 %QNXPATH%\ntox86-gcc.exe %COMPFLAGS% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) -c %tmpcfile% -o %OBJPATH%\%tmpcfileBase%.lo86
	%QNXPATH%\ntox86-gcc.exe %COMPFLAGS% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) -c %tmpcfile% -o %OBJPATH%\%tmpcfileBase%.lo86 >> %LOGTMP% 2>&1
) else if "%LIBTYPE%" equ "sillib" (
	call :echo2 %OEM_MSCL% %OEM_MSFLAGS% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) %tmpcfile% /Fo%OBJPATH%
	%OEM_MSCL% %OEM_MSFLAGS% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) %tmpcfile% /Fo%OBJPATH%\\ >> %LOGTMP% 2>&1
) else (
	call :echo2 %GHSPATH%\$(CROSS_COMP_NAME).exe %COMPFLAGS% -object_dir=%OBJPATH% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) -c %tmpcfile%
	%GHSPATH%\$(CROSS_COMP_NAME).exe %COMPFLAGS% -object_dir=%OBJPATH% $(INCLUDEPATH_BOSCH) $(INCLUDEPATH_CUST) $(INCLUDEPATH_CUSTPATH) -c %tmpcfile% >> %LOGTMP% 2>&1
)
exit /b 0

:subroutine_o
set /a CNTOFILES+=1
echo Seen object file %~1 >> %LOGTMP%
exit /b 0

<<NOKEEP
%endif
   %echo
   %echo ... $(.TARGET) done.
   %echo


#################################################################################
#
#
#                  BOBE
#
#################################################################################

bobe : bobe_lib $(SEG_FILE)  $(VARID_BOBE_LIB)
   %echo
   %echo Target $(.TARGET) ...
   %echo

    ### create batch file for executable creation ###
    # create BOBE directories
    # $(MAK_ECHO) %set TMP_OBJ_PATH = $(BOBE_PROJECT_BASE_DIR)__Tmp_ObjFiles
    # %if !exists($(TMP_OBJ_PATH))
        # %echo Creating directory $(TMP_OBJ_PATH)
        # $(MAK_ECHO) %exec mkdir $(TMP_OBJ_PATH)
    # %else
        # del /q $(TMP_OBJ_PATH)\*.*
    # %endif
    %if !exists($(BOBE_BOSCH_INPUTS_DIR))
        %echo Creating directory $(BOBE_BOSCH_INPUTS_DIR)
        $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DIR)
    %endif
    %if !exists($(BOBE_BOSCH_INPUTS_LIBRARIES_DIR))
        %echo Creating directory $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
        $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
    %endif
    %if !exists($(BOBE_OUTPUT_ODX_DIR))
        %echo Creating directory $(BOBE_OUTPUT_ODX_DIR)
        $(MAK_ECHO) %exec mkdir $(BOBE_OUTPUT_ODX_DIR)
    %endif

    # copy linker segment layer file
    %if !exists($(SEG_FILE)) # TODO need special? $(SEG_FILE,R,>_bobe.ld)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: Link segment layer file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\linkseglayer.ld!
      %echo Warning: Link segment layer file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\linkseglayer.ld! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(SEG_FILE) not found!
      %echo $(SEG_FILE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
	  %echo *------------------------------------------------------------------------------
	  $(MAK_ECHO) %echo copy $(SEG_FILE) to $(BOBE_BOSCH_INPUTS_DIR)\linkseglayer.ld
      $(MAK_ECHO) %exec copy $(SEG_FILE) $(BOBE_BOSCH_INPUTS_DIR)\linkseglayer.ld
   %endif
    # copy lib files
    $(MAK_ECHO) %set ALL_LIBS_LINKER__env =
	# %echo DYN_LIBS: $(DYN_LIBS) STATIC_LIBS: $(STATIC_LIBS) VARID_BOBE_LIB: $(VARID_BOBE_LIB)
   %foreach LIB_FILE in $(DYN_LIBS) $(STATIC_LIBS) $(VARID_BOBE_LIB)
     $(MAK_ECHO) %exec echo LINE 1001
	 $(MAK_ECHO) %exec echo $(LIB_FILE)
     %if ($(LIB_FILE) != $(BOBE_PROJECT_NAMELIB_VOB_DIR))
         %if !exists($(LIB_FILE))
           %echo *------------------------------------------------------------------------------
           %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
           %echo Warning: Library file $(LIB_FILE) not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)!
           %echo Warning: Library file $(LIB_FILE) not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
           %echo *------------------------------------------------------------------------------
           %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %else
		   %echo *------------------------------------------------------------------------------
		   $(MAK_ECHO) %echo copy $(LIB_FILE) to $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
           $(MAK_ECHO) %exec copy $(LIB_FILE) $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
        %endif
        $(MAK_ECHO) %set ALL_LIBS_LINKER__env = $(ALL_LIBS_LINKER__env) %LIBINPPATH%\$(LIB_FILE,F)
     %else
        $(MAK_ECHO) %set ALL_LIBS_LINKER__env = $(ALL_LIBS_LINKER__env) %LIBPATHNAME%.a
     %endif
   %end
    %if !exists($(OEM_A2L_FILE))
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l !
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l ! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found!
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
      %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo copy $(OEM_A2L_FILE) to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
      $(MAK_ECHO) %exec copy $(OEM_A2L_FILE) $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
      $(MAK_ECHO) %set BOBE_A2L_FOR_MERGE = $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
   %endif

   %if !exists($(EPS_DEPLOY_HEX_FILE))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning: reference hex file not found, please copy MANUALLY!
        %echo Warning: reference hex file not found, please copy MANUALLY! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(EPS_DEPLOY_HEX_FILE,A) not found!
        %echo $(EPS_DEPLOY_HEX_FILE,A) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
        %echo *------------------------------------------------------------------------------
        $(MAK_ECHO) %echo copy $(EPS_DEPLOY_HEX_FILE,A) to $(BOBE_BOSCH_INPUTS_DIR)\Data
        $(MAK_ECHO) %exec copy $(EPS_DEPLOY_HEX_FILE,A) $(BOBE_BOSCH_INPUTS_DIR)\Data
   %endif
   %if !exists($(BOBE_C_LINKER_FLAGS_OEM_LIB))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning:  $(BOBE_C_LINKER_FLAGS_OEM_LIB) not found, please copy MANUALLY!
        %echo Warning:  $(BOBE_C_LINKER_FLAGS_OEM_LIB) not found, please copy MANUALLY! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(BOBE_C_LINKER_FLAGS_OEM_LIB,A) not found!
        %echo $(BOBE_C_LINKER_FLAGS_OEM_LIB,A) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
        %echo *------------------------------------------------------------------------------
        $(MAK_ECHO) %echo copy $(BOBE_C_LINKER_FLAGS_OEM_LIB) to $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
        $(MAK_ECHO) %exec copy $(BOBE_C_LINKER_FLAGS_OEM_LIB) $(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)
   %endif
   %if !exists($(BOBE_HEXMODX_DIR))
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: ped exe not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\ped!
      %echo Warning: ped exe not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\ped! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(BOBE_HEXMODX_DIR) not found!
      %echo $(BOBE_HEXMODX_DIR) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
      $(MAK_ECHO) %echo copy  $(TB_TOOLS_DIR)\hexmodx\14.2.0 $(BOBE_HEXMODX_DIR) /E
      $(MAK_ECHO) %exec xcopy $(TB_TOOLS_DIR)\hexmodx\14.2.0 $(BOBE_HEXMODX_DIR) /E
   %endif
   %if !exists($(BOBE_UPDATER_SED))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning: updater sed script not found, please copy MANUALLY!
        %echo Warning: updater sed script not found, please copy MANUALLY! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(BOBE_UPDATER_SED,A) not found!
        %echo $(BOBE_UPDATER_SED,A) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
		%echo *------------------------------------------------------------------------------
		$(MAK_ECHO) %echo copy $(BOBE_UPDATER_SED) to $(BOBE_BOSCH_INPUTS_DIR)\updater.sed
        $(MAK_ECHO) %exec copy $(BOBE_UPDATER_SED) $(BOBE_BOSCH_INPUTS_DIR)\updater.sed
   %endif
      # copy SED
   $(MAK_ECHO) %exec copy $(SED_CMD,A) $(BOBE_BOSCH_INPUTS_DIR)\$(SED_CMD,F)
   $(MAK_ECHO) %exec copy $(SED_CMD,D,>\cygwin1.dll,A) $(BOBE_BOSCH_INPUTS_DIR)\cygwin1.dll
   $(MAK_ECHO) %exec copy $(SED_CMD,D,>\cygintl-3.dll,A) $(BOBE_BOSCH_INPUTS_DIR)\cygintl-3.dll
   $(MAK_ECHO) %exec copy $(SED_CMD,D,>\cygiconv-2.dll,A) $(BOBE_BOSCH_INPUTS_DIR)\cygiconv-2.dll
   # copy python script
   $(MAK_ECHO) %exec copy $(ASC_A2L_MERGE,A) $(BOBE_BOSCH_INPUTS_DIR)\merge.py

      # # generate ped script
   # $(MAK_ECHO) cmd /c type > $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE) << $(.TARGET,R,>.rsp)
# @echo off
# setlocal EnableDelayedExpansion

# REM Instruction
# set /a FOCWORK_BLOCK_LENGTH_DEC= __ghsbegin_CALIBDAT_FOC_FLAS_END - __ghsbegin_CALIBDAT_FOC_FLAS_START +1
# call cmd /c exit /b %FOCWORK_BLOCK_LENGTH_DEC%
# set FOCWORK_BLOCK_LENGTH=%=exitcode%
# set /a CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC= xCalDatHdl_HwLib_CRC_XDU32 -1
# call cmd /c exit /b %CALIBDAT_HWLIB_INIT_DAT_END_CRC_DEC%
# set CALIBDAT_HWLIB_INIT_DAT_END_CRC=%=exitcode%

# C:\Project\BOBE\BoschInputs\hexmodx\bin\HexmodX.cmd ^echo^
# read -in c:\Project\BOBE\BoschInputs\Data\3G1300C3000T01_RG3_X_VARI04_foc13_with_backup_patched.hex -id ID1 ^^
# read -in C:\Project\BOBE\BuildOutput\standard_executable_file\3G1300C3000T01_RG3_X_VARI04_foc13__MQB37W_ASC_SAC_pre.hex -id ID2 -type S19 ^^
# select -id ID2 ^^
# memcopyacross -id ID1 -from __ghsbegin_CALIBDAT_FOC_SETS_START -l  %FOCWORK_BLOCK_LENGTH% -id2 ID2 -to __ghsbegin_CALIBDAT_FOC_SETS_START -o true -fill 0xFF ^^
# select -id ID1 ^^
# memcopyacross -id ID2 -from 0x00048000 -l  0x001B8000 -id2 ID1 -to 0x00048000 -o true -fill 0xFF ^^
# crc32 -startaddress 0x0100A000 -endaddress 0x010DFFFF -outputaddress yDiagSrv_DefaultCrcBackupAppl_gdu32 ^^
# crc32 -startaddress 0x01004000 -endaddress 0x01005FFF -outputaddress yDiagSrv_DefaultCrcBackupSysWork_gdu32 ^^
# crc32 -startaddress 0x009d8000 -endaddress 0x009fffff -outputaddress yDiagSrv_DefaultCrcHsmCode_gdu32 ^^
# crc32 -startaddress __ghsbegin_CALIBDAT_HWLIB_SETS_START -endaddress %CALIBDAT_HWLIB_INIT_DAT_END_CRC% -outputaddress xCalDatHdl_HwLib_CRC_XDU32 ^^
# crc32 -startaddress 0x00048000 -endaddress 0x001FFFFB -outputaddress 0x001FFFFC ^^
# write -out c:\Project\BOBE\BuildOutput\standard_executable_file\3G1300C3000T01_RG3_X_VARI04_foc13_MQB37W_ASC_SAC_StartAtDrive.hex ^^

# exit
# << NOKEEP
# don't build for t1
%if "$(ENABLE_XXGURU)" != "TRUE"
    %if !exists($(BOBE_BOSCH_INPUTS_DIR)\Data)
        %echo Creating directory $(BOBE_BOSCH_INPUTS_DIR)\Data
        $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DIR)\Data
    %endif
    %if !exists($(BOBE_BOSCH_INPUTS_DIR)\hexmodx)
        %echo Creating directory $(BOBE_BOSCH_INPUTS_DIR)\hexmodx
        $(MAK_ECHO) %exec mkdir $(BOBE_BOSCH_INPUTS_DIR)\hexmodx
    %endif
   ##################
   #   copy files   #
   ##################
   %if ("$(BUILD_BOBE_A2L_FLAG)" == "FALSE")
    %if !exists($(OEM_A2L_FILE))
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l !
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l ! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found!
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
	  %echo *------------------------------------------------------------------------------
	  $(MAK_ECHO) %echo copy $(OEM_A2L_FILE) to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
      $(MAK_ECHO) %exec copy $(OEM_A2L_FILE) $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
	  $(MAK_ECHO) %set BOBE_A2L_FOR_MERGE = $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
   %endif
   %if !exists($(BOBE_VOB_VERSION_TXT))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning: BOBE version text file not found, please copy MANUALLY!
        %echo Warning: BOBE version text file not found, please copy MANUALLY! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(BOBE_VOB_VERSION_TXT,A) not found!
        %echo $(BOBE_VOB_VERSION_TXT,A) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
		%echo *------------------------------------------------------------------------------
        $(MAK_ECHO) %echo copy $(BOBE_VOB_VERSION_TXT,A) to $(BOBE_PROJECT_VERSION_TXT)
        $(MAK_ECHO) %exec copy $(BOBE_VOB_VERSION_TXT,A) $(BOBE_PROJECT_VERSION_TXT)
   %endif
   %if !exists($(BOBE_VOB_DOCU_BOBE_PDF))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning: HOW TO BOBE Guide PDF file not found, please copy MANUALLY!
        %echo Warning: OW TO BOBE Guide PDF file not found, please copy MANUALLY! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(BOBE_VOB_DOCU_BOBE_PDF,A) not found!
        %echo $(BOBE_VOB_DOCU_BOBE_PDF,A) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
		%echo *------------------------------------------------------------------------------
        $(MAK_ECHO) %echo copy $(BOBE_VOB_DOCU_BOBE_PDF,A) to $(BOBE_PROJECT_DOCU_BOBE_PDF)
        $(MAK_ECHO) %exec copy $(BOBE_VOB_DOCU_BOBE_PDF,A) $(BOBE_PROJECT_DOCU_BOBE_PDF)
   %endif
   %if !exists($(BOBE_DUMMY_C_IN_VOB))
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo Warning: dummy.c not found, please copy MANUALLY to $(BOBE_OEM_SRC_DIR)!
        %echo Warning: dummy.c not found, please copy MANUALLY to $(BOBE_OEM_SRC_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo $(BOBE_DUMMY_C_IN_VOB) not found!
        %echo $(BOBE_DUMMY_C_IN_VOB) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
        %echo *------------------------------------------------------------------------------
        %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
		%echo *------------------------------------------------------------------------------
        $(MAK_ECHO) %echo copy $(BOBE_DUMMY_C_IN_VOB) to $(BOBE_OEM_SRC_DIR)\dummy.c
        $(MAK_ECHO) %exec copy $(BOBE_DUMMY_C_IN_VOB) $(BOBE_OEM_SRC_DIR)\dummy.c
   %endif


   # copy PED exe to Bosch inputs
   # copy a2l\merge_update to Bosch inputs


  %endif
%endif

%if ($(BOBE_USE_ODX_CREATE) == YES)
   # copy searchandreplace.exe to Bosch inputs
   %if !exists($(SEARCHREPLACEEXE))
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)!
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(SEARCHREPLACEEXE) not found!
      %echo $(SEARCHREPLACEEXE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
     # copy searchandreplace.exe
      $(MAK_ECHO) %exec copy $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_DIR)\searchandreplace.exe
   %endif
      # copy VarAddressPatch.py to Bosch inputs
   %if !exists($(BOBE_ADDRESS_PATCHING_PYTHON_IN_VOB))
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)!
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(BOBE_ADDRESS_PATCHING_PYTHON_IN_VOB) not found!
      %echo $(BOBE_ADDRESS_PATCHING_PYTHON_IN_VOB) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
     # copy searchandreplace.exe
      $(MAK_ECHO) %exec copy $(BOBE_ADDRESS_PATCHING_PYTHON_IN_VOB) $(BOBE_ADDRESS_PATCHING_PYTHON)
   %endif
   %if !exists($(BOBE_HEXMODX_SCRIPTS_TEMPLATE_IN_VOB))
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)!
      %echo Warning: searchandreplace.exe does not exist, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(BOBE_HEXMODX_SCRIPTS_TEMPLATE_IN_VOB) not found!
      %echo $(BOBE_HEXMODX_SCRIPTS_TEMPLATE_IN_VOB) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
     # copy searchandreplace.exe
      $(MAK_ECHO) %exec copy $(BOBE_HEXMODX_SCRIPTS_TEMPLATE_IN_VOB) $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE)
	  $(MAK_ECHO) %echo $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE) BOBE_BLOCK_LAYOUT_NO_OEM_WORK_PLACEHOLDER $(BLOCK_LAYOUT_NO_OEM_WORK) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
	  $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE) BOBE_BLOCK_LAYOUT_NO_OEM_WORK_PLACEHOLDER $(BLOCK_LAYOUT_NO_OEM_WORK) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
   %endif
   # copy Odx file to Bosch inputs
   %if !exists($(EPS_DEPLOY_ODX_OCNF_FILE))
      %if exists($(ODXCREATE_MAKE_FOR_OCNF_DRIVE_CODE))
         $(MAK_ECHO) $(MAKE_CALL) $(ODXCREATE_MAKE_FOR_OCNF_DRIVE_CODE) odx_cfg_gen
      %else
         %echo Warning $(ODXCREATE_MAKE_FOR_OCNF_DRIVE_CODE) does not exist. Cannot create .ocfg file!
         %echo Warning $(ODXCREATE_MAKE_FOR_OCNF_DRIVE_CODE) does not exist. Cannot create .ocfg file! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %endif
   %endif
   ### Remove unnecessary include in the header files
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Os.h               Os_MemMap.h            Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Os_Safe_Cfg.h      Os_Target_Cfg.h        Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Os_Safe_Cfg.h      Os_MemMap.h            Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Platform_Types.h   Platform_Types_Cfg.h   Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Rte.h              Rte_UserCfg.h          Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Rte_ASC_SWC.h      ASC_SWC_MemMap.h       Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Rte_SAC_SWC.h      SAC_SWC_MemMap.h       Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Rte_SAC_SWC.h      Rte_MemMap.h           Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
    $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_BOSCH_INPUTS_INCLUDES_DIR)\Rte_Type.h         iocNeeds.h             Std_Types.h warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)

   %if !exists($(EPS_DEPLOY_ODX_OCNF_FILE))
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo Warning: $(EPS_DEPLOY_ODX_OCNF_FILE) odx config file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\odx_config.ocnf!
      %echo Warning: $(EPS_DEPLOY_ODX_OCNF_FILE) odx config file not found, please copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\odx_config.ocnf! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo $(EPS_DEPLOY_ODX_OCNF_FILE) not found!
      %echo $(EPS_DEPLOY_ODX_OCNF_FILE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      %echo *------------------------------------------------------------------------------
      %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
   %else
      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_ODX_OCNF_FILE)                    $(BOBE_ODXCREATE_ODX_OCNF_FILE)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_ODX_OCNF_FILE)                    $(BOBE_ODXCREATE_ODX_OCNF_FILE)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_SignatureKeyFile)                 $(BOBE_DATAODX_SignatureKeyFile)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_SignatureKeyFile)                 $(BOBE_DATAODX_SignatureKeyFile)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_FDSProjCfgFile)                   $(BOBE_DATAODX_FDSProjCfgFile)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_FDSProjCfgFile)                   $(BOBE_DATAODX_FDSProjCfgFile)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_1000FLASHDATA)                    $(BOBE_BOSCH_INPUTS_DATAODX_DIR)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_1000FLASHDATA)                    $(BOBE_BOSCH_INPUTS_DATAODX_DIR)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_PFT_HEX_PATCH)                    $(BOBE_DATAODX_PFT_HEX_PATCH)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_PFT_HEX_PATCH)                    $(BOBE_DATAODX_PFT_HEX_PATCH)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_BootUpdater)                      $(BOBE_DATAODX_BootUpdater)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_BootUpdater)                      $(BOBE_DATAODX_BootUpdater)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_BU_BootUpdater)                   $(BOBE_DATAODX_BU_BootUpdater)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_BU_BootUpdater)                   $(BOBE_DATAODX_BU_BootUpdater)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Backup_Drive_Bank_A_CMD)          $(BOBE_DATAODX_Backup_Drive_Bank_A_CMD)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Backup_Drive_Bank_A_CMD)          $(BOBE_DATAODX_Backup_Drive_Bank_A_CMD)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Backup_SysHex_CMD)                $(BOBE_DATAODX_Backup_SysHex_CMD)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Backup_SysHex_CMD)                $(BOBE_DATAODX_Backup_SysHex_CMD)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Drive_Bank_A_CMD)                 $(BOBE_DATAODX_Drive_Bank_A_CMD)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Drive_Bank_A_CMD)                 $(BOBE_DATAODX_Drive_Bank_A_CMD)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Drive_Bank_B_CMD)                 $(BOBE_DATAODX_Drive_Bank_B_CMD)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Drive_Bank_B_CMD)                 $(BOBE_DATAODX_Drive_Bank_B_CMD)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Oem_Code_CMD)                     $(BOBE_DATAODX_Oem_Code_CMD)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Oem_Code_CMD)                     $(BOBE_DATAODX_Oem_Code_CMD)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Backup_Drive_Bank_A_HEX_Path)     $(BOBE_DATAODX_Backup_Drive_Bank_A_HEX_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Backup_Drive_Bank_A_HEX_Path)     $(BOBE_DATAODX_Backup_Drive_Bank_A_HEX_Path)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Backup_SysHex_Path)               $(BOBE_DATAODX_Backup_SysHex_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Backup_SysHex_Path)               $(BOBE_DATAODX_Backup_SysHex_Path)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Drive_Bank_A_HEX_Path)            $(BOBE_DATAODX_Drive_Bank_A_HEX_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Drive_Bank_A_HEX_Path)            $(BOBE_DATAODX_Drive_Bank_A_HEX_Path)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Drive_Bank_B_HEX_Path)            $(BOBE_DATAODX_Drive_Bank_B_HEX_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Drive_Bank_B_HEX_Path)            $(BOBE_DATAODX_Drive_Bank_B_HEX_Path)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_Oem_Code_HEX_Path)                $(BOBE_DATAODX_Oem_Code_HEX_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_Oem_Code_HEX_Path)                $(BOBE_DATAODX_Oem_Code_HEX_Path)

      $(MAK_ECHO) %echo copy $(EPS_DEPLOY_HSM_HEX_Path)                     $(BOBE_DATAODX_HSM_HEX_Path)
      $(MAK_ECHO) %exec copy $(EPS_DEPLOY_HSM_HEX_Path)                     $(BOBE_DATAODX_HSM_HEX_Path)

      # substitute odx config data with dummy data
      $(MAK_ECHO) %echo $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_SignatureKeyFile) $(BOBE_PLACEHOLDER_SignatureKeyFile) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_SignatureKeyFile) $(BOBE_PLACEHOLDER_SignatureKeyFile) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_FDSProjCfgFile)   $(BOBE_PLACEHOLDER_FDSProjCfgFile)   warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_1000FLASHDATA)    $(BOBE_PLACEHOLDER_1000FLASHDATA)    warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_BU_BootUpdater)   $(BOBE_PLACEHOLDER_BU_BootUpdater)   warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_HSM_HEX_Path)     $(BOBE_PLACEHOLDER_HSM_HEX_Path)     warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_BootUpdater)      $(BOBE_PLACEHOLDER_BootUpdater)      warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_Odx_Artifacts)    $(BOBE_PLACEHOLDER_Odx_Artifacts)    warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) $(EPS_DEPLOY_ODXPath)          $(BOBE_PLACEHOLDER_ODXPath)          warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)

      #%foreach ODX_SW_PART_NUMBER in $(BOBE_ODX_SOFTWARE_PART_NUMBER)
         #$(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_ODXCREATE_ODX_OCNF_FILE) "$(ODX_SW_PART_NUMBER)" $(BOBE_ODX_SOFTWARE_PART_NUMBER_DEFAULT) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      #%end
      %foreach NUM_BOBE_ODXCREATE_INPUT_FILE in $(BOBE_ODXCREATE_INPUT_CMD_FILES)
        $(MAK_ECHO) %echo $(NUM_BOBE_ODXCREATE_INPUT_FILE)
        $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(NUM_BOBE_ODXCREATE_INPUT_FILE) $(EPS_DEPLOY_Odx_Artifacts)  $(BOBE_PLACEHOLDER_Odx_Artifacts)    warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
        $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(NUM_BOBE_ODXCREATE_INPUT_FILE) $(EPS_DEPLOY_HEX_FILE)       $(BOBE_PLACEHOLDER_HEX_FILE)         warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
        $(MAK_ECHO)       $(SEARCHREPLACEEXE) $(NUM_BOBE_ODXCREATE_INPUT_FILE) $(EPS_DEPLOY_HexmodX_CMD)    $(BOBE_PLACEHOLDER_HexmodX_CMD)      warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
      %end
   %endif
%endif

   # create update.ini for a2l update from elf file
   $(MAK_ECHO) %set MERGEININAME_OEM = a2l_merge.ini
   $(MAK_ECHO) %set MERGEINI_OEM = $(BOBE_BOSCH_INPUTS_DIR)\$(MERGEININAME_OEM)
   %echo [OPTIONS]                        >  $(MERGEINI_OEM)
   %echo DISABLE_SUFFIXES=1               >> $(MERGEINI_OEM)
   # create a2l_updater.ini for a2l update from elf file
   $(MAK_ECHO) %set UPDATERININAME_OEM = a2l_updater.ini
   $(MAK_ECHO) %set UPDATERINI_OEM = $(BOBE_BOSCH_INPUTS_DIR)\$(UPDATERININAME_OEM)
   %echo [OPTIONS]                        >  $(UPDATERINI_OEM)
   %echo MAP_FORMAT=0                     >> $(UPDATERINI_OEM)
   %echo CREATE_ADDRESSES=1               >> $(UPDATERINI_OEM)
   %echo                                  >> $(UPDATERINI_OEM)
   %echo [GREENHILL]                      >> $(UPDATERINI_OEM)
   %echo GHS_REMOVE_UNDERLINES=1          >> $(UPDATERINI_OEM)

   # substitute path of map file
   %echo
   %echo C_ELF_BUILDER_FLAGS $(C_ELF_BUILDER_FLAGS)
   %echo
   %echo MAP_FILE $(MAP_FILE)
   %echo
   %echo %MAPPATH% $(MAPPATH)
   %echo
   $(MAK_ECHO) %set C_ELF_BUILDER_FLAGS__env =  $(C_ELF_BUILDER_FLAGS:$(MAP_FILE)=%MAPPATH%)
   %echo C_ELF_BUILDER_FLAGS__env $(C_ELF_BUILDER_FLAGS__env)
   # substitute dual debug with no debug - like requested from customer
   $(MAK_ECHO) %set CFLAGS__env_nosda =  $(CFLAGS,S'-sda\=all'-sda\=0')
   $(MAK_ECHO) %set CFLAGS__env_tmp =  $(CFLAGS__env_nosda:-g=--no_debug)
   $(MAK_ECHO) %set CFLAGS__env =  $(CFLAGS__env_tmp:-dual_debug=)
   # substitute customer local settings for PED++ parameter
   $(MAK_ECHO) %set PED_PARAMETER__env  = %REFHEXPATHNAME% %PREHEXPATHNAME% %HEXPATHNAME%

   ########################################
   #  create batch file for hex creation  #
   ########################################

    $(MAK_ECHO) %setenv OUTPUT_BAT = $(BOBE_PROJECT_BASE_DIR)\create_exec.bat
    $(MAK_ECHO) cmd /c type > $(OUTPUT_BAT) << $(OUTPUT_BAT,B,>.rsp)

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
set "INPPATH=%cd%\$(BOBE_BOSCH_INPUTS_FOLDER_NAME)"
rem ~~ Path to merger script ~~
set "A2LMERGERCMD=%INPPATH%\merge.py"
rem ~~ Path to Address patching script ~~
set "VARADDRESSPATCHCMD=%INPPATH%\VarAddressPatch.py"


rem ~~ Path to needed input libs from Bosch ~~
set "LIBINPPATH=%INPPATH%\$(ALLLIBS_BOBE_dir)"
rem ~~ Path to linker directives file ~~
set "LDPATH=%INPPATH%\linkseglayer.ld"
set "SEDPATHNAME=%INPPATH%\$(SED_CMD,F)"
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
set "HEXMODXCMDPATHTEMPLATE=%INPPATH%\hexmodx_scripts\$(BOBE_BOSCH_INPUTS_HEXMODX_SCRIPTS_TEMPLATE_NAME)"

rem ~~ name of hex file without extention ~~
set "NAMEHEX=$(PRJ_OUTPUT_NAME)__%NAMELIB%"
rem ~~ Path to map file ~~
set "UPDATERMAPPATHNAME=%PATHOUT%\%NAMEHEX%_update.map"
rem ~~ path to elf file ~~
set "ELFPATHNAME=%PATHOUT%\%NAMEHEX%.elf"
rem ~~ Path to hex files ~~
set "PREHEXPATHNAME=%PATHOUT%\%NAMEHEX%_pre.hex"
set "PREHEXPATHNAME_patched=%PATHOUT%\%NAMEHEX%_patched"
set "HEXPATHNAME=%PATHOUT%\$(BOBE_HEX_FILE_NAME_AT_OEM)"
set "REFHEXPATHNAME=%DATAINPPATH%\$(BOBE_REF_HEX,F)"
rem ~~ Software version number maximum 4 characters ~~
set "SWVERCUST_MIN4CHAR=%SWVERCUST%0000"
set "SWVERCUST_4CHAR=%SWVERCUST_MIN4CHAR:~,4%"

rem ~~ Path to a2l files ~~
set "A2LOEMPATHNAME_MERGED=%PATHOUT%\$(PRJ_OUTPUT_NAME)_Merged.a2l"
rem copy %INPPATH%\$(BOBE_A2L_FOR_MERGE,F) %A2LOEMPATHNAME_MERGED%
copy %INPPATH%\$(BOBE_A2L_FOR_MERGE,F) %A2LOEMPATHNAME_MERGED%
set "A2LOEMPATHNAME_UPDATED=%PATHOUT%\$(PRJ_OUTPUT_NAME)_Updated.a2l"
set "A2LOEMPATHNAME_MERGEDONLY=%PATHOUT%\$(PRJ_OUTPUT_NAME)_MergedOnly.a2l"
set "A2LOEMPATHNAME_FINAL=%PATHOUT%\$(PRJ_OUTPUT_NAME)__%NAMELIB%.a2l"
rem ~~ Path to a2l ini files ~~
set "INIMERGER=%INPPATH%\$(MERGEININAME_OEM)"
set "INIUPDATER=%INPPATH%\$(UPDATERININAME_OEM)"
%if ($(BOBE_USE_ODX_CREATE) == YES)
rem ~~ delete all underlines and spaces and cut postfix to max. 14 signs
set "ODXPOSTFIX=%NAMELIB%"
set "ODXPOSTFIX=%ODXPOSTFIX:_=%"
set "ODXPOSTFIX=%ODXPOSTFIX: =%"
set "ODXPOSTFIX=%ODXPOSTFIX:~0,14%"
set "BOBEODXSWVERSIONNUMBERDEFAULT=$(BOBE_ODX_SOFTWARE_VERSION_NUMBER_DEFAULT)"
set "BOBEODXSWPARTNUMBER=$(BOBE_ODX_SOFTWARE_PART_NUMBER)"
set "BOBEODXSWPARTNUMBER_DEFAULT=$(BOBE_ODX_SOFTWARE_PART_NUMBER_DEFAULT)"

rem ~~ path to odx config ~~
set "ODXCONFIGPATHNAME=%DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)"
set "ADAPTEDODXCONFIGPATHNAME=%ODXPATHOUT%\$(ODX_OCNF_FILE_NAME)"
rem ~~ path to searchandreplace.exe ~~
set "SEARCHREPLACE=%INPPATH%\searchandreplace.exe"
set "BOBEODX_SignatureKeyFile=%DATAODXINPPATH%\$(ODX_SignatureKeyFile_NAME)"
set "BOBEODX_FDSProjCfgFile=%DATAODXINPPATH%\$(ODX_FDSProjCfgFile)"
set "BOBEODX_1000FLASHDATA=%DATAODXINPPATH%\$(ODX_1000FLASHDATA_NAME)"
set "BOBEODX_BootUpdater=%DATAODXINPPATH%\$(ODX_BootUpdater_NAME)"
set "BOBEODX_HSM_HEX_Path=%DATAODXINPPATH%\$(ODX_HSM_HEX_NAME)"
set "BOBEODX_BU_BootUpdater=%DATAODXINPPATH%\$(ODX_BU_BootUpdater_NAME)"
%endif


rem ~~ path to Stack Size log ~~
set "STACK_RESULT=%PATHOUT%\%NAMELIB%_StackSize.log"

rem ~~ DON'T CHANGE!!! ~ compiler flags ~~
set "ELFFLAGS=$(C_ELF_BUILDER_FLAGS__env)"
rem ~~ DON'T CHANGE!!! ~ compiler flags ~~
set "COMPFLAGS=$(CFLAGS__env)"

rem ~~ DON'T CHANGE!!! ~ ELF options ~~
set "ELFOPTIONS="
rem ~~ all libs for linker ~~

set "ALLLIBSLINKER=$(ALL_LIBS_LINKER__env)"





rem 3. prepare environment

call :clean_folder "%PATHOUT%" "output" %STACK_RESULT% "*.dla" "*.dle" "*.dnm" "*.dep" "*.map" "*.elf" "*.hex"
call :clean_folder "%LOGPATH%" "build log" "CreateExec.log" "Error.log"
call :check_exist %LIBPATHNAME%.a || goto :finish_error
call :echo2


rem 4.check for external tools

call :check_exist %LDPATH% || goto :finish_error
call :check_exist %GHSPATH%\$(CROSS_COMP_NAME).exe || goto :finish_error
if "%EXECTYPE%" neq "stack" (
	call :check_exist %GHSPATH%\gsrec.exe || goto :finish_error

	REM TODO
	call :check_exist %REFHEXPATHNAME% || goto :finish_error
)

rem 5. create files and A2L

call :echo2
call :echo2 Create ELF file
call :echo2
call :echo2 %GHSPATH%\$(CROSS_COMP_NAME).exe %COMPFLAGS% %ELFFLAGS% -T %LDPATH% %ELFOPTIONS% -o %ELFPATHNAME% %ALLLIBSLINKER%
%GHSPATH%\$(CROSS_COMP_NAME).exe %COMPFLAGS% %ELFFLAGS% -T %LDPATH% %ELFOPTIONS% -o %ELFPATHNAME% %ALLLIBSLINKER% >> %LOGTMP% 2>&1
call :echo2
call :check_exist %ELFPATHNAME% || goto :finish_error

call :echo2
call :echo2 create MAP file for a2l updater
call :echo2
call :echo2 %GHSPATH%\gnm.exe -p -no_dotdot -h -output %UPDATERMAPPATHNAME%_tmp %ELFPATHNAME%
%GHSPATH%\$(GNM_CMD,F) -p -no_dotdot -h -output %UPDATERMAPPATHNAME%_tmp %ELFPATHNAME%
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
    call :echo2 %SEDPATHNAME% -r s/"ARRAY_SIZE (.*)$$"/"MATRIX_DIM \\1 1 1"/ %A2LOEMPATHNAME_MERGED% into %A2LOEMPATHNAME_MERGED%_fixed
    %SEDPATHNAME% -r s/"ARRAY_SIZE (.*)$$"/"MATRIX_DIM \\1 1 1"/ %A2LOEMPATHNAME_MERGED% > %A2LOEMPATHNAME_MERGED%_fixed
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

    %if ($(BOBE_USE_ODX_CREATE) == YES)
        call :echo2
        call :echo2 Call ODX Create
        call :echo2
        rem ~~ fill in the correct hex input and output directory

        copy %DATAODXINPPATHDEFAULT%\*.cmd  %DATAODXINPPATH%
        copy %DATAODXINPPATHDEFAULT%\*.hex  %DATAODXINPPATH%
        copy %DATAODXINPPATHDEFAULT%\*.ocnf %DATAODXINPPATH%

        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_A_NAME).cmd         $(BOBE_PLACEHOLDER_HEX_FILE)        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_A_NAME).cmd         $(BOBE_PLACEHOLDER_Odx_Artifacts)   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_A_NAME).cmd         $(BOBE_PLACEHOLDER_HexmodX_CMD)     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_B_NAME).cmd         $(BOBE_PLACEHOLDER_HEX_FILE)        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_B_NAME).cmd         $(BOBE_PLACEHOLDER_Odx_Artifacts)   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Bank_B_NAME).cmd         $(BOBE_PLACEHOLDER_HexmodX_CMD)     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Oem_Code_NAME).cmd       $(BOBE_PLACEHOLDER_HEX_FILE)        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Oem_Code_NAME).cmd       $(BOBE_PLACEHOLDER_Odx_Artifacts)   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Drive_Oem_Code_NAME).cmd       $(BOBE_PLACEHOLDER_HexmodX_CMD)     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_Drive_Bank_A_NAME).cmd  $(BOBE_PLACEHOLDER_HEX_FILE)        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_Drive_Bank_A_NAME).cmd  $(BOBE_PLACEHOLDER_Odx_Artifacts)   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_Drive_Bank_A_NAME).cmd  $(BOBE_PLACEHOLDER_HexmodX_CMD)     %HEXMODXCMDPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_SysHex_NAME).cmd        $(BOBE_PLACEHOLDER_HEX_FILE)        %HEXPATHNAME%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_SysHex_NAME).cmd        $(BOBE_PLACEHOLDER_Odx_Artifacts)   %DATAODXINPPATH%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_Backup_SysHex_NAME).cmd        $(BOBE_PLACEHOLDER_HexmodX_CMD)     %HEXMODXCMDPATH%  nowarnings

        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_SignatureKeyFile)     %BOBEODX_SignatureKeyFile%  nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_FDSProjCfgFile)       %BOBEODX_FDSProjCfgFile%    nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_1000FLASHDATA)        %BOBEODX_1000FLASHDATA%     nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_BootUpdater)          %BOBEODX_BootUpdater%       nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_HSM_HEX_Path)         %BOBEODX_HSM_HEX_Path%      nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_BU_BootUpdater)       %BOBEODX_BU_BootUpdater%    nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_Odx_Artifacts)        %DATAODXINPPATH%            nowarnings
        %SEARCHREPLACE% %DATAODXINPPATH%\$(ODX_OCNF_FILE_NAME)  $(BOBE_PLACEHOLDER_ODXPath)              %ODXPATHOUT%                nowarnings

        rem ~~ create the hex files for ODX creation
        call :echo2
        call :echo2
        call %DATAODXINPPATH%\$(ODX_Drive_Bank_A_NAME).cmd
        call %DATAODXINPPATH%\$(ODX_Drive_Bank_B_NAME).cmd
        call %DATAODXINPPATH%\$(ODX_Drive_Oem_Code_NAME).cmd
        call %DATAODXINPPATH%\$(ODX_Backup_Drive_Bank_A_NAME).cmd
        call %DATAODXINPPATH%\$(ODX_Backup_SysHex_NAME).cmd

        rem ~~ hex files for ODX creation done
        for %%X in (%BOBEODXSWPARTNUMBER%) do (
            call :echo2 ~~ Create ODX Software Version %SWVERCUST% with Software Part Number: %%X
            copy %ODXCONFIGPATHNAME% %ADAPTEDODXCONFIGPATHNAME%
            %SEARCHREPLACE% %ADAPTEDODXCONFIGPATHNAME% %BOBEODXSWPARTNUMBER_DEFAULT% %%X  nowarnings
            call :echo2 %ODXCREATEPATH%\ODXCreate.exe %ADAPTEDODXCONFIGPATHNAME%
            call %ODXCREATEPATH%\ODXCreate.exe %ADAPTEDODXCONFIGPATHNAME% >> %LOGTMP% 2>&1
        )
    %endif

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

<< NOKEEP
   %echo
   %echo OEM_LIB_PATH $(OEM_LIB_PATH)
   $(MAK_ECHO) %echo $(SEARCHREPLACEEXE) $(BOBE_PROJECT_CREATE_EXEC_BAT_DIR) $(BOBE_C_LINKER_FLAGS_REPLACE) $(BOBE_C_LINKER_FLAGS_NEW) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
   $(MAK_ECHO) %echo
   $(MAK_ECHO) $(SEARCHREPLACEEXE) $(BOBE_PROJECT_CREATE_EXEC_BAT_DIR) $(BOBE_C_LINKER_FLAGS_REPLACE) $(BOBE_C_LINKER_FLAGS_NEW) warnings $(EPS_DEPLOY_ERRLOG_SearchAndReplace)
   %echo
   %echo $(.TARGET) done!
   %echo

bobe_a2l  : bobe_prepare a2l

   %if ("$(BUILD_BOBE_A2L_FLAG)" == "TRUE")
   %echo
   %echo Target $(.TARGET) ...
   %echo $(OEM_A2L_FILE)
   %echo Build Customer BOBE A2L Files
   %echo
    %if !exists($(OEM_A2L_FILE))
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l !
      $(MAK_ECHO) %echo WARNING! Oem a2l file not found, pleace copy MANUALLY to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l ! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found!
      $(MAK_ECHO) %echo $(OEM_A2L_FILE) not found! >> $(EPS_DEPLOY_BOBE_LOGFILE)
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo *------------------------------------------------------------------------------ >> $(EPS_DEPLOY_BOBE_LOGFILE)
    %else
      %echo *------------------------------------------------------------------------------
      $(MAK_ECHO) %echo copy $(OEM_A2L_FILE) to $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
      $(MAK_ECHO) %exec copy $(OEM_A2L_FILE) $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
      $(MAK_ECHO) %set BOBE_A2L_FOR_MERGE = $(BOBE_BOSCH_INPUTS_DIR)\$(PRJ_OUTPUT_NAME)_OEM.a2l
    %endif
   %endif


bobe_docu : bobe_prepare
   %echo
   %echo Target $(.TARGET) ...
   %echo

# don't build for t1
%if "$(ENABLE_XXGURU)" != "TRUE"
   $(MAK_ECHO) %set ID_TIME_LOG = $(EPS_DEPLOY)\htmlTimeStamp.log
   $(MAK_ECHO) %exec date /T > $(ID_TIME_LOG)
   $(MAK_ECHO) %set HtmlTimeStamp := $(ID_TIME_LOG,@)
   $(MAK_ECHO) $(MAK_ECHO) del /q $(ID_TIME_LOG)

   $(MAK_ECHO) %exec copy $(BOBE_DIR)\favicon.ico $(BOBE_BUILD_DOCU_DIR)\favicon.ico
   $(MAK_ECHO) %exec copy $(BOBE_DIR)\img_bobe_main.png $(BOBE_BUILD_DOCU_DIR)\img_bobe_main.png
   $(MAK_ECHO) %exec copy $(BOBE_DIR)\img_bobe_settings.png $(BOBE_BUILD_DOCU_DIR)\img_bobe_settings.png
   $(MAK_ECHO) %exec copy $(BOBE_DIR)\img_settings.png $(BOBE_BUILD_DOCU_DIR)\img_settings.png
   $(MAK_ECHO) cmd /c type > $(DocuCreationFile) << $(DocuCreationFile,B,>.rsp)
<!DOCTYPE html>
<html lang="en">
<head>
	<style>
		\#bosch_bar {width: 100%; height: 10px; background: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAAKB4ADASIAAhEBAxEB/8QAGwABAQEAAwEBAAAAAAAAAAAAAAECBAUGAwf/xAAtEAEAAQEECQIHAQAAAAAAAAAAAQIDBBExBQYhMjNBcYGxcsESEzRDUWKygv/EABoBAQACAwEAAAAAAAAAAAAAAAABAwIEBQb/xAAjEQEAAQMDAwUAAAAAAAAAAAAAAQIDEQQxMgZxwQUiUWGB/9oADAMBAAIRAxEAPwD8yAaL34AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARyCM4B2AzOYxb7QyAzbxE2NWP4xcax3+z73jhT2cey3+zVv7tnTco7uQINV2FEAUQBRAFEAWcm5z2vm+tW9L0fT3K5Pby8t1PPstx9z4Z5oso9S8ZUiS1LPNMKaknJJyWUlkoqSeaTmvOUlMKaklJWUllCipxb1xI6OPLkXnidnwnJCipmWeTUspVShAUphVUpgDJXCCiE5ZGkE5TFSASNUMrSQst7trRstKMM/ijyw3Y8az9UeUrZ2d9MbRZzGbkIKAjsNEb9t0j3cBz9E71r0j3ROzC5xl2QDBrgAOTo7be49Mu1dXo36j/M+ztBztVzAIGuC4CMpBYEBEOLeOLPZynFvHE7MqN2vqeD5gLnPAAAAdTbTjbWk/tPlla9+rrKPC3JzXMy3o2AGKRMVZAASO+1MtIo0vVRP3LKqmOsYT4iXtXgdV9mnLth+38y985mrjFz8eo9Hqzp8fEz4AGq6gAA81rXV8u53imNk12lNMf17S9K8trnwrP1x4lZb3a+p4PKALnMAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/2Q==")}
		\#bosch_logo {width: 155px; height: 50px; float: right; background: url("data:image/png;base64,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")}

		body {font-family: Arial; font-size: 120%; background-color: Snow; color: Black; padding: 10px 20px 0px 20px; }
		a, a:visited {color: MidnightBlue; }
		dfn {font-style: normal; color: YellowGreen; }
		em {font-style: normal; color: SaddleBrown; }

		body {counter-reset: hl1Counter; }
		.hl1 {counter-reset: hl2Counter; }
		.hl2 {counter-reset: hl3Counter; }
		.hl3 {counter-reset: hl4Counter; }
		.hl2:before {counter-increment: hl2Counter; content: counter(hl2Counter) ". "; }
		.hl3:before {counter-increment: hl3Counter; content: counter(hl2Counter) "." counter(hl3Counter) ". "; }

		.hl1 {padding: 35px 0px 35px 0px; font-size: 4vw; }
		.hl2 {padding: 50px 0px  0px 0px; font-size: 160%; font-weight: bold; }
		.hl3 {padding: 50px 0px  0px 0px; font-size: 130%; font-weight: bold; }

		.nttable tr:hover {background-color: Azure; }
		.ntcopyright {font-size: 80%; text-align: right; }
		.ntlegend {font-size: 70%; column-span: all; }
		.ntfaq {margin-left: 40px; }
		.ntcode {font-family: Courier New; margin-left: 40px; }

		.ntkw { color: Blue; font-weight: bold; }
		.ntfn { color: DeepSkyBlue; }
		.ntstr { color: Red; }
	</style>
	<link rel="icon" href="favicon.ico" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>BOBE</title>
</head>
<body>
<div id="bosch_bar"></div>
<div id="bosch_logo"></div>


<p class="hl1"><b style="color: FireBrick">B</b>osch <b style="color: Red">O</b>EM <b style="color: SteelBlue">B</b>uild <b style="color: SkyBlue">E</b>nvironment</p>
#<p>With this package you get all needed files and information to create a steering library and executable files.</p>
<p>With this package you get all needed files and information to create a steering library.</p>

<p class="hl2">Index</p>
<p>In this document you find the following information:</p>
<ul>
	<li><a href="\#content">Package content</a></li>
	<li><a href="\#usagegui">Usage of BOBE GUI</a></li>
	<li><a href="\#usageman">Manual Usage of BOBE</a></li>
	<li><a href="\#settings">Settings</a></li>
	<li><a href="\#creation">Available processes</a></li>
	<li>&emsp;<a href="\#standardlib">Standard library (no debug)</a></li>
	<li>&emsp;<a href="\#standardexec_file">Standard executeable files (no debug)</a></li>
#	<li>&emsp;<a href="\#standardexec_sent">Standard executeable files (SENT) (no debug)</a></li>
	<li>&emsp;<a href="\#stackmeasurement">Stack measurement</a></li>
	<li>&emsp;<a href="\#simulationlib">Simulation library</a></li>
#	<li>&emsp;<a href="\#scalexio">Scalexio library</a></li>
	<li><a href="\#environment">Target Environment</a></li>
	<li><a href="\#spec">Specifications</a></li>
	<li><a href="\#faq">Pitfalls and FAQ</a></li>
</ul>


<p class="hl2" id="content">Package content</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Used by</th><th>Description</th></tr>
	<tr><td>BOBE.exe</td><td>LI</td><td>The GUI application which is explained in <a href="\#usagegui">Usage of BOBE GUI</a>.</td></tr>
	<tr><td>create_exec.bat</td><td>ES</td><td>Used by the GUI to create executables, can also be directly called for <a href="\#usageman">Manual Usage of BOBE</a>.</td></tr>
	<tr><td>create_lib.bat</td><td>LI</td><td>Used by the GUI to create libraries, can also be directly called for <a href="\#usageman">Manual Usage of BOBE</a>.</td></tr>
	<tr><td>settings.bat</td><td>LI</td><td>All application settings that can be modified by the user.</td></tr>
	<tr><td><a href="../$(BOBE_BOSCH_INPUTS_FOLDER_NAME)" target="_blank">$(BOBE_BOSCH_INPUTS_FOLDER_NAME)/</a></td><td>L</td><td></td></tr>
	<tr><td>&emsp;$(MERGEININAME_OEM)</td><td></td><td>Config file needed for A2L.</td></tr>
	<tr><td>&emsp;$(UPDATERININAME_OEM)</td><td>E</td><td>Config file needed for A2L.</td></tr>
	<tr><td>&emsp;cyg*.dll</td><td>ES</td><td>Cygwin libraries needed for sed.exe.</td></tr>
	<tr><td>&emsp;linkseglayer.ld</td><td>ES</td><td>Link segment layer file.</td></tr>
	<tr><td>&emsp;merge.py</td><td>E</td><td>A2L merge helper python script.</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td>&emsp;odx_config.ocnf</td><td>E</td><td>Config file for ODX creation.</td></tr>
%endif
	<tr><td>&emsp;pedscript.ped</td><td>E</td><td>Rule set for ped.</td></tr>
	<tr><td>&emsp;searchandreplace.exe</td><td>E</td><td>Simple search&amp;replace command.</td></tr>
	<tr><td>&emsp;sed.exe</td><td>ES</td><td>Complex search&amp;replace command from the Unix world.</td></tr>
	<tr><td>&emsp;updater.sed</td><td>ES</td><td>The search&amp;replace rule set.</td></tr>
	<tr><td>&emsp;<a href="../$(BOBE_BOSCH_INPUTS_FOLDER_NAME)/Data" target="_blank">Data/</a></td><td>E</td><td></td></tr>
	<tr><td>&emsp;&emsp;$(BOBE_REF_HEX,F)</td><td>E</td><td>Reference hex file.</td></tr>
	<tr><td>&emsp;ped/</td><td>E</td><td>PED++ application.</td></tr>
%if ($(BOBE_INCLUDES_USED) == YES)
	<tr><td>&emsp;<a href="../$(BOBE_BOSCH_INPUTS_FOLDER_NAME)/$(BOBE_INCLUDES_FOLDER_NAME)" target="_blank">$(BOBE_INCLUDES_FOLDER_NAME)/</a></td><td>LI</td><td>Include files from Bosch.</td></tr>
%foreach HEADER_FILE in $(BOBE_HEADER_FILES)
	<tr><td>&emsp;&emsp;$(HEADER_FILE,S/: ?*$$//,S/^"//,F)</td><td>LESIX</td><td>$(HEADER_FILE,S/^?*: //,S/"$$//).</td></tr>
%endfor
%endif
	<tr><td>&emsp;<a href="../$(BOBE_BOSCH_INPUTS_LIBRARIES_DIR)" target="_blank">$(ALLLIBS_BOBE_dir)/</a></td><td>ES</td><td>Various libraries.</td></tr>
%foreach LIB_FILE in $(DYN_LIBS)
	<tr><td>&emsp;&emsp;$(LIB_FILE,F)</td><td>ES</td><td>Dynamic library (specific for this release).</td></tr>
%endfor
%foreach LIB_FILE in $(STATIC_LIBS)
	<tr><td>&emsp;&emsp;$(LIB_FILE,F)</td><td>ES</td><td>Static library (under version control).</td></tr>
%endfor
%foreach LIB_FILE in $(VARID_BOBE_LIB)
	<tr><td>&emsp;&emsp;$(LIB_FILE,F)</td><td>ES</td><td>VarID BOBE version.</td></tr>
%endfor
	<tr><td><a href="../BuildOutput" target="_blank">BuildOutput/</a></td><td>L</td><td>All build results will appear here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard" target="_blank">standard/</a></td><td>L</td><td>Build results for Standard library (no debug).</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_executable_file" target="_blank">standard_executable_file/</a></td><td>E</td><td>Build results for Standard executeable files (no debug).</td></tr>
#	<tr><td>&emsp;<a href="../BuildOutput/standard_SENT" target="_blank">standard_SENT/</a></td><td>E</td><td>Build results for Standard executeable files (SENT) (no debug).</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/stack" target="_blank">stack/</a></td><td>S</td><td>Build results for Stack measurement.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/sillib" target="_blank">sillib/</a></td><td>I</td><td>Build results for Simulation library.</td></tr>
#	<tr><td>&emsp;<a href="../BuildOutput/scalexio" target="_blank">scalexio/</a></td><td>X</td><td>Build results for Scalexio library.</td></tr>
	<tr><td><a href="../Documentation" target="_blank">Documentation/</a></td><td></td><td>Contains this documentation.</td></tr>
	<tr><td>&emsp;documentation.html</td><td></td><td>This documentation.</td></tr>
	<tr><td>&emsp;favicon.ico</td><td></td><td>Icon for the documentation.html file.</td></tr>
	<tr><td>&emsp;img*.png</td><td></td><td>Images for the documentation.html file.</td></tr>
	<tr><td class="ntlegend">&nbsp;</td></tr>
	<tr><td></td><td class="ntlegend">L == <a href="\#standardlib">Standard library (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">E == <a href="\#standardexec_file">Standard executeable files (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">S == <a href="\#stackmeasurement">Stack measurement</a></td></tr>
#	<tr><td></td><td class="ntlegend">I == <a href="\#simulationlib">Simulation library</a></td></tr>
#	<tr><td></td><td class="ntlegend">X == <a href="\#scalexio">Scalexio library</a></td></tr>
</table>


<p class="hl2" id="usagegui">Usage of BOBE GUI</p>
<p>To create the library and executable files, please do the following:</p>
<ol>
	<li>Extract the zipped folder to a directory of your choice.</li>
	<li>Start the user GUI by double clicking on <em>BOBE.exe</em>.</li>
	<li>If you already configured BOBE, you can skip to step 9.</li>
	<li>Change to tab <em>Settings &amp; Help</em>:<br/><img src="img_bobe_settings.png" alt=""/></li>
	<li>Click on <em>Open Settings in setting.bat</em>.</li>
	<li>Notepad will open the file <em>setting.bat</em>.</li>
	<li>Change all required settings as described in the <a href="\#settings">Settings section</a>.</li>
	<li>Change back to tab <em>Creation</em>.</li>
	<li>Choose the required process as described in the <a href="\#creation">Available Process section</a>:<br/><img src="img_bobe_main.png" alt=""/></li>
	<li>Click on <em>Create</em>.</li>
	<li>A DOS window will open and executd the desired steps.</li>
	<li>Once the build has been finished, confirm by pressing any key.</li>
	<li>You find the generated files in a subfolder of <a href="../BuildOutput" target="_blank">BuildOutput</a>. The corresponding output folder will be opened automatically.</li>
</ol>
<p>You find all warnings and errors in the <em><a href="../BuildOutput" target="_blank">BuildOutput</a>/&lt;selected process&gt;/Logs</em> folder.<br/>


<p class="hl2" id="usageman">Manual Usage of BOBE</p>
<p>To create the library and executable files manually or from within user defined scripts, please do the following:</p>
<ol>
	<li>Extract the zipped folder to a directory of your choice.</li>
	<li>If you already configured BOBE, you can skip to step 5.</li>
	<li>Open the file <em>setting.bat</em> in your favorite text editor.</li>
	<li>Change all required settings as described in the <a href="\#settings">Settings section</a>.</li>
	<li>Open a command prompt or edit your user script.</li>
	<li>Based on the required process as described in the <a href="\#creation">Available Process section</a> you can now use <em>create_lib.bat &lt;selected process&gt;</em>.</li>
	<li>You find the generated files in a subfolder of <a href="../BuildOutput" target="_blank">BuildOutput</a>.</li>
	<li>You can see that the process was successful if a file named <em>CreateLib.log</em> exists in the <em><a href="../BuildOutput" target="_blank">BuildOutput</a>/&lt;selected process&gt;/Logs</em> folder.</li>
	<li>Depending on the process you may now have to use <em>create_exec.bat &lt;selected process&gt;</em>.</li>
	<li>You can see that this process also was successful if a file named <em>CreateExec.log</em> exists in the <em><a href="../BuildOutput" target="_blank">BuildOutput</a>/&lt;selected process&gt;/Logs</em> folder.</li>
</ol>
<p>Example for a manual build of the <a href="\#standardexec_file">Standard executeable files </a> process:</p>
<pre class="ntcode">
<span class="ntkw">del</span> /q BuildOutput\standard_executable_file\Logs\CreateLib.log
<span class="ntkw">call</span> <span class="ntfn">create_lib.bat</span> standard_executable_file
<span class="ntkw">if not exist</span> BuildOutput\standard_executable_file\Logs\CreateLib.log (
	<span class="ntkw">echo</span><span class="ntstr"> Library building failed</span>
	<span class="ntkw">exit</span> /b 1
)
<span class="ntkw">del</span> /q BuildOutput\standard_executable_file\Logs\CreateExec.log
<span class="ntkw">call</span> <span class="ntfn">create_exec.bat</span> standard_executable_file
<span class="ntkw">if not exist</span> BuildOutput\standard_executable_file\Logs\CreateExec.log (
	<span class="ntkw">echo</span> <span class="ntstr">Execution building failed</span>
	<span class="ntkw">exit</span> /b 1
)</pre>

<p class="hl2" id="settings">Settings</p>
<p>This settings can be changed in <em>settings.bat</em> (please only change the values before the <em>) else (</em> line, everything below will be ignored):</p>
<img src="img_settings.png" alt=""/>
<p>This list contains all settings that can be changed by the user:</p>
<table class="nttable">
	<tr><th>Name of the setting</th><th>Used by</th><th>Description</th></tr>
	<tr><td><dfn>WORKPATH</dfn></td><td>LI</td><td>Path to your project with */SRC/*.c and */INC/*.h files (other files and other paths will be ignored).</td></tr>
	<tr><td><dfn>NAMELIB</dfn></td><td>LI</td><td>Target name of the library file that will be generated (without path or file extension).</td></tr>
%if ($(BOBE_CUSTOMER_INCLUDEPATH_USED)==YES)
	<tr><td><dfn>CUSTINCPATH</dfn></td><td>LI</td><td>Path to a folder for additional includes, please copy all includes to this folder.</td></tr>
%endif
	<tr><td><dfn>GHSPATH</dfn></td><td>L</td><td>Path to Greenhills RH850 compiler (a folder containing $(CROSS_COMP_NAME).exe).</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td><dfn>SWVERCUST</dfn></td><td>E</td><td>Software version number that will be used for ODX Create (shall have a length of 4 characters).</td></tr>
%endif
	<tr><td><dfn>PYTHONCMD</dfn></td><td>E</td><td>Path to a python interpreter version 2.7.x (including the name of the executable).</td></tr>
	<tr><td><dfn>A2LUPDATERCMD</dfn></td><td>E</td><td>Path to an A2L updater command (including the name of the executable).</td></tr>
	<tr><td><dfn>A2LMERGEUPDATEPATH</dfn></td><td>E</td><td>Path to an A2L updater folder with *.a2l files (other files will be ignored) for merge and update.</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td><dfn>ODXCREATEPATH</dfn></td><td>E</td><td>Path to an ODXCreate command (a folder containing ODXCreate.exe).</td></tr>
	<tr><td><dfn>FDSSIGKEYFILE</dfn></td><td>E</td><td>Full path to a signature key file (Flashdatensicherheit) that will be used for ODX Create.</td></tr>
	<tr><td><dfn>FDSPRJCFGFILE</dfn></td><td>E</td><td>Full path to a project config file (Flashdatensicherheit) that will be used for ODX Create.</td></tr>
%endif
	<tr><td><dfn>FCT_STACK_SIZE</dfn></td><td>S</td><td>Root functions for stack size measurement.</td></tr>
	<tr><td><dfn>MSVCPATH</dfn></td><td>I</td><td>Path to MSVC Compiler (a folder containing bin/cl.exe or bin/amd64/cl.exe depending on <dfn>MSVCBITOPT</dfn>).</td></tr>
	<tr><td><dfn>MSVCBITOPT</dfn></td><td>I</td><td>Architecture to use for MSVC Compiler: Either <em>32</em> for x86 or <em>64</em> for amd64.</td></tr>
	<tr><td><dfn>QNX_HOST</dfn></td><td>X</td><td>Path to Scalexio QNX Compiler's host related components (a folder containing usr/bin/ntox86-gcc.exe). See <a href="http://www.qnx.de/developers/docs/6.5.0/index.jsp?topic=%2Fcom.qnx.doc.momentics_welcome%2Fstart.html" target="_blank">Getting Started</a> for details.</td></tr>
	<tr><td><dfn>QNX_TARGET</dfn></td><td>X</td><td>Path to Scalexio QNX Compiler's target related components (a folder containing platform/ sub folder). See <a href="http://www.qnx.de/developers/docs/6.5.0/index.jsp?topic=%2Fcom.qnx.doc.momentics_welcome%2Fstart.html" target="_blank">Getting Started</a> for details.</td></tr>
	<tr><td class="ntlegend">&nbsp;</td></tr>
	<tr><td></td><td class="ntlegend">L == <a href="\#standardlib">Standard library (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">E == <a href="\#standardexec_file">Standard executeable files (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">S == <a href="\#stackmeasurement">Stack measurement</a></td></tr>
	<tr><td></td><td class="ntlegend">I == <a href="\#simulationlib">Simulation library</a></td></tr>
	# <tr><td></td><td class="ntlegend">X == <a href="\#scalexio">Scalexio library</a></td></tr>
</table>


<p class="hl2" id="creation">Available Processes</p>
<p>The following processes can be selected either within the GUI BOBE.exe or manually by invoking the .bat files with the target name:</p>

<p class="hl3" id="standardlib">Standard library (no debug)</p>
<p>This creates the standard library without debug information.</p>
<p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an L.</p>
<p>To manually execute this step, call <em>create_lib.bat standard</em> from a DOS prompt.</p>
<p>The software listed in <a href="\#environment">Target Environment</a> marked with an L needs to be installed on the target machine.</p>
<p>The following files will be created in the <a href="../BuildOutput" target="_blank">BuildOutput</a> directory:</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Description</th></tr>
	<tr><td><a href="../BuildOutput/standard" target="_blank">standard/</a></td><td>All files created during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard/Objects" target="_blank">Objects/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;*.o</td><td>This files contain the compiled binary code of a C file.</td></tr>
	<tr><td>&emsp;&emsp;*.d</td><td>This files contain a list of included header files for the corresponding C file (in Make target format).</td></tr>
	<tr><td>&emsp;MODULES_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of all object files.</td></tr>
	<tr><td>&emsp;SWC_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of the library.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>.a</td><td>The created library. It can be used at Bosch to integrate your OEM software into Bosch EPS.</td></tr>
</table>

<p class="hl3" id="standardexec_file">Standard executeable files (no debug)</p>
<p>This creates the standard executeable files without debug information.</p>
<p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an E.</p>
<p>To manually execute this step for PAS, call <em>create_lib.bat standard_executable_file</em>, followed by <em>create_exec.bat standard_executable_file</em> from a DOS prompt.</p>
<p>The software listed in <a href="\#environment">Target Environment</a> marked with an E needs to be installed on the target machine.</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Description</th></tr>
	<tr><td><a href="../BuildOutput/standard_executable_file" target="_blank">standard_executable_file/</a></td><td>All files created during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_executable_file/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_executable_file/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_executable_file/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_executable_file/Logs/CreateExec.log" target="_blank">CreateExec.log</a></td><td>This log file contains all steps executed during executable creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_executable_file/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_a2l_update.log</td><td>This log file contains all output of the A2L updater command.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_elf.log</td><td>This log file contains all output of ELF compilation.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_hex.log</td><td>This log file contains all output of HEX file creation.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_PED.log</td><td>This log file contains all output of pedkdo during PED creation.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_executable_file/Objects" target="_blank">Objects/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;*.o</td><td>This files contain the compiled binary code of a C file.</td></tr>
	<tr><td>&emsp;&emsp;*.d</td><td>This files contain a list of included header files for the corresponding C file (in Make target format).</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.elf</td><td>The compiled ELF file.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.map</td><td>Contains the addresses of all sections and global symbols.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>_update.map</td><td>The MAP file for the A2L updater (ASAP2Updater.exe).</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>_StartAtDrive.hex</td><td>Final hex file as generated by the PAD script.</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td>&emsp;FL_$(VWAUDI_SPARE_PART_NUMBER_STRIPPED)_<dfn>SWVERCUST</dfn>_<dfn>NAMELIB</dfn>.odx</td><td>This odx file can be used for flashing via ODIS.</td></tr>
%endif
	<tr><td>&emsp;MODULES_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of all object files.</td></tr>
	<tr><td>&emsp;SWC_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of the library.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>.a</td><td>The created library.</td></tr>
</table>

<p class="hl3" id="standardexec_sent">Standard executeable files (SENT) (no debug)</p>
<p>This creates the standard executeable files without debug information.</p>
<p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an E.</p>
<p>To manually execute this step for SENT, call <em>create_lib.bat standard_SENT</em>, followed by <em>create_exec.bat standard_SENT</em> from a DOS prompt.</p>
<p>The software listed in <a href="\#environment">Target Environment</a> marked with an E needs to be installed on the target machine.</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Description</th></tr>
	<tr><td><a href="../BuildOutput/standard_SENT" target="_blank">standard_SENT/</a></td><td>All files created during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_SENT/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_SENT/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_SENT/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_SENT/Logs/CreateExec.log" target="_blank">CreateExec.log</a></td><td>This log file contains all steps executed during executable creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/standard_SENT/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_a2l_update.log</td><td>This log file contains all output of the A2L updater command.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_elf.log</td><td>This log file contains all output of ELF compilation.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_hex.log</td><td>This log file contains all output of HEX file creation.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_PED.log</td><td>This log file contains all output of pedkdo during PED creation.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/standard_SENT/Objects" target="_blank">Objects/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;*.o</td><td>This files contain the compiled binary code of a C file.</td></tr>
	<tr><td>&emsp;&emsp;*.d</td><td>This files contain a list of included header files for the corresponding C file (in Make target format).</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.elf</td><td>The compiled ELF file.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.map</td><td>Contains the addresses of all sections and global symbols.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>_update.map</td><td>The MAP file for the A2L updater (ASAP2Updater.exe).</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>_StartAtDrive.hex</td><td>Final hex file as generated by the PAD script.</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td>&emsp;FL_$(VWAUDI_SPARE_PART_NUMBER_STRIPPED)_<dfn>SWVERCUST</dfn>_<dfn>NAMELIB</dfn>.odx</td><td>This odx file can be used for flashing via ODIS.</td></tr>
%endif
	<tr><td>&emsp;MODULES_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of all object files.</td></tr>
	<tr><td>&emsp;SWC_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of the library.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>.a</td><td>The created library.</td></tr>
</table>

<p class="hl3" id="stackmeasurement">Stack measurement</p>
<p>This creates stack measurement data.</p>
<p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an S.</p>
<p>To manually execute this step, call <em>create_lib.bat stack</em>, followed by <em>create_exec.bat stack</em> from a DOS prompt.</p>
<p>The software listed in <a href="\#environment">Target Environment</a> marked with an S needs to be installed on the target machine.</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Description</th></tr>
	<tr><td><a href="../BuildOutput/stack" target="_blank">stack/</a></td><td>All files created during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/stack/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/stack/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/stack/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/stack/Logs/CreateExec.log" target="_blank">CreateExec.log</a></td><td>This log file contains all steps executed during executable creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/stack/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_elf.log</td><td>This log file contains all output of ELF compilation.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/stack/Objects" target="_blank">Objects/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;*.o</td><td>This files contain the compiled binary code of a C file.</td></tr>
	<tr><td>&emsp;&emsp;*.d</td><td>This files contain a list of included header files for the corresponding C file (in Make target format).</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.elf</td><td>The compiled ELF file.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>.map</td><td>Contains the addresses of all sections and global symbols.</td></tr>
	<tr><td>&emsp;$(PRJ_OUTPUT_NAME)__<dfn>NAMELIB</dfn>_update.map</td><td>The MAP file for the A2L updater (ASAP2Updater.exe).</td></tr>
	<!--Merged.a2l-->
	<tr><td>&emsp;MODULES_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of all object files.</td></tr>
	<tr><td>&emsp;SWC_<dfn>NAMELIB</dfn>_RamRom.log</td><td>Lists the RAM and ROM size of the library.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>_StackSize.log</td><td>The stack usage determined via gstack.exe for all functions in <dfn>FCT_STACK_SIZE</dfn>.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>.a</td><td>The created library.</td></tr>
</table>

<p class="hl3" id="simulationlib">Simulation library</p>
<p>This creates the SiL simulation library.</p>
<p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an I.</p>
<p>To manually execute this step, call <em>create_lib.bat sillib</em> from a DOS prompt.</p>
<p>The software listed in <a href="\#environment">Target Environment</a> marked with an I needs to be installed on the target machine.</p>
<table class="nttable">
	<tr><th>Path and Filename</th><th>Description</th></tr>
	<tr><td><a href="../BuildOutput/sillib" target="_blank">sillib/</a></td><td>All files created during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/sillib/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/sillib/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/sillib/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	<tr><td>&emsp;&emsp;<a href="../BuildOutput/sillib/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	<tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_SiL_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	<tr><td>&emsp;<a href="../BuildOutput/sillib/ObjectsSiL" target="_blank">ObjectsSiL/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	<tr><td>&emsp;&emsp;*.obj</td><td>This files contain the compiled binary code of a C file.</td></tr>
	<tr><td>&emsp;<dfn>NAMELIB</dfn>_SiL_<dfn>MSVCBITOPT</dfn>bit.lib</td><td>The file can be used at OEM and at Bosch to create a SiL simulation model of the EPS.</td></tr>
</table>

### not yet available / needed

# <p class="hl3" id="scalexio">Scalexio library</p>
# <p>This creates the HiL Scalexio library.</p>
# <p>This step uses all <a href="\#settings">settings</a> and all <a href="\#content">inputs</a> marked with an X.</p>
# <p>To manually execute this step, call <em>create_lib.bat scalexio</em> from a DOS prompt.</p>
# <p>The software listed in <a href="\#environment">Target Environment</a> marked with an X needs to be installed on the target machine.</p>
# <table class="nttable">
	# <tr><th>Path and Filename</th><th>Description</th></tr>
	# <tr><td><a href="../BuildOutput/scalexio" target="_blank">scalexio/</a></td><td>All files created during build process will be collected here.</td></tr>
	# <tr><td>&emsp;<a href="../BuildOutput/scalexio/HFiles" target="_blank">HFiles/</a></td><td>All custom header files that are used during build process will be collected here.</td></tr>
	# <tr><td>&emsp;<a href="../BuildOutput/scalexio/Logs" target="_blank">Logs/</a></td><td>All log files that are created during build process will be collected here.</td></tr>
	# <tr><td>&emsp;&emsp;<a href="../BuildOutput/scalexio/Logs/CreateLib.log" target="_blank">CreateLib.log</a></td><td>This log file contains all steps executed during library creation if the process was successful.</td></tr>
	# <tr><td>&emsp;&emsp;<a href="../BuildOutput/scalexio/Logs/Error.log" target="_blank">Error.log</a></td><td>This log file contains all steps executed up to the point of error if the process was not successful.</td></tr>
	# <tr><td>&emsp;&emsp;<dfn>NAMELIB</dfn>_HiL_compile.log</td><td>This log file contains all output of compiler and linker.</td></tr>
	# <tr><td>&emsp;<a href="../BuildOutput/scalexio/ObjectsHiL" target="_blank">ObjectsHiL/</a></td><td>All temporary object files that are used during build process will be collected here.</td></tr>
	# <tr><td>&emsp;&emsp;*.lo86</td><td>This files contain the compiled binary code of a C file.</td></tr>
	# <tr><td>&emsp;<dfn>NAMELIB</dfn>_HiL.a</td><td>The file can be used at OEM and at Bosch to create a HiL simulation model of the EPS.</td></tr>
# </table>


<p class="hl2" id="environment">Target Environment</p>
<p>The following software needs to be installed on the target machine:</p>
<table class="nttable">
	<tr><th>Name of the application</th><th>Used By</th><th>Tested Version</th><th>Release Date</th></tr>
	<tr><td>Python</td><td>E</td><td>2.7.2</td><td>2011-06-11</td></tr>
	<tr><td>Vector ASAP2 Toolkit</td><td>E</td><td>4.3</td><td>2007-01-24</td></tr>
%if ($(BOBE_USE_ODX_CREATE) == YES)
	<tr><td>ODX Create</td><td>E</td><td>2.22</td><td>2018-03-27</td></tr>
%endif
	<tr><td>Green Hills RH850 Compiler</td><td>L</td><td>2015.1.7</td><td>2015-10-22</td></tr>
	<tr><td>Microsoft Visual Studio Professional (*)</td><td>I</td><td>2015 14.0.25425.01 Update 3</td><td>2016-06-27</td></tr>
	<tr><td>dSpace RCP and HIL Software</td><td>X</td><td>2018A 18.1.0.197 (x64)</td><td>2018-06-12</td></tr>
	<tr><td class="ntlegend">&nbsp;</td></tr>
	<tr><td></td><td class="ntlegend">L == <a href="\#standardlib">Standard library (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">E == <a href="\#standardexec_file">Standard executeable files  (no debug)</a></td></tr>
	<tr><td></td><td class="ntlegend">S == <a href="\#stackmeasurement">Stack measurement</a></td></tr>
	<tr><td></td><td class="ntlegend">I == <a href="\#simulationlib">Simulation library</a></td></tr>
#	<tr><td></td><td class="ntlegend">X == <a href="\#scalexio">Scalexio library</a></td></tr>
	<tr><td class="ntlegend" style="font-size: 80%">* == for compilation without further debugging the Express version may be sufficient</td></tr>
</table>


<p class="hl2" id="spec">Specifications</p>
<p>The following specifications apply to this software package:</p>
<table class="nttable">
	<tr><th>Specification</th><th>Value</th></tr>
	<tr><td>Project name</td><td>$(PRJ_DESCR_SHORT)</td></tr>
	<tr><td>Customer identifier</td><td></td></tr>
	<tr><td>Bosch Label</td><td></td></tr>
	<tr><td>Build Timestamp</td><td>$(HtmlTimeStamp)</td></tr>
	<tr><td>AUTOSAR version</td><td>$(AutosarVersionOem)</td></tr>
	<tr><td>Supported ASAP version</td><td>$(AdaptedForASAP2VersionOem)</td></tr>
</table>


<p class="hl2" id="faq">Pitfalls and FAQ</p>
<p>The following common problems and mistakes are currently known:</p>
<ul>
<li><p>Your modifications in <em>settings.bat</em> do not have any effect?</p>
	<p class="ntfaq">Please check if you are writing in the upper section, before the <em>) else (</em> line and make sure that the first line sets <dfn>BOBE_USE_OEM_SETTINGS_AT_OEM</dfn> to <em>yes</em>. Also check that you do not the same setting twice (inside the upper block)
	and that it's not commented out (starting with <em>::</em> or <em>rem</em>).</p>
<li><p>"Access denied" errors appear in the log?</p>
	<p class="ntfaq">Please check that you unzipped the BOBE to a directory with full write access (do NOT use a network share). Also check if another instance of BOBE or one of its command lines may still run in the background and blocking a file.</p>
<li><p>"No such file or directory" or "Syntax error" during batch file execution?</p>
	<p class="ntfaq">Please check if any path in your settings.bat contains spaces. Try to avoid them by using the short DOS name format instead:
	Open command prompt in the directory containing the problematic file name and type <em>dir /x</em> to see the short name. Replace the path in the <em>settings.bat</em> with the short name. For example: <em>C:\PROGRA~1</em> instead of <em>C:\Program Files</em>.</p></li>
<li><p>The script executions stops without creating any output in Log folder:</p>
	<p class="ntfaq">This may be caused by an internal error in the script. Please check if there are any <em>...-running.log</em> files directly in the BuildOutput/ directory. You can also try to run the scripts from command line (as explained in the process steps) and/or modify the first line of the scripts to <em>@echo on</em>.
</ul>



<p><br/></p>
<hr/>
<p class="ntcopyright">&copy; Robert Bosch Automotive Steering GmbH &nbsp;&nbsp;&nbsp; $(HtmlTimeStamp)</p>
</body>
</html>
<< NOKEEP
%endif
   %echo
   %echo $(.TARGET) done!
   %echo




#% break
#**************************************************************************************************
# End of BOBE
#**************************************************************************************************

#-------------------------------------------------------------------------------------------------
