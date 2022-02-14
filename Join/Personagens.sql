create database db_generatio_game_online;

create table tb_classe(
id int auto_increment,
nome varchar(20),
classe varchar(20),
primary key (id)
);

create table tb_personagens(
id_personagens int auto_increment,
arma varchar(30),
forca int,
agilidade int,
inteligencia int,
defesa int,
fk_classe int not null,
primary key (id_personagens)
);
select * from tb_personagens;
select * from tb_classe;


insert into tb_classe(nome, classe) values ("Brown", "lutador");
insert into tb_classe(nome, classe) values ("Mago", "Feitiçaria");
insert into tb_classe(nome, classe) values ("Clarck", "Atirador");
insert into tb_classe(nome, classe) values ("Arque", "Arqueiro");
insert into tb_classe(nome, classe) values ("Artemis", "Curandeiro");

INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Shuriken",2500,1900,1500,2000,1);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Feitiço",1700,1500,2000,1700,2);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Ak47",2000,1900,1500,1000,3);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Arco flecha",1900,1500,2000,2000,4);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Fuzil",2000,2000,2000,3000,3);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Varinha",1900,1500,2000,2000,2);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Arco",2000,1500,1500,1000,4);
INSERT INTO tb_personagens(arma,forca,agilidade, inteligencia,defesa,fk_classe) VALUES ("Mágico",1900,1500,1000,1000,5);

SELECT * FROM tb_classe WHERE Nome LIKE 'C%';
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE forca BETWEEN 2000 AND 10000;
select * from tb_personagens;
select a.id, b.id_personagens
FROM tb_classe as a
INNER JOIN tb_personagens as b
              on a.id = b.id_personagens;
















