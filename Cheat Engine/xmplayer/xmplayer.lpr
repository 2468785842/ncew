<<<<<<< HEAD
program xmplayer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, main, xmplayer_defines
  { you can add units after this };

begin
  StartListening;
end.

=======
program xmplayer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, main, xmplayer_defines
  { you can add units after this };

begin
  StartListening;
end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
