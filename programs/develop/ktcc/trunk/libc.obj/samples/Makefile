KTCC=kos32-tcc
FASM= fasm
KPACK = kpack
CFLAGS = -I../include -I../../../../../../contrib/sdk/sources/SDL-1.2.2_newlib/include
LDFLAGS = -nostdlib -L../../bin/lib ../../bin/lib/crt0.o

BIN= stdio_test.kex \
basic_gui.kex \
http_tcp_demo.kex \
math_test.kex \
string_test.kex \
whois.kex  \
file_io.kex \
tmpdisk_work.kex \
consoleio.kex \
assert_test.kex \
fasm/sprintf_test.kex \
clayer/rasterworks.kex \
clayer/libimg.kex \
clayer/dialog.kex \
clayer/msgbox.kex \
clayer/boxlib.kex \
thread_work.kex \
sdltest.kex \
shell_test.kex \
libc_test.kex

LIBS= -lSDL -lshell -ltcc -lsound -ldialog -lrasterworks -limg -lbox -lmsgbox -lnetwork -lc.obj

all: $(BIN)
	
%.kex : %.c
	$(KTCC) $(CFLAGS) $(LDFLAGS)  $< -o $@ $(LIBS)
	$(KPACK) --nologo $@
	
%.kex : %.asm
	$(FASM) $< $@
	$(KPACK) --nologo $@

clean:
	rm *.kex clayer/*.kex
