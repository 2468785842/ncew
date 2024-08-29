<<<<<<< HEAD
del *.exe
del *.dll
del *.lib
del *.o
del *.obj
cl /MT /O2 /c /DLUA_BUILD_AS_DLL /DLUA_USER_H=\"lua_user.h\" *.c
ren lua.obj lua.o
ren luac.obj luac.o
copy luac.o luac.obj
link /DLL /IMPLIB:lua53-32.lib /OUT:lua53-32.dll *.obj
link /OUT:lua32.exe lua.o lua53-32.lib
lib /OUT:lua53-32-static.lib *.obj
link /OUT:luac32.exe luac.o lua53-32-static.lib 
=======
del *.exe
del *.dll
del *.lib
del *.o
del *.obj
cl /MT /O2 /c /DLUA_BUILD_AS_DLL /DLUA_USER_H=\"lua_user.h\" *.c
ren lua.obj lua.o
ren luac.obj luac.o
copy luac.o luac.obj
link /DLL /IMPLIB:lua53-32.lib /OUT:lua53-32.dll *.obj
link /OUT:lua32.exe lua.o lua53-32.lib
lib /OUT:lua53-32-static.lib *.obj
link /OUT:luac32.exe luac.o lua53-32-static.lib 
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
copy lua53-32.dll "d:\svn\Cheat Engine\bin"