#include "kosSyst.h"
#include <stdarg.h>

char stack[16384];
char kosExePath[257];

// must be alphabetically first in the image
#pragma data_seg(".1seg")
struct __MENUET_header_t
{
	char signature[8];
	unsigned version;
	void* entry;
	unsigned init_size;
	unsigned memsize;
	void* stackptr;
	void* command_line_ptr;
	void* app_path_ptr;
};
__MENUET_header_t __MENUET_header =
{
	{'M','E','N','U','E','T','0','1'},
	1,
	&crtStartUp,
	-1,
	-1,
	stack + sizeof(stack),
	NULL,
	&kosExePath
};
#pragma data_seg()

#if 0
#define atexitBufferSize	32
#endif

char pureCallMessage[] = "PURE function call!";

//char *kosExePath = NULL;

#if 0
//
void (__cdecl *atExitList[atexitBufferSize])();
int atExitFnNum = 0;
//
int __cdecl atexit( void (__cdecl *func )( void ))
{
	//
	if ( atExitFnNum < atexitBufferSize )
	{
		//
		atExitList[atExitFnNum++] = func;
		return 0;
	}
	else
	{
		return 1;
	}
}
#endif

//
Dword RandomSeed = 1;
//
void rtlSrand( Dword seed )
{
	RandomSeed = seed;
}
//
Dword rtlRand( void )
{
  //????? 0x80000776

  Dword dwi, i;

  for ( i = 0; i < 32; i++ )
  {

    dwi = RandomSeed & 0x80000776;
  
      __asm{
            mov   eax, dwi
            mov   edx, eax
            bswap eax
            xor   eax, edx
            xor   al, ah
            setpo al
            movzx eax, al
            mov   dwi, eax
    }

    RandomSeed = ( RandomSeed << 1 ) | ( dwi & 1 );
  }
  
 return RandomSeed;
}

#if _MSC_VER >= 1400
//
void * __cdecl memcpy( void *dst, const void *src, size_t bytesCount )
{
	__asm{
		mov edi, dst
		mov eax, dst
		mov esi, src
		mov ecx, bytesCount
		rep movsb
	}
}

//
void memset( Byte *dst, Byte filler, Dword count )
{
	//
	__asm{
		mov edi, dst
		mov al, filler
		mov ecx, count
		rep stosb
	}
}
#endif

//
Dword rtlInterlockedExchange( Dword *target, Dword value )
{
//	Dword result;

	//
	__asm{
		mov eax, value
		mov ebx, target
		xchg eax, [ebx]
//		mov result, eax
	}
	//
//	return result;
}


//////////////////////////////////////////////////////////////////////
//
// ??????????? ??????
//

char * __cdecl strcpy( char *target, const char *source )
{
	char *result = target;

	while( target[0] = source[0] )
	{
		target++;
		source++;
	}

	return result;
}


//////////////////////////////////////////////////////////////////////
//
// ??????????? ????? ???????
//

char * __cdecl strrchr( const char * string, int c )
{
	char *cPtr;

	//
	for ( cPtr = (char *)string + strlen( string ); cPtr >= string; cPtr-- )
	{
		//
		if ( *cPtr == c ) return cPtr;
	}
	//
	return NULL;
}


//////////////////////////////////////////////////////////////////////
//
// ??????????? ????? ??????
//

int __cdecl strlen( const char *line )
{
  int i;

  for( i=0; line[i] != 0; i++ );
  return i;
}



//////////////////////////////////////////////////////////////////////
//
// ??????? ?????????????????? ????? ? ??????
//

unsigned int num2hex( unsigned int num )
{
  if( num < 10 )
    return num + '0';
  return num - 10 + 'A';
}


//////////////////////////////////////////////////////////////////////
//
// ????? ?????? ?? ??????
//

Dword dectab[] = { 1000000000, 100000000, 10000000, 1000000, 100000,
                   10000, 1000, 100, 10, 0 };

