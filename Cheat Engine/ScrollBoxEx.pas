<<<<<<< HEAD
unit ScrollBoxEx;

{$mode delphi}

interface

uses
  Classes, SysUtils, lmessages, forms, messages, betterControls;

type
  TScrollBox=class({$ifdef windows}betterControls.{$else}Forms.{$endif}TScrollbox)
  private
    procedure WMVScroll(var Msg: TMessage); message WM_VSCROLL;
  public
    OnVScroll: TNotifyEvent;
end;

implementation

procedure TScrollBox.WMVScroll(var Msg: TMessage);
begin
  if assigned(OnVScroll) then OnVScroll(self);

  inherited;
end;

end.

=======
unit ScrollBoxEx;

{$mode delphi}

interface

uses
  Classes, SysUtils, lmessages, forms, messages, betterControls;

type
  TScrollBox=class({$ifdef windows}betterControls.{$else}Forms.{$endif}TScrollbox)
  private
    procedure WMVScroll(var Msg: TMessage); message WM_VSCROLL;
  public
    OnVScroll: TNotifyEvent;
end;

implementation

procedure TScrollBox.WMVScroll(var Msg: TMessage);
begin
  if assigned(OnVScroll) then OnVScroll(self);

  inherited;
end;

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
