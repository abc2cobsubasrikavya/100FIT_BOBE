/*<BASDKey>
 **********************************************************************************************************************
 *
 * COPYRIGHT RESERVED, Robert Bosch GmbH, 2014. All rights reserved.
 * The reproduction, distribution and utilization of this document as well as the communication of its contents to
 * others without explicit authorization is prohibited. Offenders will be held liable for the payment of damages.
 * All rights reserved in the event of the grant of a patent, utility model or design.
 *
 **********************************************************************************************************************
</BASDKey>*/


#ifndef PLATFORM_TYPES_H
#define PLATFORM_TYPES_H

/*
 **********************************************************************************************************************
 * Based on AUTOSAR_SWS_PlatformTypes.pdf; Document Version 2.6.0; AR4.1; Rev 2 (no semantic change w.r.t. AR4.0 Rev3)
 **********************************************************************************************************************
 */

/*
 **********************************************************************************************************************
 * Types and Defines
 **********************************************************************************************************************
 */

/* File version information */
#define PLATFORM_VENDOR_ID 6
#define PLATFORM_MODULE_ID 199
#define PLATFORM_SW_MAJOR_VERSION 4
#define PLATFORM_SW_MINOR_VERSION 0
#define PLATFORM_SW_PATCH_VERSION 0
#define PLATFORM_AR_RELEASE_MAJOR_VERSION 4
#define PLATFORM_AR_RELEASE_MINOR_VERSION 1
#define PLATFORM_AR_RELEASE_REVISION_VERSION 2

/* SWS_Platform_00045: CPU register type width */
#define CPU_TYPE_8        8
#define CPU_TYPE_16       16
#define CPU_TYPE_32       32

/* SWS_Platform_00048: Bit order definition */
#define MSB_FIRST 0
#define LSB_FIRST 1

/* SWS_Platform_00050, SWS_Platform_00051: Byte order definition */
#define HIGH_BYTE_FIRST   0             /* Big endian byte ordering     */
#define LOW_BYTE_FIRST    1             /* Little endian byte ordering  */


/* SWS_Platform_00044: CPU Type: */
#define CPU_TYPE          CPU_TYPE_32

/* SWS_Platform_00039, SWS_Platform_00046, SWS_Platform_00050, SWS_Platform_00051: Byte Ordering (Memory) */
#define CPU_BYTE_ORDER    LOW_BYTE_FIRST

/* SWS_Platform_00038, SWS_Platform_00043: Bit Ordering (Register) (Not to be used in SW!) */
#define CPU_BIT_ORDER     LSB_FIRST

/* Standard Symbols for TRUE and FALSE */
/* SWS_Platform_00054, SWS_Platform_00055, SWS_Platform_00056: Only to be used in conjunction with the boolean type */
#ifndef TRUE
    #define TRUE (1 != 0)
#endif

#ifndef FALSE
    #define FALSE (0 != 0)
#endif


/* Standard Integer Data Types */
/* --------------------------- */
/* SWS_Platform_00016: */
typedef signed char     sint8;          /*        -128 .. +127          */
/* SWS_Platform_00013: */
typedef unsigned char   uint8;          /*           0 .. 255           */
/* SWS_Platform_00017: */
typedef signed short    sint16;         /*      -32768 .. +32767        */
/* SWS_Platform_00014: */
typedef unsigned short  uint16;         /*           0 .. 65535         */
/* SWS_Platform_00018: */
typedef signed long     sint32;         /* -2147483648 .. +2147483647   */
/* SWS_Platform_00015: */
typedef unsigned long   uint32;         /*           0 .. 4294967295    */
/* SWS_Platform_00067: */
typedef signed long long    sint64;/*-9223372036854775808 .. +9223372036854775807*/

/* SWS_Platform_00066: */
typedef unsigned long long   uint64;         /*    0 ..18446744073709551615    */


/* Standard Float Data Types */
/* ------------------------- */
/* SWS_Platform_00041: */
typedef float   float32;
/* SWS_Platform_00042: */
typedef double  float64;


