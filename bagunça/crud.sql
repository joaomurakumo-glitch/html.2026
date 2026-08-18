-- inserir a informação dentro da entidade cliente nos atributos
insert into cliente(nome,rg,endereco,telefone)
values ("jorge","7877777232","rua joao gualberto 1330","419999999");

insert into produto(nome,tipo,quantidade,valor)
values("margarida","flor",1,2.50);

insert into produto(nome,tipo,quantidade,valor)
values("vaso","vaso",10,12.50),
("morango","semente",20,8.50),
("banana","fruta",15,42.50),
("amora","fruta",50,1.50);

insert into pedido(id_cliente,id_produto,data_pedido,valor)
values(1,1,"2026-03-17",8.50);

-- atualize as informações onde o produto seja igual 1
update produto set nome="rosas vermelhas" where id_produto=1;