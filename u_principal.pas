unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, DB, ExtCtrls,
  DBCtrls, Spin;

type
  TfrmMicroData = class(TForm)
    pgcPedidos: TPageControl;
    TabSheet1: TTabSheet;
    tbsManutencao: TTabSheet;
    grpPesquisarPedidos: TGroupBox;
    dbgPesquisaPedidos: TDBGrid;
    grpFiltroPesquisa: TGroupBox;
    cboPesquisa: TComboBox;
    grpDigitesuabusca: TGroupBox;
    btnfiltrar: TBitBtn;
    medPesqPedProd: TMaskEdit;
    dtsPedidos: TDataSource;
    Panel1: TPanel;
    btnIncluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    GroupBox2: TGroupBox;
    grpPedido: TGroupBox;
    medPedido: TMaskEdit;
    grpCliente: TGroupBox;
    medCliente: TMaskEdit;
    GroupBox1: TGroupBox;
    dtpDataPedido: TDateTimePicker;
    grpDataDigitacao: TGroupBox;
    dtpDataDigitacao: TDateTimePicker;
    grpObsPedido: TGroupBox;
    medObsPedido: TMaskEdit;
    grpItemPedido: TGroupBox;
    GroupBox4: TGroupBox;
    dtslstprodutos: TDataSource;
    dblkProduto: TDBLookupComboBox;
    grpqtde: TGroupBox;
    speQtde: TSpinEdit;
    grpVlrUnitario: TGroupBox;
    medVlrUnitario: TMaskEdit;
    GroupBox5: TGroupBox;
    medDesconto: TMaskEdit;
    grptotalitem: TGroupBox;
    medtotalitem: TMaskEdit;
    grpobsitem: TGroupBox;
    medObsItem: TMaskEdit;
    BitBtn1: TBitBtn;
    dbgitempedido: TDBGrid;
    dtsItemPedido: TDataSource;
    btnAlterar: TBitBtn;
    btnexcluir: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnfiltrarClick(Sender: TObject);
    procedure medPesqPedProdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure medVlrUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure medVlrUnitarioExit(Sender: TObject);
    procedure dtsPedidosDataChange(Sender: TObject; Field: TField);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
  private
    { Private declarations }
    FVlrTotalPedido: Currency;

    procedure Botoes(pIncluir,pSalvar,pCancelar:Boolean);
    procedure CalculaTotalItem(pQtde:Integer;pVlrUnitario,pDescontoItem:Currency);
    procedure LimpaDados;
    function gravapedido: Boolean;
    function gravaitempedido: Boolean;
    function ValidaPedido: String;
    function ValidaItemPedido: String;
    function ValidaProdutoPedido: Boolean;
  public
    { Public declarations }
    property TotalPedido: Currency read FVlrTotalPedido write FVlrTotalPedido;
  end;

var
  frmMicroData: TfrmMicroData;

implementation

uses u_dm, DateUtils, DBClient;

{$R *.dfm}

procedure TfrmMicroData.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmMicroData.btnfiltrarClick(Sender: TObject);
begin
  with dm.cdsPesqPedidos do
  begin
    Close;
    Params.ParamByName('ID_PEDIDO').Clear;
    Params.ParamByName('ID_PRODUTO').Clear;
    Case cboPesquisa.ItemIndex Of
      1: Params.ParamByName('ID_PEDIDO').AsInteger := StrToInt(medPesqPedProd.Text);
      2: Params.ParamByName('ID_PRODUTO').AsInteger := StrToInt(medPesqPedProd.Text);
    end;
    Open;
  end;
end;

procedure TfrmMicroData.medPesqPedProdExit(Sender: TObject);
begin
 if (trim(medPesqPedProd.Text) <> '') then
   medPesqPedProd.Text := FormatFloat('0000000000',StrToFloat(medPesqPedProd.Text));
end;

procedure TfrmMicroData.Botoes(pIncluir, pSalvar, pCancelar: Boolean);
begin
  btnIncluir.Enabled  := pIncluir;
  btnSalvar.Enabled   := pSalvar;
  btnCancelar.Enabled := pCancelar;
end;

procedure TfrmMicroData.FormShow(Sender: TObject);
begin
  ShortDateFormat := 'DD/MM/YYYY';
  Botoes(True,False,False);
end;

procedure TfrmMicroData.CalculaTotalItem(pQtde: Integer; pVlrUnitario,
  pDescontoItem: Currency);
var
  FTotalItem: Currency;
begin
  FTotalItem := (pQtde * pVlrUnitario) - pDescontoItem;
  medtotalitem.Text := FormatFloat( '#,##0.00' , FTotalItem);
end;

procedure TfrmMicroData.medVlrUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',',']) then
    key := #0;
end;

procedure TfrmMicroData.LimpaDados;
var
  x: Integer;
begin
  for x := 0 to ComponentCount - 1 do
  begin
    if Components[x] is TMaskEdit then
      TMaskEdit(Components[x]).Clear;
    if Components[x] is TSpinEdit then
      TSpinEdit(Components[x]).Value := 1;
    if Components[x] is TDateTimePicker then
      TDateTimePicker(Components[x]).Date := Date();
    if Components[x] is TDataSource then
      TDataSource(Components[x]).DataSet.Close;
  end;
