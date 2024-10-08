<<<<<<< HEAD
unit LuaGroupbox;

{$mode delphi}

interface

uses
  Classes, SysUtils, lua, lualib, lauxlib, stdctrls, controls, betterControls;

  procedure initializeLuaGroupbox;
  procedure groupbox_addMetaData(L: PLua_state; metatable: integer; userdata: integer );

implementation

uses luaclass, luahandler, pluginexports, LuaWinControl;

function createGroupBox(L: Plua_State): integer; cdecl;
var parameters: integer;
  f: TWinControl;
  p: TGroupBox;
begin
  result:=0;
  if lua_gettop(L)>=1 then
  begin
    f:=lua_toceuserdata(L, 1);
    p:=tgroupbox.Create(f);
    p.parent:=f;

    lua_pop(L, lua_gettop(L));

    luaclass_newClass(L, p);
    result:=1;
  end;
end;

procedure groupbox_addMetaData(L: PLua_state; metatable: integer; userdata: integer );
begin
  wincontrol_addMetaData(L, metatable, userdata);
end;

procedure initializeLuaGroupbox;
begin
  lua_register(LuaVM, 'createGroupBox', createGroupBox);
end;

initialization
  luaclass_register(TCustomGroupBox, groupbox_addMetaData);

end.

=======
unit LuaGroupbox;

{$mode delphi}

interface

uses
  Classes, SysUtils, lua, lualib, lauxlib, stdctrls, controls, betterControls;

  procedure initializeLuaGroupbox;
  procedure groupbox_addMetaData(L: PLua_state; metatable: integer; userdata: integer );

implementation

uses luaclass, luahandler, pluginexports, LuaWinControl;

function createGroupBox(L: Plua_State): integer; cdecl;
var parameters: integer;
  f: TWinControl;
  p: TGroupBox;
begin
  result:=0;
  if lua_gettop(L)>=1 then
  begin
    f:=lua_toceuserdata(L, 1);
    p:=tgroupbox.Create(f);
    p.parent:=f;

    lua_pop(L, lua_gettop(L));

    luaclass_newClass(L, p);
    result:=1;
  end;
end;

procedure groupbox_addMetaData(L: PLua_state; metatable: integer; userdata: integer );
begin
  wincontrol_addMetaData(L, metatable, userdata);
end;

procedure initializeLuaGroupbox;
begin
  lua_register(LuaVM, 'createGroupBox', createGroupBox);
end;

initialization
  luaclass_register(TCustomGroupBox, groupbox_addMetaData);

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
