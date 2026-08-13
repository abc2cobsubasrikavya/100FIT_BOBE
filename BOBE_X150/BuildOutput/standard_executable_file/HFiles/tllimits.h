/******************************************************************************
*
* FILE:
*   tllimits.h         
*
* RELATED FILES:
*
* DESCRIPTION:
*   Implementation platform dependent limits definitions
*   for V850ES / Green Hills Compiler               
*   
*
* HISTORY:
*   2003/09/15  - Initial Revision
*                 (F. Lünstroth)
*   
* AUTHOR(S)
*   F. Lünstroth
*
* dSPACE GmbH, Technologiepark 25, 33100 Paderborn, Germany
*
* $Workfile: tllimits.h $ $Revision: 84 $ $Date: 2005/01/18 11:15:58MEZ $ $Author: Frank Luenstroth (FrankL) $
******************************************************************************/

#ifndef __tllimits_h__
#define __tllimits_h__


#define LITTLE_ENDIAN
#define ALIGN 4
#define MCU_V850
#define COMP_GHS

#define INT8MAX                 127
#define INT8MIN                 (-INT8MAX -1)
#define INT16MAX                32767
#define INT16MIN                (-INT16MAX -1)
#define INT32MAX                2147483647L
#define INT32MIN                (-INT32MAX -1L)

#define UINT8MAX                255
#define UINT8MIN                0
#define UINT16MAX               65535
#define UINT16MIN               0
#define UINT32MAX               4294967295L
#define UINT32MIN               0

#define FLOAT32MAX				3.40282347E+38F
#define FLOAT32MIN				-3.40282347E+38F
#define FLOAT64MAX				1.7976931348623157E+308
#define FLOAT64MIN				-1.7976931348623157E+308


#endif


// **************************************************************************************************
// HISTORY:
// --------
// 
// --------------------------------------------------------------------------------------------------
// Unter anderem: Endekennung fuer neuen KM-Info-Trigger eingefügt
// 2017-05-11 Treuer Michael SGD AS-ER/ENM2 * (g53177)
//            \sgdcc_eps_sdk3\EpsDriveSW\EnvironmentSet\VW\Freischnitt\Test\ASC_SAC\ZPC\TL\V850ES\GHS2012\tllimits.h@@\main\int_wp_job135745\1
// --------------------------------------------------------------------------------------------------
// 2017-07-11 Wamsler Tobias SGD AS-ER/ENK2 (g54224)
//            \sgdcc_eps_sdk3\EpsDriveSW\EnvironmentSet\VW\Freischnitt\Test\ASC_SAC\ZPC\TL\V850ES\GHS2012\tllimits.h@@\main\1
// --------------------------------------------------------------------------------------------------
// 2018-03-06 Treuer Michael SGD AS-ER/ENM2 * (g53177)
//            \sgdcc_eps_sdk3\EpsDriveSW\EnvironmentSet\VW\Freischnitt\Test\ASC_SAC\ZPC\TL\Generic\tllimits.h@@\main\1
// --------------------------------------------------------------------------------------------------
// **************************************************************************.HE*********************
