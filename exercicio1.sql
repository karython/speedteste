drop database aulas;
create database if not exists aulas;

use aulas;

CREATE TABLE Aluno (
    numero int auto_increment primary KEY,
    nome varchar(45) not null,
    ano int not null,
    semestre int,
    UNIQUE (semestre, ano)
);

CREATE TABLE Turma (
    cod_disciplina int auto_increment PRIMARY KEY,
    sala int not null,
    numero int not null UNIQUE
);

CREATE TABLE Professor (
    nome varchar(45) not null,
    unidade varchar(45) not null,
    matricula int PRIMARY KEY auto_increment not null
);

CREATE TABLE inscrito (
    fk_Aluno_numero_aluno int,
    fk_Turma_cod_disciplina int
);
 alter table Turma
drop numero;

select * from Turma;

alter table Turma
add column num_turma int;
insert into Turma (sala, num_turma)
values( 201, 1),
		(202, 2);

select * from Turma;

alter table turma
add column nome_disciplina varchar(45);

update turma set nome_disciplina = 'DBA' where cod_disciplina = 1;


/*
update Turma set n = 'DBA' where cod_disciplina = 1;
select * from Professor;
update Turma set nome_disciplina = 'Java' where cod_disciplina = 2;
*/


insert into Professor (nome, unidade)
values 
('Oliveira', 'gama');

insert into Aluno (nome, ano)
values ('josue', 2023),
('jese', 2023),
('maria', 2023);



insert into inscrito (fk_Aluno_numero_aluno, fk_Turma_cod_disciplina)
values  
	(1,2),
    (2,2),
    (3,1);
update turma set sala = 205 where cod_disciplina = 1;
select * from inscrito;
select * from professor;
select * from aluno;
select * from turma;

/*para a aula de select join
SELECT Aluno.nome AS Nome_Aluno, Turma.cod_disciplina AS Disciplina
FROM inscrito
JOIN Aluno ON inscrito.fk_Aluno_numero_aluno = Aluno.numero
JOIN Turma ON inscrito.fk_Turma_cod_disciplina = Turma.cod_disciplina;
