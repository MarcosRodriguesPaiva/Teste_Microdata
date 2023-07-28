use microdata
go
create procedure SP_PESQUISAPEDIDO(@ID_PEDIDO INT = NULL,
                                   @ID_PRODUTO INT = NULL
								  )
AS 
BEGIN
  SELECT PEDIDO = ped.ID
        ,CLIENTE = ped.CLIENTE
		,PRODUTO = Cast(prod.ID as varchar) + ' - ' + prod.DESCRICAO
		,QTDE = item.QUANTIDADE
		,VRUNITARIO = item.VRUNITARIO
		,DESCONTO = item.DESCONTOITEM
		,TOTAL = item.VRTOTALITEM
    FROM tbPedido ped
	inner join tbPedidoItem item on (ped.ID = item.PEDIDOID)
	inner join tbProduto prod on (item.PRODUTOID = prod.ID)
	WHERE ((ped.ID = @ID_PEDIDO) OR (@ID_PEDIDO IS NULL))
	  AND ((prod.ID = @ID_PRODUTO) OR (@ID_PRODUTO IS NULL))
END
go
create procedure SP_LISTAPRODUTOS
AS
BEGIN
  SELECT ID,DESCRICAO FROM tbProduto
END
go
create procedure SP_NROPEDIDO
AS
BEGIN
  SELECT NROPEDIDO = ISNULL(MAX(ID),0) + 1
    FROM tbPedido
END
go
create procedure SP_GRAVA_PEDIDO(@ID_PEDIDO INT,
                                 @CLIENTE VARCHAR(60),
								 @VRTOTALPEDIDO DECIMAL(10,2),
								 @DATAPEDIDO DATE,
								 @DATADIGITACAO DATE,
								 @OBS VARCHAR(200)
                                )
AS
BEGIN
  DECLARE @REG INT
  
  SELECT @REG = COUNT(0)
    FROM tbPedido
   WHERE ID = @ID_PEDIDO
  
  IF (@REG = 0)
  BEGIN
    INSERT INTO tbPedido(ID,CLIENTE,VRTOTALPEDIDO,DATAPEDIDO,DATADIGITACAO,OBSERVACAO)
    VALUES(@ID_PEDIDO,@CLIENTE,@VRTOTALPEDIDO,@DATAPEDIDO,@DATADIGITACAO,@OBS)
  END
  ELSE
  BEGIN  
    UPDATE tbPedido
	   SET CLIENTE = @CLIENTE
	      ,VRTOTALPEDIDO = @VRTOTALPEDIDO
		  ,DATAPEDIDO = @DATAPEDIDO
		  ,DATADIGITACAO = @DATADIGITACAO
		  ,OBSERVACAO = @OBS
	 WHERE ID = @ID_PEDIDO
  END    
END
go
create procedure SP_GRAVA_ITEM_PEDIDO(@PEDIDOID INT,
                                      @PRODUTOID INT,
								      @QTDE INT,
									  @VLRUNITARIO DECIMAL(10,2),
									  @DESCONTOITEM DECIMAL(10,2),
									  @VLRTOTALITEM DECIMAL(10,2),
									  @OBS VARCHAR(200)
                                     )
AS
BEGIN
  DECLARE @REG INT
  
  SELECT @REG = COUNT(0)
    FROM tbPedidoItem
   WHERE PEDIDOID  = @PEDIDOID
     AND PRODUTOID = @PRODUTOID
	
  IF (@REG = 0)
  BEGIN  
    INSERT INTO tbPedidoItem(PEDIDOID,PRODUTOID,QUANTIDADE,VRUNITARIO,DESCONTOITEM,VRTOTALITEM,OBSERVACAO)
    VALUES(@PEDIDOID,@PRODUTOID,@QTDE,@VLRUNITARIO,@DESCONTOITEM,@VLRTOTALITEM,@OBS)
  END
  ELSE
  BEGIN
    UPDATE tbPedidoItem
	   SET QUANTIDADE   = @QTDE
	      ,VRUNITARIO   = @VLRUNITARIO
		  ,DESCONTOITEM = @DESCONTOITEM
		  ,VRTOTALITEM  = @VLRTOTALITEM
		  ,OBSERVACAO   = @OBS
	 WHERE PEDIDOID     = @PEDIDOID
       AND PRODUTOID    = @PRODUTOID		  
  END  
END
go
create procedure SP_PESQUISA_ITEM(@PEDIDOID INT)
AS
BEGIN
  SELECT CODPRODUTO = prod.ID
        ,DESCRICAOPRODUTO = prod.DESCRICAO
		,QTDE = item.QUANTIDADE
		,VRUNITARIO = item.VRUNITARIO
		,DESCONTO = item.DESCONTOITEM
		,VRTOTAL = item.VRTOTALITEM
		,OBS = item.OBSERVACAO
    FROM tbPedidoItem item
   inner join tbProduto prod on (item.PRODUTOID = prod.ID)
   WHERE item.PEDIDOID = @PEDIDOID
END
go
create procedure SP_SELECIONA_PEDIDO(@PEDIDOID INT)
AS
BEGIN
  SELECT ID
        ,CLIENTE
        ,VRTOTALPEDIDO
        ,DATAPEDIDO = CONVERT(VARCHAR(10),DATAPEDIDO,103)
        ,DATADIGITACAO = CONVERT(VARCHAR(10),DATADIGITACAO,103)
        ,OBSERVACAO
    FROM tbPedido
   WHERE ID = @PEDIDOID
END
go
create procedure SP_EXCLUIPEDIDO(@PEDIDOID INT)
AS
begin
  delete from tbPedidoItem where PEDIDOID = @PEDIDOID
  delete from tbPedido where ID = @PEDIDOID
end
go