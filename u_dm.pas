unit u_dm;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient, Provider;

type
  Tdm = class(TDataModule)
    Conexao: TADOConnection;
    qryPesqPedidos: TADOQuery;
    dspPesqPedidos: TDataSetProvider;
    cdsPesqPedidos: TClientDataSet;
    qryListaProdutos: TADOQuery;
    dspListaProdutos: TDataSetProvider;
    cdsListaProdutos: TClientDataSet;
    qryProximoPedido: TADOQuery;
    dspProximoPedido: TDataSetProvider;
    cdsProximoPedido: TClientDataSet;
    qryValidaPedidoItem: TADOQuery;
    dspValidaPedidoItem: TDataSetProvider;
    cdsValidaPedidoItem: TClientDataSet;
    qryPesquisaItem: TADOQuery;
    dspPesquisaItem: TDataSetProvider;
    cdsPesqusiaItem: TClientDataSet;
    qrySelecionaPedido: TADOQuery;
    dspSelecionaPedido: TDataSetProvider;
    cdsSelecionaPedido: TClientDataSet;
    qryGravaPedido: TADOQuery;
    dspGravaPedido: TDataSetProvider;
    cdsGravaPedido: TClientDataSet;
    qryGravaItemPedido: TADOQuery;
    dspGravaItemPedido: TDataSetProvider;
    cdsGravaItemPedido: TClientDataSet;
    cdsPesqusiaItemCODPRODUTO: TIntegerField;
    cdsPesqusiaItemDESCRICAOPRODUTO: TStringField;
    cdsPesqusiaItemQTDE: TIntegerField;
    cdsPesqusiaItemVRUNITARIO: TBCDField;
    cdsPesqusiaItemDESCONTO: TBCDField;
    cdsPesqusiaItemVRTOTAL: TBCDField;
    cdsPesqusiaItemOBS: TStringField;
    cdsPesqPedidosPEDIDO: TIntegerField;
    cdsPesqPedidosCLIENTE: TStringField;
    cdsPesqPedidosPRODUTO: TStringField;
    cdsPesqPedidosQTDE: TIntegerField;
    cdsPesqPedidosVRUNITARIO: TBCDField;
    cdsPesqPedidosDESCONTO: TBCDField;
    cdsPesqPedidosTOTAL: TBCDField;
    qryExcluiPedido: TADOQuery;
    dspExcluiPedido: TDataSetProvider;
    cdsExcluiPedido: TClientDataSet;
    procedure cdsSelecionaPedidoAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.cdsSelecionaPedidoAfterScroll(DataSet: TDataSet);
begin
  with cdsPesqusiaItem do
  begin
    Close;
    Params.ParamByName('PEDIDOID').AsInteger := DataSet.FieldByName('ID').AsInteger;
    Open;
  end;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  Conexao.Connected := True;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Connected := False;
end;

end.
