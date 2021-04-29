create database exercicios
/*Biblioteca*/

create table usuario (
nomeusuario varchar(250) unique NOT NULL default("Não informado"),
matriculausuario int unsigned unique,
enderecousuario varchar(250) unique NOT NULL default("Não informado"),
emailusuario varchar(250) unique NOT NULL
);

create table livro (
codigoLivro int not null unique auto_increment,
nomeLivro varchar(50) not null unique,
nomeAutorLivro varchar(100) not null,
edicaoLivro int not null 
);

create table autor (
codigoAutor int unsigned not null unique,
nomeAutor varchar(250) unique not null default("Não informado"),
nacionalidade varchar(50) not null default("Não informado"),
enderecoWebAutor varchar(250) not null default("Não informado"),
emailAutor varchar(250) not null unique default("Não informado")
);

create table assunto (
assuntoCodigo int unsigned  not null , 
assuntoNome varchar (250) not null default("Não informado")
);

create table subAssunto(
subAssuntoCodigo int unsigned  not null ,
subAssuntoNome int unsigned not null
);



/*Empresa*/

create table departamentos (
depNome varchar(250) unique not null default("Não informado"),
depCodigo float(05) unsigned not null unique,
depLocalizacao varchar(250) unique not null
);

create table admDepartamentos (
admDepNome varchar(250) unique not null default("Não informado"),
admDepCodigo float(05) unsigned not null unique,
admDepDTInicio datetime not null default("Não informado")
);

create table projetos (
projetoNome varchar(100) unique not null default("Não informado"),
projetoLocalizacao varchar(100) not null default("Não informado")
);

create table funcionario (
funcionarioNome varchar(100) unique not null default("Não informado"),
funcionarioNum int unsigned unique not null default("Não informado"),
funcionarioNumSeguro int unsigned unique not null default("Não informado"),
funcionarioEndereco varchar(250) not null default("Não informado"),
funcionarioSalario float(05) unsigned not null default(0.000),
funcionarioSexo varchar(10) not null default("Não informado"),
funcionarioDataNascimento date not null
);

create table funcionarioNoProjeto(
funcionarioNome varchar(100) unique not null,
funcionarioNomeProjeto varchar(100) unique not null default("Não informado"),
funcionarioTempoNoProjeto time
);

create table funcionarioDependente(
dependenteNome varchar(100) unique not null,
dependenteSexo varchar(10) unique not null,
dependenteNascimento date,
dependenteRelacaoFuncionario varchar(250) unique not null
);





