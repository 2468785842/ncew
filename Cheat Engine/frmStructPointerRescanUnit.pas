<<<<<<< HEAD
unit frmStructPointerRescanUnit; 

{$mode delphi}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls, betterControls;

type

  { TfrmStructPointerRescan }

  TfrmStructPointerRescan = class(TForm)
    Button1: TButton;
    Button2: TButton;
    cbCaseSensitive: TCheckBox;
    cbMustBeStart: TCheckBox;
    cbPointerInRange: TCheckBox;
    comboType: TComboBox;
    edtPointerStart: TEdit;
    edtPointerStop: TEdit;
    edtRegExp: TEdit;
    lblAnd: TLabel;
    rbMustBeDifferent: TRadioButton;
    rbMustBeSame: TRadioButton;
    rbDiffDontCare: TRadioButton;
    procedure cbPointerInRangeChange(Sender: TObject);
    procedure cbStringscanChange(Sender: TObject);
    procedure comboTypeChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmStructPointerRescan: TfrmStructPointerRescan;

implementation

{ TfrmStructPointerRescan }

procedure TfrmStructPointerRescan.cbStringscanChange(Sender: TObject);
begin

end;

procedure TfrmStructPointerRescan.cbPointerInRangeChange(Sender: TObject);
begin
  edtPointerStart.enabled:=cbPointerInRange.checked;
  edtPointerStop.enabled:=cbPointerInRange.checked;
  lbland.enabled:=cbPointerInRange.checked;
end;

procedure TfrmStructPointerRescan.comboTypeChange(Sender: TObject);
begin
  cbCaseSensitive.Enabled:=combotype.itemindex=0;
  cbMustBeStart.enabled:=combotype.itemindex=0;
  edtRegExp.enabled:=combotype.itemindex=0;
end;

initialization
  {$I frmStructPointerRescanUnit.lrs}

end.

=======
unit frmStructPointerRescanUnit; 

{$mode delphi}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls, betterControls;

type

  { TfrmStructPointerRescan }

  TfrmStructPointerRescan = class(TForm)
    Button1: TButton;
    Button2: TButton;
    cbCaseSensitive: TCheckBox;
    cbMustBeStart: TCheckBox;
    cbPointerInRange: TCheckBox;
    comboType: TComboBox;
    edtPointerStart: TEdit;
    edtPointerStop: TEdit;
    edtRegExp: TEdit;
    lblAnd: TLabel;
    rbMustBeDifferent: TRadioButton;
    rbMustBeSame: TRadioButton;
    rbDiffDontCare: TRadioButton;
    procedure cbPointerInRangeChange(Sender: TObject);
    procedure cbStringscanChange(Sender: TObject);
    procedure comboTypeChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  frmStructPointerRescan: TfrmStructPointerRescan;

implementation

{ TfrmStructPointerRescan }

procedure TfrmStructPointerRescan.cbStringscanChange(Sender: TObject);
begin

end;

procedure TfrmStructPointerRescan.cbPointerInRangeChange(Sender: TObject);
begin
  edtPointerStart.enabled:=cbPointerInRange.checked;
  edtPointerStop.enabled:=cbPointerInRange.checked;
  lbland.enabled:=cbPointerInRange.checked;
end;

procedure TfrmStructPointerRescan.comboTypeChange(Sender: TObject);
begin
  cbCaseSensitive.Enabled:=combotype.itemindex=0;
  cbMustBeStart.enabled:=combotype.itemindex=0;
  edtRegExp.enabled:=combotype.itemindex=0;
end;

initialization
  {$I frmStructPointerRescanUnit.lrs}

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