end;

procedure TfrmMicroData.btnCancelarClick(Sender: TObject);
begin
  LimpaDados;

  Botoes(True,False,False);
end;

procedure TfrmMicroData.btnIncluirClick(Sender: TObject);
begin
  Botoes(False,True,True);

  LimpaDados;

  dm.cdsListaProdutos.Close;
  dm.cdsListaProdutos.Open;

  TotalPedido := 0;

  ActiveControl := medCliente;
end;

procedure TfrmMicroData.btnSalvarClick(Sender: TObject);
begin
  if gravapedido then
  begin
    Messagedlg('Pedido: ' + medPedido.Text + ', gerado com sucesso!',mtInformation,[mbOk],0);
    Botoes(True,False,False);
  end;  
end;

function  TfrmMicroData.gravapedido: Boolean;
var
  FMensa: String;
  FResult: Boolean;
begin
  FMensa := ValidaPedido;
  FResult:= False;
  TotalPedido := 0;

  if (Trim(FMensa) <> '') then
  begin
    Messagedlg(FMensa,mtInformation,[mbOk],0);
  end
  else
  begin
    if (Trim(medPedido.Text) = '') then
    begin
      with dm.cdsProximoPedido do
      begin
        Close;
        Open;
        medPedido.Text := FormatFloat('000000',FieldByName('NROPEDIDO').AsFloat);
      end;
    end;  
    // Totaliza Pedido.
    with dtsItemPedido.DataSet do
    begin
      First;
      while not eof do
      begin
        TotalPedido := TotalPedido + FieldByName('VRTOTAL').AsCurrency;
        Next;
      end;
    end;
    // Grava Pedido
    try
      with dm.cdsGravaPedido do
      begin
        Close;
        Params.ParamByName('ID_PEDIDO').AsInteger := StrToInt(medPedido.Text);
        Params.ParamByName('CLIENTE').AsString    := medCliente.Text;
        Params.ParamByName('VRTOTALPEDIDO').AsCurrency := TotalPedido;
        Params.ParamByName('DATAPEDIDO').AsDate := dtpDataPedido.Date;
        Params.ParamByName('DATADIGITACAO').AsDate := dtpDataDigitacao.Date;
        Params.ParamByName('OBS').AsString := Trim(medObsPedido.Text);
        Execute;
      end;
    except on E: Exception do
      begin
        Messagedlg('Erro ao gravar pedido!!! - Erro: ' + E.Message,mtError,[mbOk],0);
        Result := FResult;
        exit;
      end;
    end;
    //
    try
      with dm.cdsPesqusiaItem do
      begin
        First;
        while not eof do
        begin
          dm.cdsGravaItemPedido.Close;
          dm.cdsGravaItemPedido.Params.ParamByName('PEDIDOID').AsInteger := StrToInt(medPedido.Text);
          dm.cdsGravaItemPedido.Params.ParamByName('PRODUTOID').AsInteger := FieldByName('CODPRODUTO').AsInteger;
          dm.cdsGravaItemPedido.Params.ParamByName('QTDE').AsInteger := FieldByName('QTDE').AsInteger;
          dm.cdsGravaItemPedido.Params.ParamByName('VLRUNITARIO').AsCurrency := FieldByName('VRUNITARIO').AsCurrency;
          dm.cdsGravaItemPedido.Params.ParamByName('DESCONTOITEM').AsCurrency := FieldByName('DESCONTO').AsCurrency;
          dm.cdsGravaItemPedido.Params.ParamByName('VLRTOTALITEM').AsCurrency := FieldByName('VRTOTAL').AsCurrency;
          dm.cdsGravaItemPedido.Params.ParamByName('OBS').AsString := FieldByName('OBS').AsString;
          dm.cdsGravaItemPedido.Execute;
          //
          Next;
        end;
      end;
      FResult := True;
    except on E: Exception do
      begin
        Messagedlg('Erro ao gravar item de pedido!!! - Erro: ' + E.Message,mtError,[mbOk],0);
        Result := FResult;
        exit;
      end;
    end;
  end;
  Result := FResult;
end;

function TfrmMicroData.ValidaPedido: String;
var
  FMensagens: String;
begin
  FMensagens := '';

  if (trim(medCliente.Text) = '') then
    FMensagens := FMensagens + 'Cliente é obrigatório' + chr(13);

  if (DateToStr(dtpDataPedido.Date) = '30/12/1899') then
    FMensagens := FMensagens + 'Data do pedido inválida, digite uma data válida' + chr(13);

  if (DateToStr(dtpDataDigitacao.Date) = '30/12/1899') then
    FMensagens := FMensagens + 'Data da digitação inválida, digite uma data válida' + chr(13);

  if (dtsItemPedido.DataSet.RecordCount = 0) then
    FMensagens := FMensagens + 'O Pedido não possui itens. Por favor, insira itens no pedido';

  Result := FMensagens;
end;

