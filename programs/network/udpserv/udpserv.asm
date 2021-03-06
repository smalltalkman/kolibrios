;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                                 ;;
;; Copyright (C) KolibriOS team 2010-2017. All rights reserved.    ;;
;; Distributed under terms of the GNU General Public License       ;;
;;                                                                 ;;
;;  udpserv.asm - UDP server demo program for KolibriOS            ;;
;;                                                                 ;;
;;  Written by hidnplayr@kolibrios.org                             ;;
;;                                                                 ;;
;;          GNU GENERAL PUBLIC LICENSE                             ;;
;;             Version 2, June 1991                                ;;
;;                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format binary as ""

BUFFERSIZE      = 65536

use32
; standard header
        db      'MENUET01'      ; signature
        dd      1               ; header version
        dd      start           ; entry point
        dd      i_end           ; initialized size
        dd      mem             ; required memory
        dd      mem             ; stack pointer
        dd      0               ; parameters
        dd      0               ; path


include '../../macros.inc'
purge mov,add,sub
include '../../proc32.inc'
include '../../dll.inc'

include '../../network.inc'

; entry point
start:
; load libraries
        stdcall dll.Load, @IMPORT
        test    eax, eax
        jnz     exit

; initialize console
        invoke  con_start, 1
        invoke  con_init, 80, 25, 80, 25, title

; Set event mask to socket events only
        mcall   40, EVM_STACK

; Write message str1 to the console
        invoke  con_write_asciiz, str1

; Allocate a TCP socket
        mcall   socket, AF_INET4, SOCK_DGRAM, 0
        cmp     eax, -1
        je      sock_err
; Socket allocation succeeded, store it's number in socketnum
        mov     [socketnum], eax

; This might be needed in the future,
; SO_REUSEADDR option is not implemented in kernel yet.
;        mcall   setsockopt, [socketnum], SOL_SOCKET, SO_REUSEADDR, &yes,
;        cmp     eax, -1
;        je      opt_err

; Bind the socket to port 23 (as defined in sockaddr1)
        mcall   bind, [socketnum], sockaddr1, sockaddr1.length
        cmp     eax, -1
        je      bind_err

; Print the received data to the console, untill socket is closed by remote end
  .loop:
        mcall   recv, [socketnum], buffer, BUFFERSIZE, 0
        cmp     eax, -1
        je      .loop

 ;;       mov     byte[buffer+eax], 0             ; Zero-terminate the data, so we can print it
  ;;      invoke  con_write_asciiz, buffer
        jmp     .loop

; Print error message
bind_err:
        invoke  con_write_asciiz, str4
        jmp     done

sock_err:
        invoke  con_write_asciiz, str6
        jmp     done


done:
; Wait for user input
        invoke  con_getch2
; Close console
        invoke  con_exit, 1
exit:
; Close listening socket, if it is open
        cmp     [socketnum], 0
        je      @f
        mcall   close, [socketnum]
  @@:

; Close application
        mcall   -1



; data
title   db      'UDP stream server demo',0
str1    db      'Opening socket',10, 0
str2    db      'Listening for incoming connections...',10,0
str4    db      'Bind error',10,10,0
str6    db      'Could not open socket',10,10,0
str7    db      'Got data',10,10,0

sockaddr1:
        dw AF_INET4             ; IPv4
.port   dw 23 shl 8             ; port 23 - network byte order
.ip     dd 0
        rb 10
.length = $ - sockaddr1

; import
align 4
@IMPORT:

library console, 'console.obj'

import  console,        \
        con_start,      'START',        \
        con_init,       'con_init',     \
        con_write_asciiz,       'con_write_asciiz',     \
        con_exit,       'con_exit',     \
        con_gets,       'con_gets',\
        con_cls,        'con_cls',\
        con_printf,     'con_printf',\
        con_getch2,     'con_getch2',\
        con_set_cursor_pos, 'con_set_cursor_pos'
i_end:

socketnum       dd 0
buffer          rb BUFFERSIZE

align   4
rb      4096    ; stack
mem:
