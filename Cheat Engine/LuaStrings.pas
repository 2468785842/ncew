<<<<<<< HEAD
unit LuaStrings;

{$mode delphi}

interface

uses
  Classes, SysUtils,lua, lualib, lauxlib;

procedure initializeLuaStrings;
procedure strings_addMetaData(L: PLua_state; metatable: integer; userdata: integer );

implementation

uses luahandler, luaobject, luaclass, pluginexports;

function strings_addtext(L: Plua_State): integer; cdecl;
begin
  result:=0;
  if lua_gettop(L)>=1 then
    TStrings(luaclass_getClassObject(L)).AddText(Lua_ToString(L,1));
end;

function strings_add(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  data: ptruint;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L,@paramstart,@paramcount);
  if paramcount>=1 then
  begin
    if paramcount>=2 then
      data:=lua_tointeger(L,paramstart+1)
    else
      data:=0;

    lua_pushinteger(L, strings.AddObject(lua_tostring(L, paramstart),tobject(data)));
    exit(1);
  end;
end;

function strings_clear(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.Clear;
end;

function strings_beginUpdate(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.beginupdate;
end;

function strings_endUpdate(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.endupdate;
end;

function strings_remove(L: Plua_State): integer; cdecl;  //compat with ce 6
var
  strings: TStrings;
  s: string;
  paramstart,paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if lua_gettop(L)>=1 then
  begin
    s:=lua_tostring(L, paramstart);
    if strings.IndexOf(s)<>-1 then strings.Delete(strings.IndexOf(s));
  end;
end;

function strings_getData(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=1 then
  begin
    index:=lua_toInteger(L,1);
    lua_pushinteger(L, uintptr(strings.Objects[index]));
    result:=1;
  end;
end;

function strings_setData(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  index: integer;
  data: ptruint;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=2 then
  begin
    index:=lua_toInteger(L,1);
    data:=lua_tointeger(l,2);

    strings.Objects[index]:=tobject(data);
  end;
end;

function strings_getString(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L,@paramstart,@paramcount);



  if paramcount>=1 then
  begin
    index:=lua_toInteger(L,paramstart);
    lua_pushstring(L, strings[index]);
    result:=1;
  end;
end;

function strings_setString(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  index: integer;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=2 then
  begin
    index:=lua_toInteger(L,paramstart);
    s:=lua_tostring(l,paramstart+1);

    strings[index]:=s;
  end;
end;

function strings_delete(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=1 then
  begin

    index:=lua_toInteger(L, paramstart);
    strings.Delete(index);
  end;
end;


function strings_getText(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushstring(L, strings.Text);
  result:=1;
end;

function strings_setText(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  text: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if lua_gettop(L)>=1 then
  begin
    text:=Lua_ToString(L, paramstart);
    strings.Text:=text;
  end;
end;

function strings_getLineBreak(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushstring(L, strings.LineBreak);
  result:=1;
end;

function strings_setLineBreak(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  LineBreak: string;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=1 then
  begin
    LineBreak:=Lua_ToString(L, 1);
    strings.LineBreak:=LineBreak;
  end;
end;


function strings_indexOf(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=1 then
  begin
    s:=Lua_ToString(L,paramstart);
    lua_pushinteger(L, strings.IndexOf(s));
    result:=1;
  end;
end;

function strings_insert(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=2 then
  begin
    index:=lua_tointeger(L,paramstart);
    s:=Lua_ToString(L,paramstart+1);

    strings.Insert(index,s);
  end;
end;


function strings_getCount(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushinteger(L, strings.Count);
  result:=1;
end;

function strings_loadFromFile(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  ignoreencoding: boolean=true;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=1 then
  begin
    if paramcount>=2 then
      ignoreencoding:=lua_toboolean(L,paramstart+1);

    try
      strings.LoadFromFile(lua_tostring(L, paramstart){$if FPC_FULLVERSION>=30200}, ignoreencoding{$endif});
      lua_pushboolean(L, true);
    except
      lua_pushboolean(L, false);
    end;
    result:=1;
  end;
end;

function strings_saveToFile(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=1 then
  begin
    try
      strings.SaveToFile(lua_tostring(L, paramstart));
      lua_pushboolean(L, true);
    except
      lua_pushboolean(L, false);
    end;
    result:=1;
  end;
end;

procedure strings_addMetaData(L: PLua_state; metatable: integer; userdata: integer );
begin
  object_addMetaData(L, metatable, userdata);

  luaclass_addClassFunctionToTable(L, metatable, userdata, 'add', strings_add);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'addText', strings_addText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'clear', strings_clear);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'delete', strings_delete);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getText', strings_getText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setText', strings_setText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'indexOf', strings_indexOf);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'insert', strings_insert);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getCount', strings_getCount);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'remove', strings_remove);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getString', strings_getString);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setString', strings_setString);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getData', strings_getData);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setData', strings_setData);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'loadFromFile', strings_loadFromFile);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'saveToFile', strings_saveToFile);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'beginUpdate', strings_beginUpdate);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'endUpdate', strings_endUpdate);

  luaclass_addPropertyToTable(L, metatable, userdata, 'Count', strings_getCount, nil);
  luaclass_addPropertyToTable(L, metatable, userdata, 'Text', strings_getText, strings_setText);
  luaclass_addPropertyToTable(L, metatable, userdata, 'LineBreak', strings_getLineBreak, strings_setLineBreak);

  luaclass_addArrayPropertyToTable(L, metatable, userdata, 'Data', strings_getData, strings_setData);
  luaclass_addArrayPropertyToTable(L, metatable, userdata, 'String', strings_getString, strings_setString);
  luaclass_setDefaultArrayProperty(L, metatable, userdata, strings_getString, strings_setString); //so strings[12] will call strings.getString(12)
end;

procedure initializeLuaStrings;
begin
  lua_register(LuaVM, 'strings_add', strings_add);
  lua_register(LuaVM, 'strings_clear', strings_clear);
  lua_register(LuaVM, 'strings_delete', strings_delete);
  lua_register(LuaVM, 'strings_getText', strings_getText);
  lua_register(LuaVM, 'strings_setText', strings_setText);
  lua_register(LuaVM, 'strings_indexOf', strings_indexOf);
  lua_register(LuaVM, 'strings_insert', strings_insert);
  lua_register(LuaVM, 'strings_getCount', strings_getCount);
  lua_register(LuaVM, 'strings_remove', strings_remove);
  lua_register(LuaVM, 'strings_getString', strings_getString);
  lua_register(LuaVM, 'strings_setString', strings_setString);
  lua_register(LuaVM, 'strings_loadFromFile', strings_loadFromFile);
  lua_register(LuaVM, 'strings_saveToFile', strings_saveToFile);
end;

initialization
  luaclass_register(TStrings, strings_addMetaData);

end.

=======
unit LuaStrings;

{$mode delphi}

interface

uses
  Classes, SysUtils,lua, lualib, lauxlib;

procedure initializeLuaStrings;
procedure strings_addMetaData(L: PLua_state; metatable: integer; userdata: integer );

implementation

uses luahandler, luaobject, luaclass, pluginexports;

function strings_addtext(L: Plua_State): integer; cdecl;
begin
  result:=0;
  if lua_gettop(L)>=1 then
    TStrings(luaclass_getClassObject(L)).AddText(Lua_ToString(L,1));
end;

function strings_add(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  data: ptruint;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L,@paramstart,@paramcount);
  if paramcount>=1 then
  begin
    if paramcount>=2 then
      data:=lua_tointeger(L,paramstart+1)
    else
      data:=0;

    lua_pushinteger(L, strings.AddObject(lua_tostring(L, paramstart),tobject(data)));
    exit(1);
  end;
end;

function strings_clear(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.Clear;
end;

function strings_beginUpdate(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.beginupdate;
end;

function strings_endUpdate(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  strings.endupdate;
end;

function strings_remove(L: Plua_State): integer; cdecl;  //compat with ce 6
var
  strings: TStrings;
  s: string;
  paramstart,paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if lua_gettop(L)>=1 then
  begin
    s:=lua_tostring(L, paramstart);
    if strings.IndexOf(s)<>-1 then strings.Delete(strings.IndexOf(s));
  end;
end;

function strings_getData(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=1 then
  begin
    index:=lua_toInteger(L,1);
    lua_pushinteger(L, uintptr(strings.Objects[index]));
    result:=1;
  end;
end;

function strings_setData(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  index: integer;
  data: ptruint;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=2 then
  begin
    index:=lua_toInteger(L,1);
    data:=lua_tointeger(l,2);

    strings.Objects[index]:=tobject(data);
  end;
end;

function strings_getString(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L,@paramstart,@paramcount);



  if paramcount>=1 then
  begin
    index:=lua_toInteger(L,paramstart);
    lua_pushstring(L, strings[index]);
    result:=1;
  end;
end;

function strings_setString(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  index: integer;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=2 then
  begin
    index:=lua_toInteger(L,paramstart);
    s:=lua_tostring(l,paramstart+1);

    strings[index]:=s;
  end;
end;

function strings_delete(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=1 then
  begin

    index:=lua_toInteger(L, paramstart);
    strings.Delete(index);
  end;
end;


function strings_getText(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushstring(L, strings.Text);
  result:=1;
end;

function strings_setText(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  text: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if lua_gettop(L)>=1 then
  begin
    text:=Lua_ToString(L, paramstart);
    strings.Text:=text;
  end;
end;

function strings_getLineBreak(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushstring(L, strings.LineBreak);
  result:=1;
end;

function strings_setLineBreak(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  LineBreak: string;
begin
  result:=0;
  strings:=luaclass_getClassObject(L);
  if lua_gettop(L)>=1 then
  begin
    LineBreak:=Lua_ToString(L, 1);
    strings.LineBreak:=LineBreak;
  end;
end;


function strings_indexOf(L: PLua_State): integer; cdecl;
var
  parameters: integer;
  strings: TStrings;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);
  if paramcount>=1 then
  begin
    s:=Lua_ToString(L,paramstart);
    lua_pushinteger(L, strings.IndexOf(s));
    result:=1;
  end;
end;

function strings_insert(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
  index: integer;
  s: string;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=2 then
  begin
    index:=lua_tointeger(L,paramstart);
    s:=Lua_ToString(L,paramstart+1);

    strings.Insert(index,s);
  end;
end;


function strings_getCount(L: PLua_State): integer; cdecl;
var
  strings: TStrings;
begin
  strings:=luaclass_getClassObject(L);
  lua_pushinteger(L, strings.Count);
  result:=1;
end;

function strings_loadFromFile(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  ignoreencoding: boolean=true;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=1 then
  begin
    if paramcount>=2 then
      ignoreencoding:=lua_toboolean(L,paramstart+1);

    try
      strings.LoadFromFile(lua_tostring(L, paramstart){$if FPC_FULLVERSION>=30200}, ignoreencoding{$endif});
      lua_pushboolean(L, true);
    except
      lua_pushboolean(L, false);
    end;
    result:=1;
  end;
end;

function strings_saveToFile(L: Plua_State): integer; cdecl;
var
  strings: TStrings;
  paramstart, paramcount: integer;
begin
  result:=0;
  strings:=luaclass_getClassObject(L, @paramstart,@paramcount);

  if paramcount>=1 then
  begin
    try
      strings.SaveToFile(lua_tostring(L, paramstart));
      lua_pushboolean(L, true);
    except
      lua_pushboolean(L, false);
    end;
    result:=1;
  end;
end;

procedure strings_addMetaData(L: PLua_state; metatable: integer; userdata: integer );
begin
  object_addMetaData(L, metatable, userdata);

  luaclass_addClassFunctionToTable(L, metatable, userdata, 'add', strings_add);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'addText', strings_addText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'clear', strings_clear);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'delete', strings_delete);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getText', strings_getText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setText', strings_setText);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'indexOf', strings_indexOf);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'insert', strings_insert);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getCount', strings_getCount);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'remove', strings_remove);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getString', strings_getString);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setString', strings_setString);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'getData', strings_getData);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'setData', strings_setData);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'loadFromFile', strings_loadFromFile);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'saveToFile', strings_saveToFile);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'beginUpdate', strings_beginUpdate);
  luaclass_addClassFunctionToTable(L, metatable, userdata, 'endUpdate', strings_endUpdate);

  luaclass_addPropertyToTable(L, metatable, userdata, 'Count', strings_getCount, nil);
  luaclass_addPropertyToTable(L, metatable, userdata, 'Text', strings_getText, strings_setText);
  luaclass_addPropertyToTable(L, metatable, userdata, 'LineBreak', strings_getLineBreak, strings_setLineBreak);

  luaclass_addArrayPropertyToTable(L, metatable, userdata, 'Data', strings_getData, strings_setData);
  luaclass_addArrayPropertyToTable(L, metatable, userdata, 'String', strings_getString, strings_setString);
  luaclass_setDefaultArrayProperty(L, metatable, userdata, strings_getString, strings_setString); //so strings[12] will call strings.getString(12)
end;

procedure initializeLuaStrings;
begin
  lua_register(LuaVM, 'strings_add', strings_add);
  lua_register(LuaVM, 'strings_clear', strings_clear);
  lua_register(LuaVM, 'strings_delete', strings_delete);
  lua_register(LuaVM, 'strings_getText', strings_getText);
  lua_register(LuaVM, 'strings_setText', strings_setText);
  lua_register(LuaVM, 'strings_indexOf', strings_indexOf);
  lua_register(LuaVM, 'strings_insert', strings_insert);
  lua_register(LuaVM, 'strings_getCount', strings_getCount);
  lua_register(LuaVM, 'strings_remove', strings_remove);
  lua_register(LuaVM, 'strings_getString', strings_getString);
  lua_register(LuaVM, 'strings_setString', strings_setString);
  lua_register(LuaVM, 'strings_loadFromFile', strings_loadFromFile);
  lua_register(LuaVM, 'strings_saveToFile', strings_saveToFile);
end;

initialization
  luaclass_register(TStrings, strings_addMetaData);

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