procedure TfrmMicroData.BitBtn1Click(Sender: TObject);
begin
  if gravaitempedido then
  begin
    Messagedlg('Item de pedido gravado com sucesso!',mtInformation,[mbOk],0);
    dblkProduto.KeyValue := 0;
    speQtde.Value := 1;
    medVlrUnitario.Clear;
    medDesconto.Clear;
    medtotalitem.Clear;
    medObsItem.Clear;
    ActiveControl := dblkProduto;
  end;
end;

function TfrmMicroData.gravaitempedido: Boolean;
var
  FResult: Boolean;
  FMensa: String;
begin
  FMensa  := ValidaItemPedido;
  FResult := False;

  if (Trim(FMensa) <> '') then
    Messagedlg(FMensa,mtError,[mbOk],0)
  else
  begin
    if (ValidaProdutoPedido) then
      Messagedlg('Produto já existe no pedido!',mtInformation,[mbOk],0)
    else
    begin
      with dm.cdsPesqusiaItem do
      begin
        Append;
        FieldByName('CODPRODUTO').AsInteger := dblkProduto.KeyValue;
        FieldByName('DESCRICAOPRODUTO').AsString := dblkProduto.Text;
        FieldByName('QTDE').AsInteger := speQtde.Value;
        FieldByName('VRUNITARIO').AsCurrency := StrToCurr(medVlrUnitario.Text);
        FieldByName('DESCONTO').AsCurrency := StrToCurr(medDesconto.Text);
        FieldByName('VRTOTAL').AsCurrency := StrToCurr(medtotalitem.Text);
        FieldByName('OBS').AsString := Trim(medObsItem.Text);
        Post;
      end;

      FResult := True;
    end;
  end;

  Result := FResult;
end;

function TfrmMicroData.ValidaItemPedido: String;
var
  FMsg: String;
begin
  FMsg := '';
  if (dblkProduto.KeyValue = null) then
    FMsg := 'Produto é obrigatório' + chr(13);
  if (speQtde.Value = 0) then
    FMsg := FMsg + 'Qtde. é obrigatória' + chr(13);
  if (Trim(medVlrUnitario.Text) = '') then
    FMsg := FMsg + 'Valor unitário é obrigatório' + chr(13);
  Result := FMsg;
end;

function TfrmMicroData.ValidaProdutoPedido: Boolean;
begin
  if (not dm.cdsPesqusiaItem.Active) then
    dm.cdsPesqusiaItem.Open;

  Result :=  dm.cdsPesqusiaItem.Locate('CODPRODUTO',dblkProduto.KeyValue,[]);
end;

procedure TfrmMicroData.medVlrUnitarioExit(Sender: TObject);
var
  FVlrUnit,
  FDesc: Currency;
begin
  FVlrUnit := 0;
  FDesc    := 0;

  if (trim(medVlrUnitario.Text) <> '') then
    FVlrUnit := StrToCurr(Trim(medVlrUnitario.Text));

  if (trim(medDesconto.Text) <> '') then
    FDesc := StrToCurr(Trim(medDesconto.Text));

  medVlrUnitario.Text := FormatFloat('#,##0.00' , FVlrUnit);
  medDesconto.Text    := FormatFloat('#,##0.00' , FDesc);

  CalculaTotalItem(speQtde.Value,FVlrUnit,FDesc);
end;

procedure TfrmMicroData.dtsPedidosDataChange(Sender: TObject;
  Field: TField);
begin
  btnAlterar.Enabled := (dtsPedidos.DataSet.RecordCount > 0);
  btnexcluir.Enabled := (dtsPedidos.DataSet.RecordCount > 0);
end;

procedure TfrmMicroData.btnAlterarClick(Sender: TObject);
begin
  with dm.cdsSelecionaPedido do
  begin
    Close;
    Params.ParamByName('PEDIDOID').AsInteger := dtsPedidos.DataSet.FieldByName('PEDIDO').AsInteger;
    Open;
    //
    medPedido.Text := FieldByName('ID').AsString;
    medCliente.Text := FieldByName('CLIENTE').AsString;
    dtpDataPedido.Date :=  FieldByName('DATAPEDIDO').AsDateTime;
    dtpDataDigitacao.Date := FieldByName('DATADIGITACAO').AsDateTime;
    medObsPedido.Text := FieldByName('OBSERVACAO').AsString;
  end;

  Botoes(False,True,True);

  dm.cdsListaProdutos.Close;
  dm.cdsListaProdutos.Open;

  pgcPedidos.ActivePage := tbsManutencao;
end;

procedure TfrmMicroData.btnexcluirClick(Sender: TObject);
begin
  if (Messagedlg('Confirma a exclusão do pedido nº ' + dtsPedidos.DataSet.FieldByName('PEDIDO').AsString + ' ?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
  begin
    with dm.cdsExcluiPedido do
    begin
      Close;
      Params.ParamByName('PEDIDOID').AsInteger := dtsPedidos.DataSet.FieldByName('PEDIDO').AsInteger;
      Execute;
    end;

    Messagedlg('Pedido excluído com sucesso!',mtInformation,[mbOk],0);

    btnfiltrar.OnClick(Sender);
  end;
end;

end.



