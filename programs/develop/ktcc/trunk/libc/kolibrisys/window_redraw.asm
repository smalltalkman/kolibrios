format ELF
include "public_stdcall.inc"
section '.text' executable
public_stdcall _ksys_window_redraw,4
;arg1 - status
  mov   edx,ebx
  mov   eax,12
  mov   ebx,[esp+4]
  int   0x40
  mov   ebx,edx
  ret   4