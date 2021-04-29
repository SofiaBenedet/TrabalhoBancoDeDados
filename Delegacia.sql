DROP DATABASE IF EXISTS DBDELEGACIA;

CREATE DATABASE DBDELEGACIA;

USE DBDELEGACIA;

CREATE TABLE CRIME (
	IDCRIME INT NOT NULL,
	DESCRICAO VARCHAR(255),
	RUA VARCHAR(100),
	NUMERO INT,
	COMPLEMENTO VARCHAR(255),
	BAIRRO VARCHAR(100),
	CEP VARCHAR(8),
	CIDADE VARCHAR(100),
	ESTADO CHAR(2)
);

CREATE TABLE CRIMINOSO(
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP CHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE,
  TELEFONE VARCHAR(15)
);

CREATE TABLE OCORRENCIA (
	IDOCORRENCIA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	DT_OCORRENCIA DATE
);







CREATE TABLE ITEM_OCORRENCIA (
	IDITEM INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	IDOCORRENCIA INT NOT NULL,
	DESCRICAO VARCHAR (100),
	CONSTRAINT FK_ITEM_OCORRENCIA_OCORRENCIA FOREIGN KEY (IDOCORRENCIA) REFERENCES OCORRENCIA(IDOCORRENCIA)
);

CREATE TABLE VITIMA (
  RUA VARCHAR(100),
  NUMERO INT,
  COMPLEMENTO VARCHAR(255),
  BAIRRO VARCHAR(100),
  CEP VARCHAR(8),
  CIDADE VARCHAR(100),
  ESTADO CHAR(2),
  DTNASCIMENTO DATE
);

CREATE TABLE COMETE(
	IDCRIME INT NOT NULL,
	IDCRIMINOSO INT NOT NULL
);

CREATE TABLE ATACA (
	OBSERVACAO CHAR(1)
);

CREATE TABLE SOFRE (
	IDCRIME INT NOT NULL,
	IDVITIMA INT NOT NULL
);

CREATE TABLE ARMA (
	IDARMA INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(110)
);

CREATE TABLE USADA (
	IDARMA INT NOT NULL,
	IDCRIME INT NOT NULL
);


/*****************************************************/
			/*Arrumando a tabela criminoso */
			/* Dropando as colunas erradas */
ALTER TABLE criminoso DROP COLUMN RUA;
ALTER TABLE criminoso DROP COLUMN COMPLEMENTO;
ALTER TABLE criminoso DROP COLUMN BAIRRO;
ALTER TABLE criminoso DROP COLUMN CEP;
ALTER TABLE criminoso DROP COLUMN CIDADE;
ALTER TABLE criminoso DROP COLUMN ESTADO;
ALTER TABLE criminoso DROP COLUMN TELEFONE;

			/* Criando novas colunas */
ALTER TABLE criminoso ADD nome VARCHAR(45) NOT NULL;
ALTER TABLE criminoso ADD id INT NOT NULL UNIQUE;
/*****************************************************/
 
 
 
/*****************************************************/
			/*Arrumando a tabela ataca */
			/*Apagando coluna errada */
DROP TABLE ataca;

/*****************************************************/


 
/*****************************************************/
			/*Arrumando a tabela vitima */
			/*Apagando coluna errada */
ALTER TABLE vitima DROP COLUMN RUA;
ALTER TABLE vitima DROP COLUMN NUMERO;
ALTER TABLE vitima DROP COLUMN COMPLEMENTO;
ALTER TABLE vitima DROP COLUMN BAIRRO;
ALTER TABLE vitima DROP COLUMN CEP;
ALTER TABLE vitima DROP COLUMN CIDADE;
ALTER TABLE vitima DROP COLUMN ESTADO;

			/*Criando novas colunas*/
ALTER TABLE vitima ADD IDVITIMA INT NOT NULL UNIQUE;
ALTER TABLE vitima ADD NOME VARCHAR(45);
/*****************************************************/



/*****************************************************/
			/*Arrumando a tabela crime */
			/*Deletando tables */
ALTER TABLE crime DROP COLUMN RUA;
ALTER TABLE crime DROP COLUMN NUMERO;
ALTER TABLE crime DROP COLUMN COMPLEMENTO;
ALTER TABLE crime DROP COLUMN BAIRRO;
ALTER TABLE crime DROP COLUMN CEP;
ALTER TABLE crime DROP COLUMN CIDADE;
ALTER TABLE crime DROP COLUMN ESTADO;

			/*Criando novas colunas*/
ALTER TABLE crime ADD DTCRIME DATETIME NOT NULL;
/*****************************************************/



/*****************************************************/
			/*Arrumando a tabela usada */
			/*Renomeando a tabela */

RENAME TABLE usada TO usar;
/*****************************************************/



/*****************************************************/
			/*Arrumando a tabela arma */
			/*Deletando as colunas erradas*/
ALTER TABLE arma DROP COLUMN MARCA;

			/*Criando novas colunas*/
ALTER TABLE arma ADD COLUMN DESCRICAO VARCHAR(45);
ALTER TABLE arma ADD COLUMN TIPO ENUM("LEVE", "MÉDIO", "PESADO");
ALTER TABLE arma ADD COLUMN IDENTIFICACAO VARCHAR(15);
/*****************************************************/


/*****************************************************/
			/*Dropando as tabelas não usadas*/
DROP TABLE item_ocorrencia;
/*****************************************************/