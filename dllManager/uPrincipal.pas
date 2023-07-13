unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnInit: TButton;
    btnLiberar: TButton;
    edtTexto: TEdit;
    btnCountChars: TButton;
    procedure btnInitClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure btnCountCharsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;


  function InitCalculator():Boolean; stdcall; external 'dllCalculadora.dll';
  function FreeCalculator():Boolean; stdcall; external 'dllCalculadora.dll';
  function AsignarCaption(_s : PChar):Boolean; stdcall; external 'dllCalculadora.dll';
  function CountChars(_s : PChar):Integer; stdcall; external 'dllCalculadora.dll';

implementation

{$R *.dfm}

procedure TForm2.btnInitClick(Sender: TObject);
var
  newCaption : String;
begin
  newCaption :=  'Se cambio el caption';
  if not InitCalculator then ShowMessage('Error al iniciar Calculadora')
  else
    if not AsignarCaption(PWideChar(newCaption)) then ShowMessage('Error al cambiar caption Calculadora');

end;

procedure TForm2.btnLiberarClick(Sender: TObject);
begin
   if not FreeCalculator then ShowMessage('Error al liberar Calculadora')
end;

procedure TForm2.btnCountCharsClick(Sender: TObject);
var
 count : Integer;
begin
  count := CountChars(PWideChar(edtTexto.text));
  showmessage(Format('Numero de caracteres %d',[count]));

end;

end.
