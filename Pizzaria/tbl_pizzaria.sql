create database Pizzaria;
drop database Pizzaria;
use Pizzaria;

create table pizzaSabor(
id_sabor int primary key auto_increment,
sabor_tipo varchar(100),
preco float
);

create table bordas(
id_borda int primary key auto_increment,
borda_tipo varchar(100),
preco float
);

create table massas(
id_massa int primary key auto_increment,
massa_tipo varchar(100),
preco float
);

create table pizza(
id_pizza int primary key auto_increment,
nome_pizza varchar (100),
preco_pizza float,
SaborId int,
bordaId int,
massaId int,
foreign key(SaborId) references pizzaSabor(id_sabor),
foreign key(bordaId) references bordas(id_borda),
foreign key(massaId) references massas(id_massa)
);


create table bebida(
id_bebida int primary key auto_increment,
descricao varchar(100),
preco float
);

drop table cliente;
create table cliente(
id_cliente int primary key auto_increment,
nome varchar(100),
endereco varchar(100),
numero_telefone char (9)
);

create table pedido(
id_pedido int primary key auto_increment,
quant_pizza int,
quant_bebida int,
valor_total float,
data_hora datetime,
ClienteId int,
PizzaId int,
BebidaId int,
foreign key(ClienteId) references cliente(id_cliente),
foreign key(PizzaId) references pizza(id_pizza),
foreign key(BebidaId) references bebida(id_bebida)
);


create table fornadas(
 id_fornada int primary key auto_increment,
 quant_pizzas int,
 data_hora datetime,
 PizzaId int,
 PedidoId int,
 foreign key(PizzaId) references pizza(id_pizza),
 foreign key(PedidoId) references pedido(id_pedido)
);







