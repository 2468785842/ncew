<<<<<<< HEAD
library exampleplugin;

{$MODE Delphi}

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  interfaces,
  SysUtils,
  Classes,
  Unit1 in 'Unit1.pas';

{$R *.res}

exports GetVersion;
exports InitializePlugin;
exports DisablePlugin;

begin
end.
=======
library exampleplugin;

{$MODE Delphi}

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  interfaces,
  SysUtils,
  Classes,
  Unit1 in 'Unit1.pas';

{$R *.res}

exports GetVersion;
exports InitializePlugin;
exports DisablePlugin;

begin
end.
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
