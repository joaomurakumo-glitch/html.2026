-- criar a base de dados jorge
create database floricultura;
-- usar a base criada jorge
use floricultura;
--  criar a entidade usuario
create table cliente(
id_cliente int(5) auto_increment primary key,
nome varchar(60) not null,
rg varchar(100),
endereco varchar(50),
telefone varchar(15)
);
-- alterando a tabela cliente adicionando a coluna nascimento
alter table cliente
add column data_nasc date;
-- descrever os atributos da entidade
desc cliente;
-- selecionar todos os atributos da entidade cliente
select * from cliente;
create table produto(
id_produto int primary key auto_increment,
nome varchar(60),
tipo varchar(60),
quantidade int,
valor decimal(5,2)
);



select * from produto;
drop table pedido;
create table pedido(
id_pedido int primary key auto_increment,
id_cliente int not null,
id_produto int not null,
data_pedido date,
valor decimal(5,2),
constraint fk_cliente foreign key (id_cliente) references cliente(id_cliente),
constraint fk_produto foreign key (id_produto) references produto(id_produto)
);
desc pedido;

select * from pedido;
-- decimal 00000,00
-- apaga a base de dados

-- consulta
-- mostra o nome e telefone da entidade
select nome,telefone from cliente;
-- selecionando dados cliente onde codgo =1
select * from cliente where id_cliente=1;

-- consulta produto por ordem crescrente do nome
select * from produto order by nome desc;
-- selecionando tipo do produto contando quantos registros somandos por tipo
select tipo, count(id_produto) as total from produto group by tipo;
-- total de registro na entidade produto
select count(*)as total from produto;

-- having
-- consultando tipo somando os registros que tenham valor acima 30
select tipo,sum(valor) from produto group by tipo
having sum(valor)>30;

-- selecionando produto onde nome = desejado e valor = desejado
select * from produto where nome="rosas verdes" and valor=20.50;
-- apagar o registro onde o id seja 2
delete from produto where id_produto=2;









