object frmRemoveMascaraCPF: TfrmRemoveMascaraCPF
  Left = 0
  Top = 0
  Caption = 'Remove M'#225'scara de CPF'
  ClientHeight = 591
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = edtDBCPF
    end
    object lblCPF: TLabel
      Left = 168
      Top = 32
      Width = 44
      Height = 19
      Caption = 'lblCPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtDBCPF: TDBEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CPF'
      DataSource = dsClientes
      TabOrder = 4
    end
    object btnRemoveCPF: TBitBtn
      Left = 368
      Top = 29
      Width = 137
      Height = 25
      Caption = 'Remove M'#225'scara CPF'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000110000004B0000007C0000007D0000
        0058000000150000000000000000000000000000000000000000000000000000
        0000000000000000000300000076000000E1000000FF000000F3000000F30000
        00FF000000E50000007A0000000E000000000000000000000000000000000000
        00000000001F000000D0000000FF000000AE0000004E0000001B0000001C0000
        004B000000A9000000FF0000009E000000000000000000000000000000000000
        0008000000CE000000F300000043000000000000000000000000000000000000
        0000000000000000005C00000043000000020000000000000000000000000000
        007E000000FF0000003400000000000000000000000000000000000000000000
        0000000000000000000000000000000000660000008300000000000000120000
        00EA0000009E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000007000000E8000000E2000000110000004B0000
        00FF000000430000000000000000000000000000000000000000000000000000
        000000000000000000000000007E000000FF000000FE0000004D0000007B0000
        00FA000000340000001000000004000000000000000000000000000000000000
        00000000000000000019000000E3000000F4000000FF00000076000000760000
        00FF000000F3000000E100000014000000000000000000000000000000000000
        000000000000000000050000001000000038000000FC0000007B0000004D0000
        00FE000000FF0000007A00000000000000000000000000000000000000000000
        000000000000000000000000000000000046000000FF0000004A000000150000
        00E7000000E20000000600000000000000000000000000000000000000000000
        0000000000000000000000000000000000A2000000E900000012000000000000
        0082000000640000000000000000000000000000000000000000000000000000
        0000000000000000000000000034000000FF0000007900000000000000000000
        000000000000000000440000005C000000000000000000000000000000000000
        00000000000000000044000000F4000000CE0000000700000000000000000000
        000000000000000000A0000000FF000000A90000004B0000001D0000001C0000
        004E000000AE000000FF000000CF0000001F0000000000000000000000000000
        0000000000000000000E0000007A000000E6000000FF000000F3000000F30000
        00FF000000E00000007600000003000000000000000000000000000000000000
        0000000000000000000000000000000000160000005A0000007C0000007B0000
        004B000000110000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnRemoveCPFClick
    end
    object btnFechar: TBitBtn
      Left = 528
      Top = 29
      Width = 75
      Height = 25
      Caption = 'btnFechar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0002000000DA000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000E9000000880000001A000000000000000000000000000000000000
        0001000000A3000000CA000000C7000000C7000000C7000000C7000000C60000
        00C9000000E4000000FF000000E2000000520000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000004D000000DE000000FF0000005400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000018000000E4000000EB00000022000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000046000000FF00000099000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000E9000000F1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000D3000000FF000000000000
        0000000000000000000000000000000000080000000000000000000000000000
        000000000000000000000000000000000009000000F4000000DA000000000000
        0000000000000000000000000075000000710000000000000000000000000000
        000000000000000000000000000000000070000000FF00000081000000000000
        00000000000000000092000000FF0000007B0000000000000000000000000000
        0000000000000000000000000040000000FB000000D20000000C000000000000
        001B000000B8000000FF000000FF0000007F000000080000000E0000000C0000
        001B000000410000008C000000FF000000EB0000002A00000000000000290000
        00E0000000FF000000FF000000FF000000FB000000F4000000F8000000F60000
        00FF000000FF000000FF000000BA0000002500000000000000000000000F0000
        007E000000FF000000FF000000FF000000B9000000740000007C0000007C0000
        007C0000006A0000003400000000000000000000000000000000000000000000
        00000000004A000000EA000000FF0000006F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000002A000000D10000007F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001B0000004A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnOpen: TBitBtn
      Left = 632
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 2
      OnClick = btnOpenClick
    end
    object btnClose: TBitBtn
      Left = 713
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1094
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 1094
      Height = 510
      Align = alClient
      DataSource = dsClientes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end>
    end
  end
  object qryClientes: TFDQuery
    SQL.Strings = (
      'SELECT'
      '  C.CODIGO,'
      '  C.CPF'
      'FROM'
      '  CLIENTES C'
      'ORDER BY'
      '  CPF')
    Left = 959
    Top = 27
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 901
    Top = 29
  end
end