//
void sprintf( char *Str, char* Format, ... )
{
	int i, fmtlinesize, j, k, flag;
	Dword head, tail;
	char c;
	va_list arglist;
	//
	va_start(arglist, Format);

	//
	fmtlinesize = strlen( Format );
	//
	if( fmtlinesize == 0 ) return;
  
	//
	for( i = 0, j = 0; i < fmtlinesize; i++ )
	{
		//
		c = Format[i];
		//
		if( c != '%' )
		{
			Str[j++] = c;
			continue;
		}
		//
		i++;
		//
		if( i >= fmtlinesize ) break;

		//
		flag = 0;
		//
		c = Format[i];
		//
		switch( c )
		{
		//
		case '%':
			Str[j++] = c;
			break;
		// ????? ??????
		case 'S':
			Byte* str;
			str = va_arg(arglist, Byte*);
			for( k = 0; ( c = str[k] ) != 0; k++ )
			{
				Str[j++] = c;
			}
			break;
		// ????? ?????
		case 'B':
			k = va_arg(arglist, int) & 0xFF;
			Str[j++] = num2hex( ( k >> 4 ) & 0xF );
			Str[j++] = num2hex( k & 0xF );
			break;
		// ????? ???????
		case 'C':
			Str[j++] = va_arg(arglist, int) & 0xFF;
			break;
		// ????? ???????? ????? ? ????????????????? ????
		case 'X':
			Dword val;
			val = va_arg(arglist, Dword);
			for( k = 7; k >= 0; k-- )
			{
				//
				c = num2hex ( ( val >> (k * 4) ) & 0xF );
				//
				if( c == '0' )
				{
					if( flag ) Str[j++] = c;
				}
				else
				{
					flag++;
					Str[j++] = c;
				}
			}
			//
			if( flag == 0 ) Str[j++] = '0';
			break;
		// ????? ???????? ????? ? ?????????? ????
		case 'U':
			head = va_arg(arglist, Dword);
			tail = 0;
			for( k = 0; dectab[k] != 0; k++ )
			{
				tail = head % dectab[k];
				head /= dectab[k];
				c = head + '0';
				if( c == '0' )
				{
					if( flag ) Str[j++] = c;
				}
				else
				{
					flag++;
					Str[j++] = c;
				}
				//
				head = tail;
			}
			//
			c = head + '0';
			Str[j++] = c;
			break;
		// ????? 64-??????? ????? ? ????????????????? ????
		case 'Q':
			unsigned int low_dword, high_dword;
			low_dword = va_arg(arglist, unsigned int);
			high_dword = va_arg(arglist, unsigned int);
			for( k = 7; k >= 0; k-- )
			{
				//
				c = num2hex ( ( ( high_dword + 1) >> (k * 4) ) & 0xF );
				//
				if( c == '0' )
				{
					if( flag ) Str[j++] = c;
				}
				else
				{
					flag++;
					Str[j++] = c;
				}
			}
			//
			for( k=7; k >= 0; k-- )
			{
				//
				c = num2hex ( ( low_dword >> (k * 4) ) & 0xF );
				//
				if( c == '0' )
				{
					if( flag ) Str[j++] = c;
				}
				else
				{
					flag++;
					Str[j++] = c;
				}
			}
			//
			if( flag == 0 ) Str[j++] = '0';
			//
			break;
		//
		default:
			break;
		}
	}
	//
	Str[j] = 0;
}


// ??????? -1 ?????????? ????????
void __declspec(noreturn) kos_ExitApp()
{
#if 0
	int i;

	//
	for ( i = atExitFnNum - 1; i >= 0; i-- )
	{
		//
		atExitList[i]();
	}
	//
#endif
	__asm{
		mov eax, -1
		int 0x40
	}
}


// ??????? 0
void kos_DefineAndDrawWindow(
	Word x, Word y,
	Word sizeX, Word sizeY,
	Byte mainAreaType,
	Dword mainAreaColour,
	Byte headerType,
	Dword headerColour,
	Dword borderColour
	)
{
	Dword arg1, arg2, arg3, arg4;

	//
	arg1 = ( x << 16 ) + sizeX;
	arg2 = ( y << 16 ) + sizeY;
	arg3 = ( mainAreaType << 24 ) | mainAreaColour;
	arg4 = ( headerType << 24 ) | headerColour;
	//
	__asm{
		mov eax, 0
		mov ebx, arg1
		mov ecx, arg2
		mov edx, arg3
		mov esi, arg4
		mov edi, borderColour
		int 0x40
	}
}


// ??????? 1 ????????? ?????
void kos_PutPixel( Dword x, Dword y, Dword colour )
{
	//
	__asm{
		mov eax, 1
		mov ebx, x
		mov ecx, y
		mov edx, colour
		int 0x40
	}
}


