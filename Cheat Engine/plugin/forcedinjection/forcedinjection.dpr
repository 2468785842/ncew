<<<<<<< HEAD
library forcedinjection;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

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
  SysUtils,
  Classes,
  pluginconfig in 'pluginconfig.pas',
  cepluginsdk in 'cepluginsdk.pas';

//i'm just reusing this unit (i'm lazy)

exports CEPlugin_GetVersion;
exports CEPlugin_InitializePlugin;
exports CEPlugin_DisablePlugin;

//exports FixedEnumProcessModulesEx;

begin

end.
=======
library forcedinjection;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

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
  SysUtils,
  Classes,
  pluginconfig in 'pluginconfig.pas',
  cepluginsdk in 'cepluginsdk.pas';

//i'm just reusing this unit (i'm lazy)

exports CEPlugin_GetVersion;
exports CEPlugin_InitializePlugin;
exports CEPlugin_DisablePlugin;

//exports FixedEnumProcessModulesEx;

begin

end.
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
