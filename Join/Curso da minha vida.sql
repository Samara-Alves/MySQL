create database db_cursoDaMinhaVida;
use db_cursodaminhavida;

create table tb_categoria(
id int auto_increment,
professor varchar(30),
disciplina varchar(30),
primary key(id)
);

create table tb_curso(
id int auto_increment,
aula varchar(30),
valor double,
certificado boolean,
id_estudo int not null,
primary key (id),
foreign key (id_estudo) references tb_categoria(id)
);

insert into tb_categoria(professor, disciplina) values ("Denis", "Letras");
insert into tb_categoria(professor, disciplina) values ("Maria", "Exatas");
insert into tb_categoria(professor, disciplina) values ("Diogo", "Tecnologia");
insert into tb_categoria(professor, disciplina) values ("Fernanda", "Artes");
insert into tb_categoria(professor, disciplina) values ("Joana", "Ciencia Humanas");
select * from tb_categoria;
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Português",50.00, true,1);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Matematica",60.00, true,2);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("JavaScript",100.00, true,3);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Biologia",120.00, true,5);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Dança",70.00, true,4);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Inglês",100.00, true,1);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Quimica",150.00, true,2);
insert into tb_curso(aula,valor,certificado,id_estudo) values ("Redação",50.00, true,1);

select * from tb_curso;
SELECT * FROM tb_curso WHERE valor >50;
SELECT * FROM tb_curso WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE aula LIKE 'J%';
select professor,disciplina from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.id_estudo;
select disciplina from tb_categoria where disciplina like "Tecnologia";