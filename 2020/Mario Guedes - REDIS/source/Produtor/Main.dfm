object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Produtor de Eventos'
  ClientHeight = 249
  ClientWidth = 377
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
    Width = 371
    Height = 41
    Align = alTop
    Caption = 'Produtor de Eventos'
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
    Top = 205
    Width = 371
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Button1: TButton
      Left = 256
      Top = 9
      Width = 106
      Height = 25
      Caption = 'Nova inst'#226'ncia'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 13
      Width = 127
      Height = 17
      Caption = 'Ligar metralhadora'
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 371
    Height = 149
    Align = alClient
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    ExplicitLeft = -2
    object Button2: TButton
      Left = 96
      Top = 50
      Width = 180
      Height = 49
      Caption = 'PRODUZIR EVENTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 24
    Top = 64
  end
end
