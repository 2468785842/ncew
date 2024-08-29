<<<<<<< HEAD
unit NullStream;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type TNullStream=class(TStream)
  private
  public
    function Write(const Buffer; Count: Longint): Longint; override;
end;


implementation

function TNullStream.Write(const Buffer; Count: Longint): Longint;
begin
  result:=count;
end;


end.

=======
unit NullStream;

{$mode delphi}

interface

uses
  Classes, SysUtils;

type TNullStream=class(TStream)
  private
  public
    function Write(const Buffer; Count: Longint): Longint; override;
end;


implementation

function TNullStream.Write(const Buffer; Count: Longint): Longint;
begin
  result:=count;
end;


end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
