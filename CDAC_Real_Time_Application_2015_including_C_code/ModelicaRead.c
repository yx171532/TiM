/* file:ModelicaRead.c -to read a value from a file----------------
*/
#include <stdio.h>
double ModelicaRead(char *fileName,double tm)
{
    FILE *fpi;
    double y;
	
if ( ( fpi = fopen (fileName,"r" )) == NULL )

{

printf ( "\nUnable to open file %s", fileName ) ;

return(-1.0) ;

}
		
fscanf(fpi, "%lf", &y);

//printf ( "\nvalue: %lf\n",y ) ;

fclose(fpi);

if((y>=0.0) && (y<=50.0))

{ 	return(y);
}

else

{return (1.0);
}


}
  


