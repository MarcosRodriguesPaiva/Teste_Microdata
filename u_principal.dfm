object frmMicroData: TfrmMicroData
  Left = 49
  Top = 47
  Width = 1305
  Height = 675
  Caption = 'Digita'#231#227'o de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPedidos: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Pesquisa'
      object grpPesquisarPedidos: TGroupBox
        Left = 0
        Top = 0
        Width = 1281
        Height = 62
        Align = alTop
        Caption = ' Pesquisar Pedidos '
        TabOrder = 0
        object grpFiltroPesquisa: TGroupBox
          Left = 2
          Top = 15
          Width = 120
          Height = 45
          Align = alLeft
          Caption = ' Selecione o Filtro: '
          TabOrder = 0
          object cboPesquisa: TComboBox
            Left = 3
            Top = 16
            Width = 113
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            Items.Strings = (
              'Todos'
              'N'#250'mero do Pedido'
              'C'#243'digo do Produto')
          end
        end
        object grpDigitesuabusca: TGroupBox
          Left = 122
          Top = 15
          Width = 127
          Height = 45
          Align = alLeft
          Caption = ' Digite sua busca aqui '
          TabOrder = 1
          object medPesqPedProd: TMaskEdit
            Left = 4
            Top = 17
            Width = 111
            Height = 21
            EditMask = '9999999999;1;_'
            MaxLength = 10
            TabOrder = 0
            Text = '          '
            OnExit = medPesqPedProdExit
          end
        end
        object btnfiltrar: TBitBtn
          Left = 263
          Top = 28
          Width = 75
          Height = 25
          Caption = '&Filtrar'
          TabOrder = 2
          OnClick = btnfiltrarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6BE
            D18A447A8A447CDBC6D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFD3B9CD7C306C8B597F89517D89447CFFFFFFFFFFFF
            FFFFFFFFFFFFFCFBFCE4D4E0D6BED1DFCCDBF7F2F6FFFFFFD3B9CD7C306C8E60
            82A49C9D8B587F89447AFFFFFFFFFFFFFAF7F9BC94B4833B727C2E6C7C2E6C7C
            2E6C7E306D9F67947C306C8E6082A49C9D8D5E817C306CD6BED1FFFFFFF4EDF2
            93548480366B9A714CAE9C38B6AE30B1A534A282458746647D2F6C9A80918E5E
            817C306CD3B9CDFFFFFFFEFDFE985D8B844167AF9F37B7B12EB7B12EB7B12EB7
            B12EB7B12EB5AD30915C577D2F6C7C306CD3B9CDFFFFFFFFFFFFCFB2C97D2F6C
            AC983AB7B12EB8B130BDB539BFB83DBEB63AB9B332B7B12EB5AD30874563A069
            94FFFFFFFFFFFFFFFFFF9B618E8F585BB9B331C7BD4AD0C55BD1C65DD1C65DD1
            C65DD1C65DCAC151BCB638A282457E306DF7F2F6FFFFFFFFFFFF803670A07B4C
            CEC45BD6CE7AD1C65DD1C65DD1C65DD1C65DD1C65DD1C65DD1C65DBAAB427C2E
            6CDECBDAFFFFFFFFFFFF7C2E6CAE8C59D8D186E9E9E6D2C763D1C65DD1C65DD1
            C65DD1C65DD1C65DD1C65DCDC15B7C2E6CD7C0D3FFFFFFFFFFFF853F75A87C64
            D4CB71EAEAEAD9D28BD1C65DD1C65DD1C65DD1C65DD1C65DD1C65DC3AE5F7C2E
            6CE4D4E1FFFFFFFFFFFFA8759C8C4A69D0C55DE0DCB3E8E7DFD9D28BD2C763D1
            C65DD1C65DD1C65DD1C65DA87C64833A6FFCFBFCFFFFFFFFFFFFE2D0DE7D2F6C
            AF8963D2C864E0DCB3EAEAEAE9E9E6D6CD79D1C65DD1C65DC5B15F81366BBA92
            ADFFFFFFFFFFFFFFFFFFFFFFFFB488A47E316CAF8963D0C55DD5CB72D8D085D1
            C760D1C65DC1AA5F87416A90507CFAF7F9FFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
            B489A77D2F6C8C4A69A87D65B39062AD8564975E687D2F6C985A84F4EEF3FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0DEA8759C853D727C2E6C80
            366E9B608BCFB3C9FEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnAlterar: TBitBtn
          Left = 1112
          Top = 29
          Width = 78
          Height = 25
          BiDiMode = bdRightToLeft
          Caption = '&Alterar'
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 3
          OnClick = btnAlterarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000222222222222
            2E2E2ED7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000000000000000171717D4D4D4FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF373737000000
            000000000000181818D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF0F0F0373737000000000000000000191919D8D8D8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
            383838000000000000000000171717D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F038383800000000000000000019
            1919D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F4F43F3F3F000000000000000000171717D5D5D5FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F43F3F3F00000000
            0000000000171717D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF4F4F43F3F3F000000000000000000171717D5D5D5FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F43F
            3F3F000000000000000000171717D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F43F3F3F0000000000000000001717
            17D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF2F2F23A3A3A000000000000000000959595FDFDFDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F43F3F3F0000008585
            85CECECE292929D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF2F2F2A5A5A5CCCCCC111111000000404040FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949
            49000000282828E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F15D5D5DE6E6E6FFFFFF}
        end
        object btnexcluir: TBitBtn
          Left = 1198
          Top = 29
          Width = 78
          Height = 25
          BiDiMode = bdRightToLeft
          Caption = '&Excluir'
          Enabled = False
          ParentBiDiMode = False
          TabOrder = 4
          OnClick = btnexcluirClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            67656A201F24201F24201F24201F24201F24201F24201F24201F24201F24201F
            2467656AFFFFFFFFFFFFFFFFFFFFFFFF67656A201F24B5B4B6514F53201F2484
            8386848386201F24514F53B5B4B6201F2467656AFFFFFFFFFFFFFFFFFFFFFFFF
            67656A201F24FFFFFF69696B201F24B5B4B6B5B4B6201F2469696BFFFFFF201F
            2467656AFFFFFFFFFFFFFFFFFFFFFFFF67656A201F24FFFFFF69696B201F24B5
            B4B6B5B4B6201F2469696BFFFFFF201F2467656AFFFFFFFFFFFFFFFFFFFFFFFF
            67656A201F24FFFFFF69696B201F24B5B4B6B5B4B6201F2469696BFFFFFF201F
            2467656AFFFFFFFFFFFFFFFFFFFFFFFF67656A201F24FFFFFF69696B201F24B5
            B4B6B5B4B6201F2469696BFFFFFF201F2467656AFFFFFFFFFFFFFFFFFFFFFFFF
            67656A201F24FFFFFF69696B201F24B5B4B6B5B4B6201F2469696BFFFFFF201F
            2467656AFFFFFFFFFFFFFFFFFFFFFFFF67656A201F24FFFFFF69696B201F24B5
            B4B6B5B4B6201F2469696BFFFFFF201F2467656AFFFFFFFFFFFFFFFFFFFFFFFF
            67656A201F24FFFFFF69696B201F24B5B4B6B5B4B6201F2469696BFFFFFF201F
            2467656AFFFFFFFFFFFFFFFFFFFFFFFF67656A201F24FFFFFF69696B201F24B5
            B4B6B5B4B6201F2469696BFFFFFF201F2467656AFFFFFFFFFFFFFFFFFFCAC9CB
            4D4D51201F24B5B4B6514F53201F24848386848386201F24514F53B5B4B6201F
            244D4D51CAC9CBFFFFFFFFFFFF69696B201F24201F24201F24201F24201F2420
            1F24201F24201F24201F24201F24201F24201F2469696BFFFFFFFFFFFF69696B
            201F24201F24201F24201F24201F24201F24201F24201F24201F24201F24201F
            24201F2469696BFFFFFFFFFFFF69696B201F24201F24201F24201F24201F2420
            1F24201F24201F24201F24201F24201F24201F2469696BFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB5B4B669696BFFFFFFFFFFFF69696BB5B4B6FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B4B6201F2420
            1F24201F24201F24B5B4B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object dbgPesquisaPedidos: TDBGrid
        Left = 0
        Top = 62
        Width = 1281
        Height = 546
        Align = alClient
        DataSource = dtsPedidos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PEDIDO'
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 349
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 444
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VRUNITARIO'
            Title.Caption = 'Vlr. Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end>
      end
    end
    object tbsManutencao: TTabSheet
      Caption = '&Manuten'#231#227'o'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 41
        Align = alTop
        TabOrder = 0
        object btnIncluir: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = btnIncluirClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFBF7FE
            FCF9FFFFFFFFFFFFF8FCFEF8FDFEFAFDFEF8FCFEFFFFFFFFFFFFFFFFFFFFFBF7
            FDF3E8FDEFE0FDEFDFFAEDD8F0D4BCE0AA7BDEAC80EDDDD1FFFFFFFFFFFFFFFF
            FFFFFFFFF8FCFEFFFFFFFFFDFBFCF3E6FCF0E2FCF0E2FCF0E2FCF0E2DEA36DF5
            B048F8B550E0B190FDF2E7FFFDFBFFFFFFFFFFFFF9FDFEFFFFFFFFFBF5FDF2E6
            FCF0E2FCF0E2FCF0E2FCF0E2DBA471F5B048F8B550E0AF8AFCF0E1FBF1E2FEF9
            F4FAFDFEFFFFFFFFFFFFFFFFFFFDF3E5FBEFE1FCF0E2FCF0E2F2EEE3DDA470F5
            B048F8B550E0B18FFCECD8FCEDDAFCF0E2F8F5F0FEFFFFFFFFFFFFFDFBFBEEDE
            EFD4BBDBA884D8A785DAA785C97E4DF5B048F8B650CA865CDBA884DBA784D8A7
            81EDD5C0DFF0F1FFFFFFFEFCF9FCEBD3DD9D5FF5B048F5B048F5B048F5B048F5
            B048F5B048F5B048F5B048F5B048F7B34DE0A979FDF3E8FFFFFFFFF6E7FFD491
            DC9C60F5B048F5B048F5B048F5B048F5B048F5B048F5B048F5B048F5B048F7B3
            4DE0AC81FCF4E6FFFFFFFFFFFFFFFCF8ECDCD1D4A787DBA680DBA781C97E4DF5
            B048F8B650CA865CD8A785D9A784DBA785EFD6C0FDF1E0FFFEFBFFFFFFFFFFFF
            F9FDFEFFFFFFFEF8F1FBEEE0DEA36DF5B048F8B550DDB190F7EFE2FCF0E2FCF0
            E2FCF0E2FCF0E2FEF7EEFFFFFFFFFFFFFAFDFEFFFFFFFFFFFFFEFCF9DCA471F5
            B048F8B550DCB190FCF0E2FCF0E1FCF0E2FCF0E2FCF0E2FEF8EFFFFFFFFFFFFF
            FAFDFEFFFFFFFFFFFFFFFFFFDEA978F5B048F8B550E0AF8AFCECD8FCEDDBFDF1
            E1FBEEE0FDF4E6FFFBF4FFFFFFFFFFFFF8FCFEFFFFFFFFFFFFFFFFFFEDDDD2E0
            B087DFAF85F1D7C4FCF0E2E3ECE6FDFBF9FFFEFBFFFFFFFFFFFFFFFFFFFFFFFF
            FBFEFEF9FDFEFAFDFEF9FDFEFFFFFFFFFFFFFFFFFFFFFEFDFDF9F6D0EDF5F2FA
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnSalvar: TBitBtn
          Left = 87
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Salvar'
          TabOrder = 1
          OnClick = btnSalvarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            D5AE77C3882FCBBBA3CBBBA3CBBBA3CBBBA3CBBBA3CBBBA3CBBBA3CBBBA3C388
            2FD6B279FFFFFFFFFFFFFFFFFFFFFFFFD69432DB9834F1F0ECF1F0ECF1F0ECF1
            F0ECF1F0ECF1F0ECF1F0ECF1F0ECDB9834D59433FFFFFFFFFFFFFFFFFFFFFFFF
            DB9834DB9834F1F0ECDEDCD6D4D2CDD4D2CDD4D2CDD4D2CDDEDCD6F1F0ECDB98
            34DB9834FFFFFFFFFFFFFFFFFFFFFFFFDB9834DB9834F1F0ECDEDCD6D4D2CDD4
            D2CDD4D2CDD4D2CDDEDCD6F1F0ECDB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFF
            DB9834DB9834EDE2D0F1F0ECF1F0ECF1F0ECF1F0ECF1F0ECF1F0ECEDE1CEDB98
            34DB9834FFFFFFFFFFFFFFFFFFFFFFFFDB9834DB9834DDA044E2B46FE2B572E2
            B572E2B572E2B572E2B46FDDA044DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFF
            DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB98
            34DB9834FFFFFFFFFFFFFFFFFFFFFFFFDB9834DB9834DB9834DB9834DB9834DB
            9834DB9834DB9834DB9834DB9834DB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFF
            DB9834DB9834C7892EC4944DCBA56ACBA56ACBA56ACBA56AC3944DC78A2EDB98
            34DB9834FFFFFFFFFFFFFFFFFFFFFFFFDB9834DB9834C4944DD9D8D0BFBEB2C9
            C8BDF1F0ECF1F0ECF0EFEAC3944DDB9834DB9834FFFFFFFFFFFFFFFFFFFFFFFF
            DA9835DB9834CBA56ABFBEB2A6A595A6A595F1F0ECF1F0ECF1F0ECCBA56ADB98
            34EDCB99FFFFFFFFFFFFFFFFFFFFFFFFE9C083DA9835CBA56AD5D2CBCCCAC3CC
            CAC3F1F0ECF1F0ECF1F0ECCBA56AEDCB99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnCancelar: TBitBtn
          Left = 166
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 2
          OnClick = btnCancelarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D87878787878
            78747474B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFEAEAEA515151B5B5B5FFFFFFFEFEFE9C9C9CB3B3B3FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AD7D7D7848484BFBF
            BFFFFFFFFEFEFE747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF848484F4F4F4FDFDFD848484BFBFBFFFFFFF787878FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEBCBCBCFFFFFFFDFD
            FD848484B6B6B6787878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF1F1F1747474BDBDBDF4F4F4D7D7D7525252D7D7D7FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC8C8C87F7F7F464646F1F1F1ADADAD8484
            849A9A9AE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA1A1A16E6E6E5A
            5A5AD8D8D8808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F9F9F9616161868686D3D3D3FFFFFFD5D5D55C5C5CC8C8C8FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7B7B7B7C7C7CDFDFDFFFFFFFFFFFFFFF
            FFFF6D6D6DFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA7B7B7B
            CCCCCCD1D1D17F7F7F696969FFFFFFD3D3D39A9A9AFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7A7A7ACECECEFFFFFFFFFFFFFFFFFF808080DFDFDF84
            8484E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFFFFFF
            FFFFFFFFFFFFFFFFFFD1D1D17C7C7C616161FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0787878F9
            F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD0D0D0787878F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC7A7A7AF9F9F9FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 41
        Width = 1281
        Height = 64
        Align = alTop
        Caption = ' Dados do Pedido '
        TabOrder = 1
        object grpPedido: TGroupBox
          Left = 5
          Top = 14
          Width = 95
          Height = 44
          Caption = ' Pedido '
          TabOrder = 0
          object medPedido: TMaskEdit
            Left = 6
            Top = 16
            Width = 83
            Height = 21
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
          end
        end
        object grpCliente: TGroupBox
          Left = 103
          Top = 14
          Width = 406
          Height = 44
          Caption = ' Cliente '
          TabOrder = 1
          object medCliente: TMaskEdit
            Left = 5
            Top = 16
            Width = 396
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 0
          end
        end
        object GroupBox1: TGroupBox
          Left = 513
          Top = 13
          Width = 101
          Height = 45
          Caption = ' Data do Pedido '
          TabOrder = 2
          object dtpDataPedido: TDateTimePicker
            Left = 5
            Top = 16
            Width = 91
            Height = 21
            Date = 45134.866334791670000000
            Time = 45134.866334791670000000
            TabOrder = 0
          end
        end
        object grpDataDigitacao: TGroupBox
          Left = 618
          Top = 13
          Width = 101
          Height = 45
          Caption = ' Data Digita'#231#227'o '
          TabOrder = 3
          object dtpDataDigitacao: TDateTimePicker
            Left = 5
            Top = 16
            Width = 91
            Height = 21
            Date = 45134.866334791670000000
            Time = 45134.866334791670000000
            TabOrder = 0
          end
        end
        object grpObsPedido: TGroupBox
          Left = 722
          Top = 13
          Width = 551
          Height = 45
          Caption = ' Obs. Pedido '
          TabOrder = 4
          object medObsPedido: TMaskEdit
            Left = 8
            Top = 16
            Width = 536
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 200
            TabOrder = 0
          end
        end
      end
      object grpItemPedido: TGroupBox
        Left = 0
        Top = 105
        Width = 1281
        Height = 62
        Align = alTop
        Caption = ' Itens do Pedido '
        TabOrder = 2
        object GroupBox4: TGroupBox
          Left = 4
          Top = 13
          Width = 427
          Height = 41
          Caption = ' Produto '
          TabOrder = 0
          object dblkProduto: TDBLookupComboBox
            Left = 5
            Top = 16
            Width = 418
            Height = 21
            KeyField = 'ID'
            ListField = 'DESCRICAO'
            ListSource = dtslstprodutos
            TabOrder = 0
          end
        end
        object grpqtde: TGroupBox
          Left = 434
          Top = 12
          Width = 58
          Height = 42
          Caption = ' Qtde. '
          TabOrder = 1
          object speQtde: TSpinEdit
            Left = 5
            Top = 15
            Width = 50
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 1
          end
        end
        object grpVlrUnitario: TGroupBox
          Left = 495
          Top = 11
          Width = 74
          Height = 43
          Caption = 'Vlr. Unit'#225'rio'
          TabOrder = 2
          object medVlrUnitario: TMaskEdit
            Left = 5
            Top = 16
            Width = 65
            Height = 21
            TabOrder = 0
            OnExit = medVlrUnitarioExit
            OnKeyPress = medVlrUnitarioKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 573
          Top = 11
          Width = 74
          Height = 43
          Caption = ' Desconto '
          TabOrder = 3
          object medDesconto: TMaskEdit
            Left = 5
            Top = 16
            Width = 65
            Height = 21
            TabOrder = 0
            OnExit = medVlrUnitarioExit
            OnKeyPress = medVlrUnitarioKeyPress
          end
        end
        object grptotalitem: TGroupBox
          Left = 651
          Top = 11
          Width = 74
          Height = 43
          Caption = 'Total Item'
          TabOrder = 4
          object medtotalitem: TMaskEdit
            Left = 5
            Top = 16
            Width = 65
            Height = 21
            Color = clBtnFace
            Enabled = False
            TabOrder = 0
          end
        end
        object grpobsitem: TGroupBox
          Left = 728
          Top = 11
          Width = 406
          Height = 45
          Caption = ' Obs. Pedido '
          TabOrder = 5
          object medObsItem: TMaskEdit
            Left = 8
            Top = 16
            Width = 393
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 200
            TabOrder = 0
          end
        end
        object BitBtn1: TBitBtn
          Left = 1139
          Top = 30
          Width = 89
          Height = 25
          Caption = 'Incluir Item'
          TabOrder = 6
          OnClick = BitBtn1Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFBF7FE
            FCF9FFFFFFFFFFFFF8FCFEF8FDFEFAFDFEF8FCFEFFFFFFFFFFFFFFFFFFFFFBF7
            FDF3E8FDEFE0FDEFDFFAEDD8F0D4BCE0AA7BDEAC80EDDDD1FFFFFFFFFFFFFFFF
            FFFFFFFFF8FCFEFFFFFFFFFDFBFCF3E6FCF0E2FCF0E2FCF0E2FCF0E2DEA36DF5
            B048F8B550E0B190FDF2E7FFFDFBFFFFFFFFFFFFF9FDFEFFFFFFFFFBF5FDF2E6
            FCF0E2FCF0E2FCF0E2FCF0E2DBA471F5B048F8B550E0AF8AFCF0E1FBF1E2FEF9
            F4FAFDFEFFFFFFFFFFFFFFFFFFFDF3E5FBEFE1FCF0E2FCF0E2F2EEE3DDA470F5
            B048F8B550E0B18FFCECD8FCEDDAFCF0E2F8F5F0FEFFFFFFFFFFFFFDFBFBEEDE
            EFD4BBDBA884D8A785DAA785C97E4DF5B048F8B650CA865CDBA884DBA784D8A7
            81EDD5C0DFF0F1FFFFFFFEFCF9FCEBD3DD9D5FF5B048F5B048F5B048F5B048F5
            B048F5B048F5B048F5B048F5B048F7B34DE0A979FDF3E8FFFFFFFFF6E7FFD491
            DC9C60F5B048F5B048F5B048F5B048F5B048F5B048F5B048F5B048F5B048F7B3
            4DE0AC81FCF4E6FFFFFFFFFFFFFFFCF8ECDCD1D4A787DBA680DBA781C97E4DF5
            B048F8B650CA865CD8A785D9A784DBA785EFD6C0FDF1E0FFFEFBFFFFFFFFFFFF
            F9FDFEFFFFFFFEF8F1FBEEE0DEA36DF5B048F8B550DDB190F7EFE2FCF0E2FCF0
            E2FCF0E2FCF0E2FEF7EEFFFFFFFFFFFFFAFDFEFFFFFFFFFFFFFEFCF9DCA471F5
            B048F8B550DCB190FCF0E2FCF0E1FCF0E2FCF0E2FCF0E2FEF8EFFFFFFFFFFFFF
            FAFDFEFFFFFFFFFFFFFFFFFFDEA978F5B048F8B550E0AF8AFCECD8FCEDDBFDF1
            E1FBEEE0FDF4E6FFFBF4FFFFFFFFFFFFF8FCFEFFFFFFFFFFFFFFFFFFEDDDD2E0
            B087DFAF85F1D7C4FCF0E2E3ECE6FDFBF9FFFEFBFFFFFFFFFFFFFFFFFFFFFFFF
            FBFEFEF9FDFEFAFDFEF9FDFEFFFFFFFFFFFFFFFFFFFFFEFDFDF9F6D0EDF5F2FA
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object dbgitempedido: TDBGrid
        Left = 0
        Top = 171
        Width = 1281
        Height = 437
        Align = alBottom
        DataSource = dtsItemPedido
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAOPRODUTO'
            Title.Caption = 'Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 349
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'Qtde.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VRUNITARIO'
            Title.Caption = 'Vlr. Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Caption = 'Desconto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VRTOTAL'
            Title.Caption = 'Total Item'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'Observa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 600
            Visible = True
          end>
      end
    end
  end
  object dtsPedidos: TDataSource
    DataSet = dm.cdsPesqPedidos
    OnDataChange = dtsPedidosDataChange
    Left = 1044
    Top = 536
  end
  object dtslstprodutos: TDataSource
    DataSet = dm.cdsListaProdutos
    Left = 1076
    Top = 536
  end
  object dtsItemPedido: TDataSource
    DataSet = dm.cdsPesqusiaItem
    Left = 1116
    Top = 536
  end
end
