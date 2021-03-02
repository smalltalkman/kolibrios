/* strcat( char *, const char * )

   This file is part of the Public Domain C Library (PDCLib).
   Permission is granted to use, modify, and / or redistribute at will.
*/

#include <string.h>

char * strcat( char * s1, const char * s2 )
{
    char * rc = s1;

    if ( *s1 )
    {
        while ( *++s1 )
        {
            /* EMPTY */
        }
    }

    while ( ( *s1++ = *s2++ ) )
    {
        /* EMPTY */
    }

    return rc;
}