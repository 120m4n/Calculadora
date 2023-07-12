unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions, Vcl.ActnList;

type
  TfPrincipal = class(TForm)
    edtDisplay: TEdit;
    btnMinus: TButton;
    btnMultiply: TButton;
    btnDivision: TButton;
    btnCE: TButton;
    btn7: TButton;
    btn8: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn9: TButton;
    btnPlus: TButton;
    btn0: TButton;
    btnDot: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnEnter: TButton;
    btnBackSpace: TButton;
    procedure ControlAction1Execute(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.btn7Click(Sender: TObject);
begin
  if edtDisplay.Text = '0' then
    edtDisplay.Text := '7'
  else
    edtDisplay.Text :=  edtDisplay.Text + '7';
end;

procedure TfPrincipal.ControlAction1Execute(Sender: TObject);
var
  tag : integer;
  captionText : string;
begin
  tag := TButton(Sender).tag;
  captionText := TButton(Sender).Caption;
  edtDisplay.Text := '';
  if (tag > -1) then
    edtDisplay.Text := IntToStr(tag)
  else
    edtDisplay.Text := 'Operacion';
end;
end.
