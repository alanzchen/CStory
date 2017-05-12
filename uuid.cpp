#include "uuid.h"



string generate_uuid()
{
    uuid_t uu;

    uuid_generate( uu );

    return uu;

}



//Below is another plan for pringting the uuid out
//void generate_uuid()
//{
//    uuid_t uu;
//        int i;
//        uuid_generate( uu );

//        for(i=0;i<16;i++)
//        {
//            printf("%02X-",uu[i]);
//        }
//        printf("\n");
//}
