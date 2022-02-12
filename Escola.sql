create database Escola;

use Escola;
create table Alunos(
Id int(8)auto_increment,
Nome varchar (20)not null,
Turma varchar(20)not null,
Nota double,
Matricula int(3)not null,
primary key(id)
);

insert into Alunos(Nome, Turma, Nota, Matricula) values ("Diana",1,10,132);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Ester",1,09,111);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Felipe",1,08,222);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Gabriel",1,10,333);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Hugo",1,5,444);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Iasmin",1,2,555);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Juliana",1,10,666);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Kaue",1,4,777);
insert into Alunos(Nome, Turma, Nota, Matricula) values ("Lais",1,10,888);
select * from Alunos;
DELETE FROM Alunos
WHERE ID = 9;

SELECT nome, turma, nota, matricula
FROM Alunos
WHERE nota between 0 and  6.9;

SELECT nome, turma, nota, matricula
FROM Alunos
WHERE nota between 7 and  10;
