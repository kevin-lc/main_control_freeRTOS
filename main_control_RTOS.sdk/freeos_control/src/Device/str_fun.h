#ifndef STR_FUN_H   /* prevent circular inclusions */
#define STR_FUN_H   /* by using protection macros */

#include "xil_types.h"

u8 strcmp1(const u8 *souce,const u8 *destination);
u8 strtounchar(u8 str[], u8 *num);
u16 byte2word(u16 word,u8 byteArray[2]);

#endif
