object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Ranking de Pontos'
  ClientHeight = 570
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
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
    Width = 566
    Height = 41
    Align = alTop
    Caption = 'Joguinho Maneiro - TOP 3 das Salas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 566
    Height = 517
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 558
      Height = 509
      Align = alClient
      Color = 16384
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 48
    Top = 280
  end
end
