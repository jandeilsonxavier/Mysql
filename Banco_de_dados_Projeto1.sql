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

insert into clientes values
(default, 'Jhon', '2000-08-30', 'M', '100.3', '1.85', 'EUA'),
(default, 'Clara', '2004-01-3', 'F', '59', '1.69', 'Brasil'),
(default, 'João', '1995-12-2', 'M', '80', '1.78', 'Espanha');

select * from clientes;

# renomear tabela
alter table clientes rename to pessoas;
# retornando
alter table pessoas rename to clientes;

# adiciona uma coluna no final da tabela. O parametro column é opcional
alter table clientes add column proficao varchar(10);

# adicianando uma coluna em um lugar especifico da tabela 
alter table clientes add column proficao varchar(10) after nome;

# adiciona uma coluna no inicio da tabela em um lugar especifico
alter table clientes add column proficao varchar(10) first;

# apaga uma coluna da tabela. O parametro column é opcional
alter table clientes drop column proficao;

# Modifica o tipo primitivo e os parametros em uma coluna da tabela 
alter table clientes modify column proficao varchar(20) not null default'';

# Modifica o nome e todas as especificações da coluna da tabela 
alter table clientes change column proficao prof varchar(20);

# mostar tabela
describe pessoas;
# ou
desc pessoas;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos add column idcurso int first;
# Aciciona uma chave primaria na tabela
alter table cursos add primary key(idcurso);