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

select * from pessoas;

insert into clientes values
(default, 'Jhon', '2000-08-30', 'M', '100.3', '1.85', 'EUA'),
(default, 'Clara', '2004-01-3', 'F', '59', '1.69', 'Brasil'),
(default, 'João', '1995-12-2', 'M', '80', '1.78', 'Espanha');

update pessoas set nome = 'Ana' where id = '4';