// ??????? 2 ???????? ??? ??????? ???????
bool kos_GetKey( Byte &keyCode )
{
	Dword result;

	//
	__asm
	{
		push edx
getkey:
		mov  eax,2 ; Gluk
		int  0x40
		cmp eax,1
		jne getkeyi
		mov ah,dh
		jmp getkeyii
getkeyi:
		mov dh,ah ; Gluk
		jmp getkey
getkeyii:
		pop edx
		mov result, eax
	}
	//
	keyCode = result >> 8;
	//
	return ( result & 0xFF ) == 0;
}

// ??????? 3 ???????? ?????
Dword __cdecl kos_GetSystemClock()
{
//	Dword result;

	//
	__asm{
		mov eax, 3
		int 0x40
//		mov result, eax
	}
	//
//	return result;
}

#if 0
// ??????? 4
void kos_WriteTextToWindow(
	Word x,
	Word y,
	Byte fontType,
	Dword textColour,
	char *textPtr,
	Dword textLen
	)
{
	Dword arg1, arg2;

	//
	arg1 = ( x << 16 ) | y;
	arg2 = ( fontType << 24 ) | textColour;
	//
	__asm{
		mov eax, 4
		mov ebx, arg1
		mov ecx, arg2
		mov edx, textPtr
		mov esi, textLen
		int 0x40
	}
}
#else
// ??????? 4
void kos_WriteTextToWindow_internal(
	Dword pos,
	Dword font,
	const char *textPtr,
	Dword textLen
	)
{
	__asm{
		mov eax, 4
		mov ebx, pos
		mov ecx, font
		mov edx, textPtr
		mov esi, textLen
		int 0x40
	}
}
#endif


// ??????? 5 ?????, ? ????? ????? ???????
void __cdecl kos_Pause( Dword value )
{
	//
	__asm{
		mov eax, 5
		mov ebx, value
		int 0x40
	}
}


// ??????? 7 ?????????? ???????????
void kos_PutImage( RGB * imagePtr, Word sizeX, Word sizeY, Word x, Word y )
{
	Dword arg1, arg2;

	//
	arg1 = ( sizeX << 16 ) | sizeY;
	arg2 = ( x << 16 ) | y;
	//
	__asm{
		mov eax, 7
		mov ebx, imagePtr
		mov ecx, arg1
		mov edx, arg2
		int 0x40
	}
}



// ??????? 8 ?????????? ??????
void kos_DefineButton( Word x, Word y, Word sizeX, Word sizeY, Dword buttonID, Dword colour )
{
	Dword arg1, arg2;

	//
	arg1 = ( x << 16 ) | sizeX;
	arg2 = ( y << 16 ) | sizeY;
	//
	__asm{
		mov eax, 8
		mov ebx, arg1
		mov ecx, arg2
		mov edx, buttonID
		mov esi, colour
		int 0x40
	}
}


// ??????? 9 - ?????????? ? ????????
Dword kos_ProcessInfo( sProcessInfo *targetPtr, Dword processID )
{
//	Dword result;

	//
	__asm{
		mov eax, 9
		mov ebx, targetPtr
		mov ecx, processID
		int 0x40
//		mov result, eax
	}
	//
//	return result;
}


// ??????? 10
Dword __cdecl kos_WaitForEvent()
{
//	Dword result;

	__asm{
		mov eax, 10
		int 0x40
//		mov result, eax
	}
	
//	return result;
}


// ??????? 11
Dword kos_CheckForEvent()
{
//	Dword result;

	__asm{
		mov eax, 11
		int 0x40
//		mov result, eax
	}
	
//	return result;
}


// ??????? 12
void __cdecl kos_WindowRedrawStatus( Dword status )
{
	__asm{
		mov eax, 12
		mov ebx, status
		int 0x40
	}
}


// ??????? 13 ?????????? ??????
void kos_DrawBar( Word x, Word y, Word sizeX, Word sizeY, Dword colour )
{
	Dword arg1, arg2;

	//
	arg1 = ( x << 16 ) | sizeX;
	arg2 = ( y << 16 ) | sizeY;
	//
	__asm{
		mov eax, 13
		mov ebx, arg1
		mov ecx, arg2
		mov edx, colour
		int 0x40
	}
}

// ??????? 17
bool kos_GetButtonID( Dword &buttonID )
{
	Dword result;

	//
	__asm{
		mov eax, 17
		int 0x40
		mov result, eax
	}
	//
	buttonID = result >> 8;
	//
	return (result & 0xFF) == 0;
}


// ??????? 23
Dword __cdecl kos_WaitForEvent( Dword timeOut )
{
//	Dword result;

	__asm{
		mov eax, 23
		mov ebx, timeOut
		int 0x40
//		mov result, eax
	}
	
//	return result;
}


