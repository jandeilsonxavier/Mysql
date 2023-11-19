create database meu_banco character set utf8 collate utf8_general_ci;

use cadastro;

create table clientes(
id int not null auto_increment, 
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
)default charset utf8;

select * from cursos;
select * from pessoas;
select * from gafanhotos;
describe cursos;
show tables;

insert into cursos values
('1', 'PHP', '','20', '12', '2016'),
('2', 'Java', '', '40', '15', '2018'),
('3', 'Python', '', '80', '24', '2017');

update cursos set nome = 'HTML' where idcurso = '1';
update cursos set descricao = 'curso antigo' where ano = '2017' limit 1;

delete from cursos where idcurso = '1';

