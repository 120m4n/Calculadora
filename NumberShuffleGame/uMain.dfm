object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Game Number Shuffle'
  ClientHeight = 308
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Title: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    Caption = 'Number Shuffle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 104
    ExplicitWidth = 185
  end
  object MainPanel: TPanel
    Left = 0
    Top = 41
    Width = 320
    Height = 267
    Align = alLeft
    BorderWidth = 3
    Caption = 'MainPanel'
    Color = clWindowFrame
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object btnNum1: TButton
      Left = 40
      Top = 46
      Width = 50
      Height = 50
      Caption = '1'
      TabOrder = 0
      OnClick = btnNum1Click
    end
    object btnNum2: TButton
      Left = 96
      Top = 46
      Width = 50
      Height = 50
      Caption = '2'
      TabOrder = 1
      OnClick = btnNum2Click
    end
    object btnNum10: TButton
      Left = 96
      Top = 158
      Width = 50
      Height = 50
      Caption = '10'
      TabOrder = 2
      OnClick = btnNum10Click
    end
    object btnNum11: TButton
      Left = 152
      Top = 158
      Width = 50
      Height = 50
      Caption = '11'
      TabOrder = 3
      OnClick = btnNum11Click
    end
    object btnNum12: TButton
      Left = 208
      Top = 158
      Width = 50
      Height = 50
      TabOrder = 4
      OnClick = btnNum12Click
    end
    object btnNum3: TButton
      Left = 152
      Top = 46
      Width = 50
      Height = 50
      Caption = '3'
      TabOrder = 5
      OnClick = btnNum3Click
    end
    object btnNum4: TButton
      Left = 208
      Top = 46
      Width = 50
      Height = 50
      Caption = '4'
      TabOrder = 6
      OnClick = btnNum4Click
    end
    object btnNum5: TButton
      Left = 40
      Top = 102
      Width = 50
      Height = 50
      Caption = '5'
      TabOrder = 7
      OnClick = btnNum5Click
    end
    object btnNum6: TButton
      Left = 96
      Top = 102
      Width = 50
      Height = 50
      Caption = '6'
      TabOrder = 8
      OnClick = btnNum6Click
    end
    object btnNum7: TButton
      Left = 152
      Top = 102
      Width = 50
      Height = 50
      Caption = '7'
      TabOrder = 9
      OnClick = btnNum7Click
    end
    object btnNum8: TButton
      Left = 208
      Top = 102
      Width = 50
      Height = 50
      Caption = '8'
      TabOrder = 10
      OnClick = btnNum8Click
    end
    object btnNum9: TButton
      Left = 40
      Top = 158
      Width = 50
      Height = 50
      Caption = '9'
      TabOrder = 11
      OnClick = btnNum9Click
    end
  end
  object BtnPanel: TPanel
    Left = 320
    Top = 41
    Width = 308
    Height = 267
    Align = alClient
    Caption = 'BtnPanel'
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = 448
    ExplicitTop = 256
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      AlignWithMargins = True
      Left = 21
      Top = 42
      Width = 108
      Height = 126
      Alignment = taCenter
      AutoSize = False
      Caption = 'Number  of  Clicks'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lblNumOfClicks: TLabel
      AlignWithMargins = True
      Left = 54
      Top = 174
      Width = 48
      Height = 40
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object btnExit: TButton
      Left = 142
      Top = 170
      Width = 123
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
    end
    object btnReset: TButton
      Left = 142
      Top = 114
      Width = 123
      Height = 25
      Caption = 'Reset'
      TabOrder = 1
      OnClick = btnResetClick
    end
    object btnSolution: TButton
      Left = 142
      Top = 58
      Width = 123
      Height = 25
      Caption = 'Solution'
      TabOrder = 2
      OnClick = btnSolutionClick
    end
  end
end
