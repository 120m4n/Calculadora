program calculadora;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fPrincipal},
  uFunciones in 'uFunciones.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
