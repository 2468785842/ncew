<<<<<<< HEAD
program speedhacktest;

{$MODE Delphi}

uses
  {$ifdef darwin}
  cthreads,
  {$endif}
  Forms, Interfaces,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
=======
program speedhacktest;

{$MODE Delphi}

uses
  {$ifdef darwin}
  cthreads,
  {$endif}
  Forms, Interfaces,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Scaled:=True;
  Application.Title:='';
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
