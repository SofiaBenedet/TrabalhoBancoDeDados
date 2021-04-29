#01

create database conta;

create table conta(
idconta int primary key auto_increment,

 NOME VARCHAR(50),
 CELULAR VARCHAR(15),
 EMAIL VARCHAR(120),
 SENHA VARCHAR(30),
 SEXO CHAR(1),
 DT_NASCIMENTO DATE
 
 );
 
 insert into conta(nome, sobrenome, celular, email, senha, dt_nascimento, sexo) values("amanda", "silva", "48 99145666"
,"amanda@gmail.com", "67853525", "2002-03-10", "f");
insert into conta(nome, sobrenome, celular, email, senha, dt_nascimento, sexo) values("sofia", " benedet", "48 9533388"
,"sofia@gmail.com", "354679821", "2004-07-01", "f");
insert into conta(nome, sobrenome, celular, email, senha, dt_nascimento, sexo) values("luiz", "oliveira", "48 95557349"
,"luiz@gmail.com", "8796694534", "2003-08-20", "m");


#2

create database escola;

CREATE TABLE escola (

IDALUNO int primary key auto_increment,
NOME VARCHAR(100)

);

insert into escola(nome) values("luiz");
insert into escola(nome) values("amanda");
insert into escola(nome) values("julia");
insert into escola(nome) values("joão");
insert into escola(nome) values("bianca");

#3
create database estacionamento;

CREATE TABLE ESTACIONAMENTO (
IDCARRO int primary key auto_increment,
 MARCA VARCHAR(50) ,
 MODELO VARCHAR(50),
 ANO_FABRICACAO INT,
 ANO_MODELO INT,
 PLACA CHAR(7) ,
 COR VARCHAR(30),
 CHASSI VARCHAR(17)
);

insert into estacionamento(marca, modelo, ano_de_fabricacao, ano_do_modelo, placa, cor, numero_do_chassi)
values ("chevrolet", "opala", 1970, 1970, "sbc3421", "azul ", "6AB2Y97UW28080828");
insert into estacionamento(marca, modelo, ano_de_fabricacao, ano_do_modelo, placa, cor, numero_do_chassi)
values ("chevrolet", "opala", 1992, 1992, "abc1235", "vermelho", "5NOVS18FGHB099001");


#4
create database livro;

CREATE TABLE LIVRO (
IDLIVRO int primary key auto_increment,
 TITULO VARCHAR(200),
 AUTOR VARCHAR(100),
 EDITORA VARCHAR(100),
 ANO_PUBLICACAO INT
 
);

insert into biblioteca(titulo, autor, editora, ano_de_publicacao) values("o mundo de sofia", "jostein gaarder", "Aschehoug", 1991);
insert into biblioteca(titulo, autor, editora, ano_de_publicacao) values(" o pequeno príncipe", "Antoine", "Gallimarda", 1943);









