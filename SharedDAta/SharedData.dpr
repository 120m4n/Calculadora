library SharedData;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters.

  Important note about VCL usage: when this DLL will be implicitly
  loaded and this DLL uses TWicImage / TImageCollection created in
  any unit initialization section, then Vcl.WicImageInit must be
  included into your library's USES clause. }

uses
  System.SysUtils,
  System.Classes;

{$R *.res}

type
  TDataRecord = record
    Field1: string;
    Field2: string;
    Field3: Integer;
  end;
  PDataRecord = ^TDataRecord;

var
  DataRecord: TDataRecord;
  DataPtr: PDataRecord = nil;

function GetDataRecord: PDataRecord; stdcall;
var
  Temp: string;
begin
  Result := DataPtr;

    // Intercambiar valores de Field1 y Field2
  Temp := DataPtr.Field1;
  DataPtr.Field1 := DataPtr.Field2;
  DataPtr.Field2 := Temp;

  // Calcular la suma de los caracteres de Field1 y Field2
  DataPtr.Field3 := Length(DataPtr.Field1) + Length(DataPtr.Field2);
end;

procedure SetDataRecord(const NewData: PDataRecord); stdcall;
begin
  if DataPtr = nil then
    New(DataPtr);

  DataPtr^ := NewData^;
end;


procedure DisposeDataRecord; stdcall;
begin
  Dispose(DataPtr);
  DataPtr := nil;
end;


exports
  GetDataRecord,
  SetDataRecord,
  DisposeDataRecord;

begin
end.