// ????????? ?????????? ? ????????? "????" ??????? 37
void kos_GetMouseState( Dword & buttons, int & cursorX, int & cursorY )
{
	Dword mB;
	Word curX;
	Word curY;
	sProcessInfo sPI;

	//
	__asm{
		mov		eax, 37
		mov		ebx, 0
		int		0x40
		mov		curY, ax
		shr		eax, 16
		mov		curX, ax
		mov		eax, 37
		mov		ebx, 2
		int		0x40
		mov		mB, eax
	}
	//
	kos_ProcessInfo( &sPI );
	//
	buttons = mB;
	cursorX = curX - sPI.processInfo.x_start;
	cursorY = curY - sPI.processInfo.y_start;
}


// ??????? 40 ?????????? ????? ???????
void kos_SetMaskForEvents( Dword mask )
{
	//
	__asm{
		mov eax, 40
		mov ebx, mask
		int 0x40
	}
}


// ??????? 47 ??????? ? ???? ?????????? ?????
void kos_DisplayNumberToWindow(
   Dword value,
   Dword digitsNum,
   Word x,
   Word y,
   Dword colour,
   eNumberBase nBase,
   bool valueIsPointer
   )
{
	Dword arg1, arg2;

	//
	arg1 = ( valueIsPointer ? 1 : 0 ) |
		( ((Byte)nBase) << 8 ) |
		( ( digitsNum & 0x1F ) << 16 );
	arg2 = ( x << 16 ) | y;
	//
	__asm{
		mov eax, 47
		mov ebx, arg1
		mov ecx, value
		mov edx, arg2
		mov esi, colour
		int 0x40
	}
}


Dword kos_GetSkinHeight()
{
	__asm{
		mov eax, 48
		mov ebx, 4
		int 0x40
	}
}


// ??????? 70 ?????? ? ???????? ???????
Dword __fastcall kos_FileSystemAccess( kosFileInfo *fileInfo )
{
//	Dword result;

	//
	__asm{
		mov eax, 70
		mov ebx, ecx //fileInfo
		int 0x40
//		mov result, eax
	}
	//
//	return result;
}


// ??????? 63 ????? ??????? ? ???? ???????
void __fastcall kos_DebugOutChar( char ccc )
{
	//
	__asm{
		mov eax, 63
		mov ebx, 1
		//mov cl, ccc
		int 0x40
	}
}


// ??????? 66 ????? ????????? ?????? ?? ??????????
void kos_SetKeyboardDataMode( Dword mode )
{
	//
	__asm{
		mov eax, 66
		mov ebx, 1
		mov ecx, mode
		int 0x40
	}
}


// ????? ?????? ? ???? ???????
void rtlDebugOutString( char *str )
{
	//
	for ( ; str[0] != 0; str++ )
	{
		kos_DebugOutChar( str[0] );
	}
	//
	kos_DebugOutChar( 13 );
	kos_DebugOutChar( 10 );
}


// ??????? 64 ????????? ?????????? ??????, ?????????? ??? ?????????
bool kos_ApplicationMemoryResize( Dword targetSize )
{
	Dword result;

	//
	__asm{
		mov eax, 64
		mov ebx, 1
		mov ecx, targetSize
		int 0x40
		mov result, eax
	}
	//
	return result == 0;
}


// ??????? 67 ???????? ????????? ????, ???????? == -1 ?? ????????
void kos_ChangeWindow( Dword x, Dword y, Dword sizeX, Dword sizeY )
{
	//
	__asm{
		mov eax, 67
		mov ebx, x
		mov ecx, y
		mov edx, sizeX
		mov esi, sizeY
		int 0x40
	}
}



// ????? ???????????? ??????
int __cdecl _purecall()
{
	rtlDebugOutString( pureCallMessage );
	kos_ExitApp();
	return 0;
}


// ????? ??????????? ???????????????
// ?????? ????????????? ?????????? ????????? ?????
//#pragma section(".CRT$XCA",long,read,write)
//#pragma section(".CRT$XCZ",long,read,write)
void crtStartUp()
{
	__MENUET_header.app_path_ptr;
	// ?????????????? ????????? ????????? ?????
	rtlSrand( kos_GetSystemClock() );
	// ???? ? ????? ????????
	//kosExePath = *((char **)0x20);
	// ????? ??????? ??????? ??????????
	kos_Main();
	// ?????
	kos_ExitApp();
}


