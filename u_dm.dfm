object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 414
  Top = 138
  Height = 533
  Width = 760
  object Conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=microdata;Data Source=LAPTOP-CVLKGB2J\S' +
      'QLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 8
  end
  object qryPesqPedidos: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXEC SP_PESQUISAPEDIDO :ID_PEDIDO,:ID_PRODUTO')
    Left = 40
    Top = 72
  end
  object dspPesqPedidos: TDataSetProvider
    DataSet = qryPesqPedidos
    Left = 141
    Top = 72
  end
  object cdsPesqPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesqPedidos'
    Left = 240
    Top = 72
    object cdsPesqPedidosPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
    object cdsPesqPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object cdsPesqPedidosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 133
    end
    object cdsPesqPedidosQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsPesqPedidosVRUNITARIO: TBCDField
      FieldName = 'VRUNITARIO'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsPesqPedidosDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsPesqPedidosTOTAL: TBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
  end
  object qryListaProdutos: TADOQuery
    Connection = Conexao
    Parameters = <>
    SQL.Strings = (
      'exec SP_LISTAPRODUTOS')
    Left = 40
    Top = 128
  end
  object dspListaProdutos: TDataSetProvider
    DataSet = qryListaProdutos
    Left = 144
    Top = 128
  end
  object cdsListaProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaProdutos'
    Left = 239
    Top = 128
  end
  object qryProximoPedido: TADOQuery
    Connection = Conexao
    Parameters = <>
    SQL.Strings = (
      'exec SP_NROPEDIDO')
    Left = 40
    Top = 184
  end
  object dspProximoPedido: TDataSetProvider
    DataSet = qryProximoPedido
    Left = 144
    Top = 184
  end
  object cdsProximoPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProximoPedido'
    Left = 240
    Top = 184
  end
  object qryValidaPedidoItem: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'ID_PEDIDO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ID_PRODUTO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXEC SP_PEDIDO_ITEM :ID_PEDIDO,:ID_PRODUTO')
    Left = 40
    Top = 248
  end
  object dspValidaPedidoItem: TDataSetProvider
    DataSet = qryValidaPedidoItem
    Left = 144
    Top = 248
  end
  object cdsValidaPedidoItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspValidaPedidoItem'
    Left = 240
    Top = 248
  end
  object qryPesquisaItem: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'PEDIDOID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'exec SP_PESQUISA_ITEM :PEDIDOID')
    Left = 40
    Top = 376
  end
  object dspPesquisaItem: TDataSetProvider
    DataSet = qryPesquisaItem
    Left = 144
    Top = 376
  end
  object cdsPesqusiaItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEDIDOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisaItem'
    Left = 240
    Top = 376
    object cdsPesqusiaItemCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsPesqusiaItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsPesqusiaItemQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsPesqusiaItemVRUNITARIO: TBCDField
      FieldName = 'VRUNITARIO'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsPesqusiaItemDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsPesqusiaItemVRTOTAL: TBCDField
      FieldName = 'VRTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object cdsPesqusiaItemOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object qrySelecionaPedido: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'PEDIDOID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXEC SP_SELECIONA_PEDIDO :PEDIDOID')
    Left = 40
    Top = 320
  end
  object dspSelecionaPedido: TDataSetProvider
    DataSet = qrySelecionaPedido
    Left = 144
    Top = 320
  end
  object cdsSelecionaPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEDIDOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspSelecionaPedido'
    AfterScroll = cdsSelecionaPedidoAfterScroll
    Left = 240
    Top = 320
  end
  object qryGravaPedido: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'ID_PEDIDO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CLIENTE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end
      item
        Name = 'VRTOTALPEDIDO'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'DATAPEDIDO'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DATADIGITACAO'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OBS'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      
        'EXEC SP_GRAVA_PEDIDO :ID_PEDIDO,:CLIENTE,:VRTOTALPEDIDO,:DATAPED' +
        'IDO,:DATADIGITACAO,:OBS')
    Left = 448
    Top = 72
  end
  object dspGravaPedido: TDataSetProvider
    DataSet = qryGravaPedido
    Left = 552
    Top = 72
  end
  object cdsGravaPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VRTOTALPEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATAPEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATADIGITACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OBS'
        ParamType = ptInput
      end>
    ProviderName = 'dspGravaPedido'
    Left = 656
    Top = 72
  end
  object qryGravaItemPedido: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'PEDIDOID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PRODUTOID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'QTDE'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'VLRUNITARIO'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'DESCONTOITEM'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'VLRTOTALITEM'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 2
        Precision = 10
        Size = 19
        Value = Null
      end
      item
        Name = 'OBS'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      
        'EXEC SP_GRAVA_ITEM_PEDIDO :PEDIDOID,:PRODUTOID,:QTDE,:VLRUNITARI' +
        'O,:DESCONTOITEM,:VLRTOTALITEM,:OBS')
    Left = 448
    Top = 136
  end
  object dspGravaItemPedido: TDataSetProvider
    DataSet = qryGravaItemPedido
    Left = 552
    Top = 136
  end
  object cdsGravaItemPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEDIDOID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODUTOID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VLRUNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTOITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VLRTOTALITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OBS'
        ParamType = ptInput
      end>
    ProviderName = 'dspGravaItemPedido'
    Left = 656
    Top = 136
  end
  object qryExcluiPedido: TADOQuery
    Connection = Conexao
    Parameters = <
      item
        Name = 'PEDIDOID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'EXEC SP_EXCLUIPEDIDO :PEDIDOID')
    Left = 448
    Top = 200
  end
  object dspExcluiPedido: TDataSetProvider
    DataSet = qryExcluiPedido
    Left = 552
    Top = 200
  end
  object cdsExcluiPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PEDIDOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspExcluiPedido'
    Left = 656
    Top = 200
  end
end
