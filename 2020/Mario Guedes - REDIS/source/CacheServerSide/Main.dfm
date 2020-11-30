object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Aplicativo Mobile Supimpa'
  ClientHeight = 623
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 392
    Height = 70
    Align = alTop
    Caption = 'Imagine que isto '#233' um app de compras. E que '#233' bonito.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 8
      Width = 299
      Height = 17
      Caption = 'Imagine que isto aqui '#233' um app. E que '#233' bonito.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 40
      Width = 117
      Height = 17
      Caption = 'Usu'#225'rio #1 logado!'
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 579
    Width = 392
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Button1: TButton
      Left = 9
      Top = 8
      Width = 103
      Height = 25
      Caption = 'Listar Vendas'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 279
      Top = 9
      Width = 103
      Height = 25
      Caption = 'Nova Venda'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 143
      Top = 8
      Width = 103
      Height = 25
      Caption = 'Limpar Cache'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 392
    Height = 494
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 390
      Height = 410
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Produto'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'categoria'
          Title.Caption = 'Categoria'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_venda'
          Title.Caption = 'Data da venda'
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 390
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Suas '#250'ltimas 50 vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 1
      Top = 452
      Width = 390
      Height = 41
      Align = alBottom
      BevelOuter = bvSpace
      Caption = 'TEMPO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object CheckBox1: TCheckBox
        Left = 9
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Usar Cache'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'User_Name=postgres'
      'Password=postgres'
      'Database=exemplo')
    LoginPrompt = False
    Left = 51
    Top = 375
  end
  object FDQueryListarVenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT PRODUTO.NOME, PRODUTO.CATEGORIA, VENDAS.DATA_VENDA'
      'FROM VENDAS '
      'JOIN PRODUTO ON VENDAS.ID_PRODUTO = PRODUTO.ID_PRODUTO'
      'WHERE ID_VENDEDOR = 1'
      'ORDER BY DATA_VENDA DESC'
      'LIMIT 50')
    Left = 147
    Top = 375
  end
  object DataSource1: TDataSource
    DataSet = FDQueryListarVenda
    Left = 243
    Top = 375
  end
  object FDQueryNovaVenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'INSERT INTO VENDAS '
      '(ID_VENDEDOR, ID_PRODUTO, DATA_VENDA) '
      'VALUES'
      '(:vendedor, :produto, current_timestamp)')
    Left = 144
    Top = 456
    ParamData = <
      item
        Name = 'VENDEDOR'
        ParamType = ptInput
      end
      item
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
end
