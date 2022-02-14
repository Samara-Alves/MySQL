create database cidade_das_frutas;
 
create table tb_categorias(
id int auto_increment,
Tipo varchar(20),
vendedor varchar(20),
primary key (id)
);

create table produto(
id int auto_increment,
nome varchar(20),
valor double,
quantidade int,
fabricante varchar (20),
id_hortifruti int not null,

primary key (id),
foreign key  (id_hortifruti) references tb_categorias(id)
);
insert into tb_categorias(Tipo, vendedor)values ("Maças", "Marcos");
insert into tb_categorias(Tipo, vendedor)values ("Laranja", "Neto");
insert into tb_categorias(Tipo, vendedor)values ("Batata", "Katarina");
insert into tb_categorias(Tipo, vendedor)values ("Morango", "Denis");
insert into tb_categorias(Tipo, vendedor)values ("Tomate", "Mate");
select * from tb_categorias;
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Maça Gala",15.00,10, "Maças Olivia",1);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Morango",20.00,15, "Alfafa",4);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Batata baroa",60.00,20, "Fififi",3);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Tomate Cereja",20.00,14,"Tomatx",5);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Batata doce",35.00,5, "Batatx",3);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Maça verde",65.00,10, "Maças Olivia",1);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Laranja lima",45.00,55, "Orange",2);
insert into produto(nome, valor, quantidade, fabricante,id_hortifruti)values("Maça Fuji",35.00,10, "Maças Olivia",1);
 
SELECT * FROM produto where id = 2;
SELECT * FROM produto WHERE Nome LIKE 'C%';
SELECT * FROM produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM produto WHERE valor >50;
select a.vendedor, b.nome
FROM tb_categorias as a
INNER JOIN produto as b
                on a.id = b.id_hortifruti;



