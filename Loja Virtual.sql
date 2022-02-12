use loja_virtual;

create table estoque(
id int(8)auto_increment,
produto varchar(20)not null,
tamanho varchar(2)not null,
cor varchar(20)not null,
valor double,
primary key(id)
);

insert into estoque(produto, tamanho, cor, valor) values ("Regata","M","Azul",40);
insert into estoque(produto, tamanho, cor, valor) values ("T-shirt","M","Azul",20);
insert into estoque(produto, tamanho, cor, valor) values ("Short","P","Branco",35);
insert into estoque(produto, tamanho, cor, valor) values ("Saia","G","Branco",35);
insert into estoque(produto, tamanho, cor, valor) values ("Jaqueta","GG","",500);
insert into estoque(produto, tamanho, cor, valor) values ("Cropped","PP","Rosa e Roxo",100);
insert into estoque(produto, tamanho, cor, valor) values ("Camiseta","G","Preta",100);
insert into estoque(produto, tamanho, cor, valor) values ("Blusa","M","Verde",200);

select * from estoque;
update estoque set produto="Jaqueta", cor="Preta" where id=5;
update estoque set produto="Blusa", valor="1500" where id=8;
SELECT produto, tamanho, cor, valor

FROM estoque

WHERE valor between 0 and  500;
SELECT produto, tamanho, cor, valor

FROM Estoque

WHERE valor between 501 and  1502;
