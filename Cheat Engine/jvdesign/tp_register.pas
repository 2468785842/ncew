<<<<<<< HEAD
unit tp_register;

{$mode objfpc}

interface

uses
  Classes, SysUtils; 

procedure register;


implementation
uses
  jvDesignSurface, LResources;

procedure Register;
begin
  RegisterComponents('Jv Runtime Design', [TJvDesignSurface, TJvDesignScrollBox, TJvDesignPanel]);
end;

initialization
  {$I test.lrs}

end.

=======
unit tp_register;

{$mode objfpc}

interface

uses
  Classes, SysUtils; 

procedure register;


implementation
uses
  jvDesignSurface, LResources;

procedure Register;
begin
  RegisterComponents('Jv Runtime Design', [TJvDesignSurface, TJvDesignScrollBox, TJvDesignPanel]);
end;

initialization
  {$I test.lrs}

end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
