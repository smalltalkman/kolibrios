#include "ctype/is.c"
#include "ctype/tolower.c" 
#include "ctype/toupper.c"

#include "sys/rewinddir.c"
#include "sys/readdir.c"
#include "sys/seekdir.c"
#include "sys/opendir.c"
#include "sys/telldir.c"
#include "sys/closedir.c"
#include "sys/dir.c"
#include "sys/socket.c"

#include "stdio/clearerr.c"
#include "stdio/gets.c"
#include "stdio/setbuf.c"
#include "stdio/fgetc.c"
#include "stdio/fopen.c"
#include "stdio/format_print.c"
#include "stdio/vprintf.c"
#include "stdio/feof.c"
#include "stdio/fwrite.c"
#include "stdio/fread.c"
#include "stdio/fseek.c"
#include "stdio/fgetpos.c"
#include "stdio/fclose.c"
#include "stdio/snprintf.c"
#include "stdio/rename.c"
#include "stdio/getchar.c"
#include "stdio/remove.c"
#include "stdio/ferror.c"
#include "stdio/tmpfile.c"
#include "stdio/fputs.c"
#include "stdio/fputc.c"
#include "stdio/fgets.c"
#include "stdio/fflush.c"
#include "stdio/format_scan.c"
#include "stdio/printf.c"
#include "stdio/fscanf.c"
#include "stdio/debug_printf.c"
#include "stdio/fsetpos.c"
#include "stdio/setvbuf.c"
#include "stdio/sscanf.c"
#include "stdio/scanf.c"
#include "stdio/freopen.c"
#include "stdio/puts.c"
#include "stdio/sprintf.c"
#include "stdio/vsnprintf.c"
#include "stdio/conio.c"
#include "stdio/perror.c"
#include "stdio/ftell.c"
#include "stdio/tmpnam.c"
#include "stdio/rewind.c"
#include "stdio/vfprintf.c"
#include "stdio/fprintf.c"
#include "stdio/ungetc.c"

#include "string/strerror.c"
#include "string/strxfrm.c"
#include "string/strrchr.c"
#include "string/strcspn.c"
#include "string/strlen.c"
#include "string/strrev.c"
#include "string/memccpy.c"
#include "string/strchr.c"
#include "string/strcoll.c"
#include "string/strpbrk.c"
#include "string/strstr.c"
#include "string/memcmp.c"
#include "string/strspn.c"
#include "string/strcpy.c"
#include "string/strncpy.c"
#include "string/strdup.c"
#include "string/strcat.c"
#include "string/memchr.c"
#include "string/strncmp.c"
#include "string/strncat.c"
#include "string/strtok.c"
#include "string/strcmp.c"
#include "string/memset.c"
#include "string/memcpy.c"
#include "string/memmove.c"

#include "stdlib/calloc.c"
#include "stdlib/malloc.c"
#include "stdlib/atoll.c"
#include "stdlib/free.c"
#include "stdlib/llabs.c"
#include "stdlib/exit.c"
#include "stdlib/atoi.c"
#include "stdlib/labs.c"
#include "stdlib/realloc.c"
#include "stdlib/abs.c"
#include "stdlib/atol.c"
#include "stdlib/itoa.c"
#include "stdlib/strtol.c"
#include "stdlib/rand.c"
#include "stdlib/qsort.c"
#include "stdlib/assert.c"
#include "stdlib/strtod.c"
#include "stdlib/atof.c"

#include "math/acosh.c"
#include "math/asinh.c"
#include "math/atanh.c"
#include "math/cosh.c"
#include "math/frexp.c"
#include "math/hypot.c"
#include "math/ldexp.c"
#include "math/sinh.c"
#include "math/tanh.c"

#include "time/difftime.c"
#include "time/localtime.c"
#include "time/mktime.c"
#include "time/time.c"
#include "time/asctime.c"

#include "misc/basename.c"
#include "misc/dirname.c"

__asm__(
    ".include \"math/acos.s\"\n\t"
    ".include \"math/asin.s\"\n\t"
    ".include \"math/atan.s\"\n\t"
    ".include \"math/atan2.s\"\n\t"
    ".include \"math/ceil.s\"\n\t"
    ".include \"math/cos.s\"\n\t"
    ".include \"math/exp.s\"\n\t"
    ".include \"math/fabs.s\"\n\t"
    ".include \"math/floor.s\"\n\t"
    ".include \"math/fmod.s\"\n\t"
    ".include \"math/log.s\"\n\t"
    ".include \"math/modf.s\"\n\t"
    ".include \"math/modfl.s\"\n\t"
    ".include \"math/pow.s\"\n\t"
    ".include \"math/pow2.s\"\n\t"
    ".include \"math/pow10.s\"\n\t"
    ".include \"math/sqrt.s\"\n\t"
);

__asm__(
    ".include \"setjmp/longjmp.s\"\n\t"
    ".include \"setjmp/setjmp.s\""
);

#include "libtcc/libtcc1.c"
#include "stdlib/___chkstk_ms.c"
#include "exports/exports.c"
