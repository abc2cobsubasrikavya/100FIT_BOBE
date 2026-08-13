/*<BASDKey>
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, Robert Bosch GmbH, 2014. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
 * Administrative Information (automatically filled in)
 * $Domain____:BASD$
 * $Namespace_:\Comp\Standard$
 * $Class_____:XPT$
 * $Name______:Std_Types_h$
 * $Variant___:ARXY.5.1.0$
 * $Revision__:0$
 **********************************************************************************************************************
</BASDKey>*/

/* STD014 */
#ifndef STD_TYPES_H
#define STD_TYPES_H


/*
 **********************************************************************************************************************
 * Based on AUTOSAR_SWS_StandardTypes.pdf; Document Version 1.3.0; AR4.0; Rev 1 (is still the same in Rev 2)
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */

/* STD001, STD016: */
#include "Platform_Types.h"
#include "Compiler.h"

/*
 **********************************************************************************************************************
 * Types and Defines
 **********************************************************************************************************************
 */

/* No special module ID is defined for Std_Types header. STD_TYPES is chosen. */
#define STD_TYPES_VENDOR_ID 6
#define STD_TYPES_MODULE_ID 197
#define STD_TYPES_SW_MAJOR_VERSION 4
#define STD_TYPES_SW_MINOR_VERSION 0
#define STD_TYPES_SW_PATCH_VERSION 0
#define STD_TYPES_AR_RELEASE_MAJOR_VERSION 4
#define STD_TYPES_AR_RELEASE_MINOR_VERSION 0
#define STD_TYPES_AR_RELEASE_REVISION_VERSION 2

/* STD006: Because E_OK is already defined within OSEK, the symbol E_OK has to be shared. To avoid name clashes     */
/* and redefinition problems, the symbols have to be defined in the following way (approved within implementation): */
#ifndef STATUSTYPEDEFINED
    #define STATUSTYPEDEFINED
    #define E_OK 0x00u     /* No error occurs            */
    typedef unsigned char StatusType; /* OSEK compliance */
#endif

#define E_NOT_OK   0x01u   /* An error occurs            */

/* STD007: */
#define STD_HIGH   0x01u   /* Physical state 5V or 3.3V  */
#define STD_LOW    0x00u   /* Physical state 0V          */

/* STD013: */
#define STD_ACTIVE 0x01u   /* Logical state active       */
#define STD_IDLE   0x00u   /* Logical state idle         */

/* STD010: */
#define STD_ON     0x01u   /* On state                   */
#define STD_OFF    0x00u   /* Off state                  */

/* STD005: Standard Return Type */
/* This type can be used as standard API return type which is shared between the RTE and the BSW modules. */
typedef uint8 Std_ReturnType;


/* STD015: Standard Version Info Type */
/* This type shall be used to request the version of a BSW module using the <Module name>_GetVersionInfo()function. */
typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;


/*<BASDKey>
 **********************************************************************************************************************
 * $History___:
 * 
 * ARXY.5.1.0; 0     17.04.2015 KHA4KOR
 *   u suffix update
 * 
 * ARXY.4.0.0; 1     15.07.2014 AFL8FE
 *   update
 * 
 * ARXY.4.0.0; 0     30.06.2014 AFL8FE
 *   support of ar4.1.1
 * 
 * ARXY.3.0.0; 0     17.12.2013 AFL8FE
 *   CSCRM00609313	file header update
 *   
 * 
 * ARXY.2.0.0; 0     09.07.2013 VKA2FE
 *   Common Standard Data Types.
 * 
 * $
 **********************************************************************************************************************
</BASDKey>*/

/*<BASDKey>
 **********************************************************************************************************************
 * End of header file: $Name______:Std_Types_h$
 **********************************************************************************************************************
</BASDKey>*/

/* STD014 */
/* STD_TYPES_H */
#endif



// **************************************************************************************************
// HISTORY:
// --------
// 
// --------------------------------------------------------------------------------------------------
// Unter anderem: Endekennung fuer neuen KM-Info-Trigger eingefügt
// 2017-09-12 Treuer Michael SGD AS-ER/ENM2 * (g53177)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\OemBlackbox\OemBbLib_B00\INC\Std_Types.h@@\main\int_wp_job153048\1
// --------------------------------------------------------------------------------------------------
// 2017-11-09 RameshKumar RameenaSri CMT EXT (gx1591)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\OemBlackbox\OemBbLib_B00\INC\Std_Types.h@@\main\1
// --------------------------------------------------------------------------------------------------
// **************************************************************************.HE*********************
