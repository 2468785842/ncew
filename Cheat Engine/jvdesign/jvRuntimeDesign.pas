<<<<<<< HEAD
{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit jvRuntimeDesign; 

interface

uses
    tp_register, JvDesignSurface, JvConsts, JvDesignClip, JvDesignUtils, 
  JvResources, JvDesignImp, LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('tp_register', @tp_register.Register); 
end; 

initialization
  RegisterPackage('jvRuntimeDesign', @Register); 
end.
=======
{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit jvRuntimeDesign; 

interface

uses
    tp_register, JvDesignSurface, JvConsts, JvDesignClip, JvDesignUtils, 
  JvResources, JvDesignImp, LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('tp_register', @tp_register.Register); 
end; 

initialization
  RegisterPackage('jvRuntimeDesign', @Register); 
end.
>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
