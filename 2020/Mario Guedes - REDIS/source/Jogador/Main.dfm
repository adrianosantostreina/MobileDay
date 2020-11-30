object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Jogador'
  ClientHeight = 292
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 309
    Height = 41
    Align = alTop
    Caption = 'Joguinho Maneiro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 248
    Width = 309
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Button1: TButton
      Left = 196
      Top = 9
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nova inst'#226'ncia'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 9
      Top = 8
      Width = 32
      Height = 25
      Cursor = crHandPoint
      Caption = '+1'
      Enabled = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 44
      Top = 8
      Width = 32
      Height = 25
      Cursor = crHandPoint
      Caption = '+5'
      Enabled = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 79
      Top = 8
      Width = 32
      Height = 25
      Cursor = crHandPoint
      Caption = '+15'
      Enabled = False
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 117
      Top = 8
      Width = 32
      Height = 25
      Cursor = crHandPoint
      Caption = '+100'
      Enabled = False
      TabOrder = 4
      OnClick = Button6Click
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 309
    Height = 192
    Cursor = crHandPoint
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object Label1: TLabel
      Left = 19
      Top = 136
      Width = 55
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'PONTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 155
      Width = 58
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 136
      Width = 67
      Height = 13
      Caption = 'COLOCA'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 224
      Top = 155
      Width = 67
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 49
      Top = 20
      Width = 24
      Height = 13
      Caption = 'Sala:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 28
      Top = 46
      Width = 46
      Height = 13
      Caption = 'Jogador:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 79
      Top = 43
      Width = 223
      Height = 21
      Alignment = taCenter
      TabOrder = 1
      Text = 'Edit1'
    end
    object Button2: TButton
      Left = 114
      Top = 70
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'ENTRAR!'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 79
      Top = 16
      Width = 223
      Height = 21
      Alignment = taCenter
      TabOrder = 0
      Text = 'Edit2'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 147
    Top = 178
  end
end
