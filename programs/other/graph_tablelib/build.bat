call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"  

@cl /c /O2 /nologo /GS- /GR- /fp:fast *.cpp
@link /nologo /manifest:no /entry:crtStartUp /subsystem:native /base:0 /fixed /align:16 /nodefaultlib graph.obj *.obj
@del graph
@pe2kos graph.exe graph
@del graph.exe
@del *.obj
pause