/* Boolean Data Type */
/* ----------------- */
/* MR12 DIR 1.1 VIOLATION: the type _Bool is mapped here to the AUTOSAR type boolean to prevent the direct use of the type _Bool */
/* SWS_Platform_00060: */
typedef _Bool   boolean;

/* Optimized Integer Data Types */
/* ---------------------------- */
/* SWS_Platform_00023: */
typedef signed long     sint8_least;    /* At least 7 bit + 1 bit sign  */
/* SWS_Platform_00020: */
typedef unsigned long   uint8_least;    /* At least 8 bit               */
/* SWS_Platform_00024: */
typedef signed long     sint16_least;   /* At least 15 bit + 1 bit sign */
/* SWS_Platform_00021: */
typedef unsigned long   uint16_least;   /* At least 16 bit              */
/* SWS_Platform_00025: */
typedef signed long     sint32_least;   /* At least 31 bit + 1 bit sign */
/* SWS_Platform_00022: */
typedef unsigned long   uint32_least;   /* At least 32 bit              */


/*<BASDKey>
 **********************************************************************************************************************
 * $History___:
 * 
 * ARXY.6.1.0; 0     20.10.2015 KHA4KOR
 *   comment updated for the warning related to _bool type
 * 
 * ARXY.5.1.0; 0     24.04.2015 DBD5KOR
 *   [CUCEL] : Platform_Forward Error in AEEE Pro 2014.2.2 and [CUCEL] 
 *   DataConstrs in PlatformType correction update
 * 
 * ARXY.5.0.0; 1     23.01.2015 KHA4KOR
 *   Header is corrected
 * 
 * ARXY.5.0.0; 0     10.12.2014 KHA4KOR
 *   uint64/sint64 supported by platform
 * 
 * ARXY.4.0.0; 0     30.06.2014 AFL8FE
 *   support of ar4.1.1
 * 
 * ARXY.3.0.0; 0     17.12.2013 AFL8FE
 *   CSCRM00609313	file header update
 *   CSCRM00563467	corrected misspelling for PlatformRbCpuType, 
 *   PlatformRbFloatActivation
 *   
 * 
 * ARXY.2.0.0; 0     09.07.2013 VKA2FE
 *   Common Platform Types.
 * 
 * $
 **********************************************************************************************************************
</BASDKey>*/

/*<BASDKey>
 **********************************************************************************************************************
 * End of header file: $Name______:Platform_Types_h$
 **********************************************************************************************************************
</BASDKey>*/

/* PLATFORM_TYPES_H */
#endif



// **************************************************************************************************
// HISTORY:
// --------
// 
// --------------------------------------------------------------------------------------------------
// Unter anderem: Endekennung fuer neuen KM-Info-Trigger eingefügt
// 2017-06-07 Treuer Michael SGD AS-ER/ENM2 * (g53177)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\BSW\CUBAS\var05\_builds\RH850P1X_EPS\_out\Platform_Types.h@@\main\int_wp_job135745\1
// --------------------------------------------------------------------------------------------------
// 2017-07-11 Wamsler Tobias SGD AS-ER/ENK2 (g54224)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\BSW\CUBAS\var05\_builds\RH850P1X_EPS\_out\Platform_Types.h@@\main\2
// --------------------------------------------------------------------------------------------------
// 2017-09-12 Treuer Michael SGD AS-ER/ENM2 * (g53177)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\OemBlackbox\OemBbLib_B00\INC\Platform_Types.h@@\main\int_wp_job153048\1
// --------------------------------------------------------------------------------------------------
// 2017-11-09 RameshKumar RameenaSri CMT EXT (gx1591)
//            \sgdcc_eps_sdk3\EpsDriveSW\ImplementationSet\OemBlackbox\OemBbLib_B00\INC\Platform_Types.h@@\main\1
// --------------------------------------------------------------------------------------------------
// **************************************************************************.HE*********************
