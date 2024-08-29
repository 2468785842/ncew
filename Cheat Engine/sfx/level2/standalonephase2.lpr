<<<<<<< HEAD
program standalonephase2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, main
  { you can add units after this };

{$ifdef cpu64}
  {$ifdef release}
    {$error The launcher should be build for 32-bit only}
  {$endif}
{$endif}


{$R *.res}

begin
  Launch;
end.

=======
program standalonephase2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, main
  { you can add units after this };

{$ifdef cpu64}
  {$ifdef release}
    {$error The launcher should be build for 32-bit only}
  {$endif}
{$endif}


{$R *.res}

begin
  Launch;
end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
