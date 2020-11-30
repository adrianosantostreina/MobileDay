object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Monitor das Filas'
  ClientHeight = 177
  ClientWidth = 457
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
    Width = 451
    Height = 41
    Align = alTop
    Caption = 'Monitor de Filas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 344
    ExplicitTop = 120
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 451
    Height = 124
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 63
      Top = 14
      Width = 325
      Height = 30
      Caption = 'FILA:MOBILEDAYS:2020:VENDAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 63
      Top = 72
      Width = 325
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 40
    Top = 104
  end
end
