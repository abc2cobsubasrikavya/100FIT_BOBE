/*-----------------------------------------------------------------------*/
/* File Identifier on server    $Id: CM_Header.txt 875 2023-02-25 13:57:56Z DUC_P15G1 $ */
/* File location on server $HeadURL: svn://192.168.180.30/Toolchain/BRANCHES/TL22.1/Toolchain/Scripts/Config/Hooks/Files/CM_Header.txt $ */
/*-----------------------------------------------------------------------*/

/* Spezifikation "AutosarEPSInterface Baseline 2.1" */

		
/**************************************************************************************************\
 *** 
 *** Simulink model       : SAC
 *** TargetLink subsystem : SAC/TL_Ignore_SAC
 *** Codefile             : tl_dsfxp_limits.h
 ***
 *** Generation date: 2024-07-15 12:50:13
 ***
 *** TargetLink version      : 22.1p4 from 19-Dec-2023
 *** Code generator version  : Build Id 22.1.0.32 from 2023-12-12 10:15:15
\**************************************************************************************************/

#ifndef TL_DSFXP_LIMITS_H
#define TL_DSFXP_LIMITS_H
/* line(s) below inserted by custom_post_codegen_hook */
#define DVERTL_DSFXP_LIMITS_H "$Rev:: 875   $"
/* line(s) above inserted by custom_post_codegen_hook */

#include <float.h>
#include "Platform_Types.h"

#if CPU_BYTE_ORDER == LOW_BYTE_FIRST
   #define LITTLE_ENDIAN
#else 
   #define BIG_ENDIAN
#endif
 
#define tl_dsfxp_FLOAT32MAX FLT_MAX /* Upper limit of tl_dsfxp_Float32 */
#define tl_dsfxp_FLOAT32NMIN (-FLT_MAX) /* Lower limit of tl_dsfxp_Float32 */
#define tl_dsfxp_FLOAT64MAX DBL_MAX /* Upper limit of tl_dsfxp_Float64 */
#define tl_dsfxp_FLOAT64NMIN (-DBL_MAX) /* Lower limit of tl_dsfxp_Float64 */
#define tl_dsfxp_INT16MAX 32767 /* Upper limit of tl_dsfxp_Int16 */
#define tl_dsfxp_INT16MIN (-tl_dsfxp_INT16MAX - 1) /* Lower limit of tl_dsfxp_Int16 */
#define tl_dsfxp_INT32MAX 2147483647L /* Upper limit of tl_dsfxp_Int32 */
#define tl_dsfxp_INT32MIN (-tl_dsfxp_INT32MAX - 1L) /* Lower limit of tl_dsfxp_Int32 */
#define tl_dsfxp_INT8MAX 127 /* Upper limit of tl_dsfxp_Int8 */
#define tl_dsfxp_INT8MIN (-tl_dsfxp_INT8MAX - 1) /* Lower limit of tl_dsfxp_Int8 */
#define tl_dsfxp_UINT16MAX 65535U /* Upper limit of tl_dsfxp_UInt16 */
#define tl_dsfxp_UINT16MIN 0U /* Lower limit of tl_dsfxp_UInt16 */
#define tl_dsfxp_UINT32MAX 4294967295UL /* Upper limit of tl_dsfxp_UInt32 */
#define tl_dsfxp_UINT32MIN 0UL /* Lower limit of tl_dsfxp_UInt32 */
#define tl_dsfxp_UINT8MAX 255U /* Upper limit of tl_dsfxp_UInt8 */
#define tl_dsfxp_UINT8MIN 0U /* Lower limit of tl_dsfxp_UInt8 */

#endif /* TL_DSFXP_LIMITS_H */
/*------------------------------------------------------------------------------------------------*\
  END OF FILE
\*------------------------------------------------------------------------------------------------*/
