object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Consumidor de Eventos'
  ClientHeight = 574
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 676
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Button2: TButton
      Left = 273
      Top = 8
      Width = 129
      Height = 25
      Caption = 'ATIVAR CONSUMO'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 530
    Width = 676
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 177
      Height = 21
      Caption = 'Quantidade de eventos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 561
      Top = 9
      Width = 106
      Height = 25
      Caption = 'Nova inst'#226'ncia'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 676
    Height = 474
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
    TabOrder = 2
  end
end
