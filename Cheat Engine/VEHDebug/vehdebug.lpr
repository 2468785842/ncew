<<<<<<< HEAD
library vehdebug;

{$mode objfpc}{$H+}

uses
  windows, Classes, init, DebugHandler, VEHDebugSharedMem, threadpoll, extcont,
  SimpleThread
  { you can add units after this };

exports ConfigName;
exports fm;
exports InitializeVEH;
exports UnloadVEH;


begin
  //OutputDebugString('vehdebug loaded. Waiting for init call');
end.

=======
library vehdebug;

{$mode objfpc}{$H+}

uses
  windows, Classes, init, DebugHandler, VEHDebugSharedMem, threadpoll, extcont,
  SimpleThread
  { you can add units after this };

exports ConfigName;
exports fm;
exports InitializeVEH;
exports UnloadVEH;


begin
  //OutputDebugString('vehdebug loaded. Waiting for init call');
end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
