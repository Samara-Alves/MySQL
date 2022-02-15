create database db_construindo_a_nossa_vida;
create table tb_categorias(
id int auto_increment,
setor varchar(20),
nome varchar(20),
primary key(id)
);

create table produto(
id int auto_increment,
produtos varchar(20),
valor double,
marca varchar(20),
quantidade int,
id_construindo int not null,
primary key (id),
foreign key (id_construindo) references tb_categorias(id)
);

insert into tb_categorias(setor, nome) values ("Kit de ferramentas", "Joao");
insert into tb_categorias(setor, nome) values ("Ferramentas Manuais", "Diana");
insert into tb_categorias(setor, nome) values ("Especializada", "Denis");
insert into tb_categorias(setor, nome)values ("Ferragens", "Alice");
insert into tb_categorias(setor, nome) values ("Proteção", "Neto");

insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Chaves",25.50, "Stanley",1,1);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Alicates",30.50, "Stanley",2,1);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Puxadores",45.50, "DDC",2,4);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Dobradiças",3.50, "MX",4,4);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Martelos",25.50, "Matecx",1,2);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Caixa de correios",50.00,"Corrs",4,4);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Botas",60.00, "Protc",1,5);
insert into produto(produtos, valor, marca,quantidade,id_construindo ) values ("Instaladores",50.00, "Disc",2,3);

select * from produto;
SELECT * FROM produto WHERE valor >50;
SELECT * FROM produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM produto WHERE produtos LIKE 'C%';
select setor from tb_categorias inner join produto on tb_categorias.id = produto.id_construindo;
select setor from tb_categorias where setor like "Proteção";
