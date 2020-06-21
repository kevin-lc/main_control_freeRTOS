#include "str_fun.h"

u8 strcmp1(const u8 *souce,const u8 *destination)
{
		u8  val=1;
		while(*destination!='\0')
		{
			if(*souce++!=*destination++)
			{
				val=0;
				break;
			}
		}
		return(val);


}

u8 strtounchar(u8 str[], u8 *num)
{
	u8 offset=0;
	u8 iSize=0;
	//unsigned int *num=&inum;
	while((str[offset]<'0'||str[offset]>'9')&&str[offset]!='\0')
	{
		offset++;
	}
	*num=0;
	while(str[offset]>47&&str[offset]<58)
	{
		*num=*num*10;
		*num=*num+str[offset]-'0';
		iSize+=1;
		offset++;
		if(offset==0)
			break;
	}
	return(iSize);
}

u16 byte2word(u16 word,u8 byteArray[2])
{
	word=byteArray[0];
	word=(word<<2)|(byteArray[1]>>6);
    return word;
}
