<<<<<<< HEAD
unit zstreamext;

{$mode delphi}

interface

uses
  Classes, SysUtils, zstream;

type
  TCompressionstreamWithPositionSupport=class(Tcompressionstream)
  private
  public
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;  override;
  end;

implementation

resourcestring
  rsASeekWasDoneForAnotherPurpose = 'A seek was done for another purpose than getting the position';

function TcompressionstreamWithPositionSupport.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  if (origin=soCurrent) and (offset=0) then
    result:=raw_written //fsource.position
  else
    raise exception.create(rsASeekWasDoneForAnotherPurpose);
end;


end.

=======
unit zstreamext;

{$mode delphi}

interface

uses
  Classes, SysUtils, zstream;

type
  TCompressionstreamWithPositionSupport=class(Tcompressionstream)
  private
  public
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;  override;
  end;

implementation

resourcestring
  rsASeekWasDoneForAnotherPurpose = 'A seek was done for another purpose than getting the position';

function TcompressionstreamWithPositionSupport.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  if (origin=soCurrent) and (offset=0) then
    result:=raw_written //fsource.position
  else
    raise exception.create(rsASeekWasDoneForAnotherPurpose);
end;


end.

>>>>>>> a3e1a24b8cf6b1bafc5aecce676cca5131281ade
