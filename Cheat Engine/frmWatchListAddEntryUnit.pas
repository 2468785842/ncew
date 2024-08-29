<<<<<<< HEAD
unit frmWatchListAddEntryUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, betterControls;

type

  { TfrmWatchListAddEntry }

  TfrmWatchListAddEntry = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    edtExpression: TEdit;
    Panel1: TPanel;
    rgType: TRadioGroup;
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmWatchListAddEntry: TfrmWatchListAddEntry;

implementation

{$R *.lfm}

{ TfrmWatchListAddEntry }

procedure TfrmWatchListAddEntry.FormShow(Sender: TObject);
begin
  edtExpression.SetFocus;
end;

end.

=======
unit frmWatchListAddEntryUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, betterControls;

type

  { TfrmWatchListAddEntry }

  TfrmWatchListAddEntry = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    edtExpression: TEdit;
    Panel1: TPanel;
    rgType: TRadioGroup;
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmWatchListAddEntry: TfrmWatchListAddEntry;

implementation

{$R *.lfm}

{ TfrmWatchListAddEntry }

procedure TfrmWatchListAddEntry.FormShow(Sender: TObject);
begin
  edtExpression.SetFocus;
end;

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
