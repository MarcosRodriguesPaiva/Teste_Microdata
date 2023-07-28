create database microdata
go
use microdata
go
create table tbProduto(ID integer NOT NULL,
DESCRICAO VARCHAR(100) NOT NULL,
constraint pk_tbProduto primary key(ID)
)
go
create table tbPedido(ID integer NOT NULL,
CLIENTE VARCHAR(60) NOT NULL,
VRTOTALPEDIDO DECIMAL(10,2) NOT NULL,
DATAPEDIDO DATE NOT NULL,
DATADIGITACAO DATE NOT NULL,
OBSERVACAO VARCHAR(200),
constraint pk_tbPedido primary key(ID)
)
go
create table tbPedidoItem(ID integer NOT NULL,
PEDIDOID integer NOT NULL,
PRODUTOID integer NOT NULL,
QUANTIDADE integer NOT NULL,
VRUNITARIO DECIMAL(10,2) NOT NULL,
DESCONTOITEM DECIMAL(10,2),
VRTOTALITEM DECIMAL(10,2) NOT NULL,
OBSERVACAO VARCHAR(200),
constraint pk_tbPedidoItem primary key(ID),
constraint fk_tbPedidoItem_tbPedido foreign key(PEDIDOID) references tbPedido(ID),
constraint fk_tbPedidoItem_tbProduto foreign key(PRODUTOID) references tbProduto(ID)
)
go

