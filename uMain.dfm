object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'fPrincipal'
  ClientHeight = 421
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtDisplay: TEdit
    Tag = -1
    Left = 8
    Top = 8
    Width = 281
    Height = 38
    Alignment = taRightJustify
    AutoSelect = False
    AutoSize = False
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = 30
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object btnMinus: TButton
    Tag = -1
    Left = 232
    Top = 136
    Width = 57
    Height = 57
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ControlAction1Execute
  end
  object btnMultiply: TButton
    Tag = -1
    Left = 232
    Top = 64
    Width = 57
    Height = 57
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ControlAction1Execute
  end
  object btnDivision: TButton
    Tag = -1
    Left = 157
    Top = 64
    Width = 57
    Height = 57
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ControlAction1Execute
  end
  object btnCE: TButton
    Tag = -1
    Left = 8
    Top = 64
    Width = 57
    Height = 57
    Caption = 'CE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = ControlAction1Execute
  end
  object btn7: TButton
    Tag = 7
    Left = 8
    Top = 136
    Width = 57
    Height = 57
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn7Click
  end
  object btn8: TButton
    Tag = 8
    Left = 82
    Top = 136
    Width = 57
    Height = 57
    Caption = '8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = ControlAction1Execute
  end
  object btn4: TButton
    Tag = 4
    Left = 8
    Top = 208
    Width = 57
    Height = 57
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = ControlAction1Execute
  end
  object btn5: TButton
    Tag = 5
    Left = 82
    Top = 208
    Width = 57
    Height = 57
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = ControlAction1Execute
  end
  object btn6: TButton
    Tag = 6
    Left = 157
    Top = 208
    Width = 57
    Height = 57
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = ControlAction1Execute
  end
  object btn9: TButton
    Tag = 9
    Left = 157
    Top = 136
    Width = 57
    Height = 57
    Caption = '9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = ControlAction1Execute
  end
  object btnPlus: TButton
    Tag = -1
    Left = 232
    Top = 208
    Width = 57
    Height = 57
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = ControlAction1Execute
  end
  object btn0: TButton
    Left = 8
    Top = 356
    Width = 131
    Height = 57
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = ControlAction1Execute
  end
  object btnDot: TButton
    Tag = -1
    Left = 157
    Top = 356
    Width = 57
    Height = 57
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = ControlAction1Execute
  end
  object btn1: TButton
    Tag = 1
    Left = 8
    Top = 281
    Width = 57
    Height = 57
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = ControlAction1Execute
  end
  object btn2: TButton
    Tag = 2
    Left = 82
    Top = 281
    Width = 57
    Height = 57
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = ControlAction1Execute
  end
  object btn3: TButton
    Tag = 3
    Left = 157
    Top = 281
    Width = 57
    Height = 57
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = ControlAction1Execute
  end
  object btnEnter: TButton
    Tag = -1
    Left = 232
    Top = 281
    Width = 57
    Height = 129
    Caption = 'Enter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = ControlAction1Execute
  end
  object btnBackSpace: TButton
    Tag = -1
    Left = 82
    Top = 64
    Width = 57
    Height = 57
    Caption = 'BS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = ControlAction1Execute
  end
end
