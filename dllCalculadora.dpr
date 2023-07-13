library dllCalculadora;

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
  System.Classes,
  windows,
  forms,
  uMain in 'uMain.pas' {fPrincipal},
  uFunciones in 'uFunciones.pas';

{$R *.res}

function AsignarCaption(_s : PChar):Boolean;
var
  texto : string;
begin
  result := False;
  try
    if Assigned(fPrincipal) then
    begin
     texto := string(_s);
     fPrincipal.Caption := texto;
    end;
    result := True;
  except
  on e:exception do
   begin
     application.MessageBox(pchar(e.Message),'Error',MB_ICONERROR);
   end;

  end;
end;

function InitCalculator():Boolean;
begin
  result := false;
  try
    if not Assigned(fPrincipal) then fPrincipal := TfPrincipal.Create(nil);
    fPrincipal.Show;
    //fPrincipal.SetFocus;
    result := True;
   except
  on e:exception do
   begin
     application.MessageBox(pchar(e.Message),'Error',MB_ICONERROR);
   end;
 end;
end;

function FreeCalculator():Boolean;
begin
  result := False;
  try
    if Assigned(fPrincipal) then
    begin
     fPrincipal.Free;
     fPrincipal := nil;
    end;
    result := True;
  except
  on e:exception do
   begin
     application.MessageBox(pchar(e.Message),'Error',MB_ICONERROR);
   end;

  end;
end;

function CountChars(_s: PChar):Integer;
begin
  result := length(_s);
end;

exports
  AsignarCaption,
  CountChars,
  InitCalculator,
  FreeCalculator;
begin
end.
