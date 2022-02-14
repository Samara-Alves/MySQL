create database db_farmarcia_do_bem;
use db_farmarcia_do_bem;
create table tb_categoria(
id bigint auto_increment,
setor varchar(30),
atendido varchar(30),
primary key(id)
);

create table produto(
id bigint auto_increment,
nome varchar(30),
quantidade int,
valor double,
fabricante varchar(30),
id_categoria bigint not null,

primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria(setor, atendido) values ("Beleza", "Amanda");
insert into tb_categoria(setor, atendido) values ("Higiene", "Carlos");
insert into tb_categoria(setor, atendido) values ("Medicamentos", "Luiz");
insert into tb_categoria(setor, atendido) values ("Fitness", "Julia");
insert into tb_categoria(setor, atendido) values ("Mamãe e bebê", "Juliana");

insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Esmalte",1,2.50,"Colorama",1);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Desodorante",3,12.00,"Rexona",2);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("BCA",2,18.00,"NutriWorld",4);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Aspirina",1,8.50,"Vitamina C",3);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Fralda",1,18.00,"PomPom",5);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Laque",1,25.00,"Sallon",1);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Barrinha Cereal",2,8.50,"Super Max",4);
insert into produto(nome, quantidade, valor, fabricante, id_categoria) values ("Lenço",1,15.00,"Huggies",5);
select * from produto; 
SELECT * FROM produto WHERE Nome LIKE 'b%';
SELECT * FROM produto WHERE valor BETWEEN 3 AND 60;
update produto set valor = 60.00 where id_categoria = 5;
SELECT * FROM produto WHERE valor >50;

select a.setor, b.nome
FROM tb_categoria as a
INNER JOIN produto as b
                on a.id = b.id_categoria;


select * from tb_categoria;
select * from produto;

