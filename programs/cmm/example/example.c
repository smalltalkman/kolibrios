#define MEMSIZE 0x3E80

#include "../lib/io.h"

void main()
{   
	int id, key, i;
	dword file;
	mem_Init();
	io.dir_buffer("/sys/",DIR_ONLYREAL);
	loop()
   {
      switch(WaitEvent())
      {
         case evButton:
            id=GetButtonID();               
            if (id==1) ExitProcess();
			break;
      
        case evKey:
			key = GetKey();
			if (key==013){ //Enter
				draw_window();
				WriteText(50,90,0x80,0xFF00FF,io.dir_position(i));
				if(i<io.dir.count)i++;
			}
			break;
         
         case evReDraw:
			draw_window();
			break;
      }
   }
}
void draw_window()
{
	proc_info Form;
	DefineAndDrawWindow(215,100,250,200,0x34,0xFFFFFF,"Window header");
	GetProcessInfo(#Form, SelfInfo);
	WriteText(10,110,0x80,0,#param);
}

stop:
