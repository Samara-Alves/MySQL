use funcionarios;
Create Table pessoas(
 id int(5) auto_increment ,
 nome varchar(20)not null,
 email varchar (20)not null,
 cargo varchar(20)not null,
 salario double,
 primary key (id)
);

insert into pessoas(nome, email, cargo, salario) values ("Claudio","email@xmail.com","Gerente",10000);
insert into pessoas(nome, email, cargo, salario) values ("Joao","email@xmail.com","Supervisor",7000);
insert into pessoas(nome, email, cargo, salario) values ("Pedro","email@xmail.com","Analista",4000);
insert into pessoas(nome, email, cargo, salario) values ("Maria","email@xmail.com","Analista",4000);
insert into pessoas(nome, email, cargo, salario) values ("Joana","email@xmail.com","Analista",4000);
insert into pessoas(nome, email, cargo, salario) values ("Mariana","email@xmail.com","Aprendiz",1100);


SELECT salario, nome, cargo, email

FROM pessoas

WHERE salario between 0 and  2000;


SELECT salario, nome, cargo, email

FROM pessoas

WHERE salario between 2000 and  150000;



update pessoas set funcao="Supervisor", salario=9000 where id=2;
drop table pessoas;

