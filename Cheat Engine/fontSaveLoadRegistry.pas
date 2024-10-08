<<<<<<< HEAD
unit fontSaveLoadRegistry;

{Responsible for saving and loading a font from the registry}


{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, registry, Graphics, LazUTF8;

procedure SaveFontToRegistry(f: TFont; reg: TRegistry);
procedure LoadFontFromRegistry(f: TFont; reg: TRegistry);

implementation



procedure SaveFontToRegistry(f: TFont; reg: TRegistry);
var fd: TFontData;
begin
  fd:=GetFontData(f.handle);
  reg.WriteInteger('Height', fd.Height);
  reg.WriteInteger('Pitch', integer(fd.Pitch));
  reg.WriteInteger('Style', integer(fd.Style));
  reg.WriteInteger('CharSet', integer(fd.CharSet));
  reg.WriteInteger('Quality', integer(f.Quality));
  reg.WriteString('Name', UTF8ToWinCP(fd.Name));
  reg.WriteInteger('Orientation', fd.Orientation);
  reg.WriteInteger('Color', f.Color);
end;

procedure LoadFontFromRegistry(f: TFont; reg: TRegistry);
var
  fd: TFontData;
  s: string;
begin
  try
    f.Height:=reg.ReadInteger('Height');
    s:=WinCPToUTF8(reg.ReadString('Name'));
    f.Name:=s;
    f.Color:=reg.ReadInteger('Color');
    integer(fd.Pitch):=reg.ReadInteger('Pitch');
    integer(fd.Style):=reg.ReadInteger('Style');
    integer(fd.Quality):=reg.ReadInteger('Quality');

    f.Pitch:=fd.Pitch;
    f.style:=fd.style;
    f.Quality:=fd.Quality;

    f.CharSet:=reg.ReadInteger('CharSet');
    f.Orientation:=reg.ReadInteger('Orientation');
  except
  end;
end;

end.

=======
unit fontSaveLoadRegistry;

{Responsible for saving and loading a font from the registry}


{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, registry, Graphics, LazUTF8;

procedure SaveFontToRegistry(f: TFont; reg: TRegistry);
procedure LoadFontFromRegistry(f: TFont; reg: TRegistry);

implementation



procedure SaveFontToRegistry(f: TFont; reg: TRegistry);
var fd: TFontData;
begin
  fd:=GetFontData(f.handle);
  reg.WriteInteger('Height', fd.Height);
  reg.WriteInteger('Pitch', integer(fd.Pitch));
  reg.WriteInteger('Style', integer(fd.Style));
  reg.WriteInteger('CharSet', integer(fd.CharSet));
  reg.WriteInteger('Quality', integer(f.Quality));
  reg.WriteString('Name', UTF8ToWinCP(fd.Name));
  reg.WriteInteger('Orientation', fd.Orientation);
  reg.WriteInteger('Color', f.Color);
end;

procedure LoadFontFromRegistry(f: TFont; reg: TRegistry);
var
  fd: TFontData;
  s: string;
  i: integer;
begin
  try
    f.Height:=reg.ReadInteger('Height');
    s:=WinCPToUTF8(reg.ReadString('Name'));
    f.Name:=s;
    f.Color:=reg.ReadInteger('Color');
    i:=reg.ReadInteger('Pitch');
    fd.Pitch:=TFontPitch(i);

    i:=reg.ReadInteger('Style');
    fd.Style:=TFontStylesBase(i);

    i:=reg.ReadInteger('Quality');
    fd.Quality:=TFontQuality(i);

    f.Pitch:=fd.Pitch;
    f.style:=fd.style;
    f.Quality:=fd.Quality;

    f.CharSet:=reg.ReadInteger('CharSet');
    f.Orientation:=reg.ReadInteger('Orientation');
  except
  end;
end;

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
