object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Manager'
  ClientHeight = 145
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnInit: TButton
    Left = 32
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Iniciar Calculadora'
    TabOrder = 0
    OnClick = btnInitClick
  end
  object btnLiberar: TButton
    Left = 32
    Top = 55
    Width = 177
    Height = 25
    Caption = 'Liberar Calculadora'
    TabOrder = 1
    OnClick = btnLiberarClick
  end
  object edtTexto: TEdit
    Left = 32
    Top = 86
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'edtTexto'
  end
  object btnCountChars: TButton
    Left = 159
    Top = 86
    Width = 50
    Height = 25
    Caption = 'Count'
    TabOrder = 3
    OnClick = btnCountCharsClick
  end
end
