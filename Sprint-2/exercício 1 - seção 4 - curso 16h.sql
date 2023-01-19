/* EXERCÍCIO 1*/

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
	NOME VARCHAR (30),
	AUTOR VARCHAR (30),
	GENERO CHAR (1),
	PAGINAS INT (4),
	EDITORA VARCHAR (30),
	VALOR FLOAT (5,2),
	UF CHAR (2),
	ANO CHAR (4)
);

INSERT INTO LIVROS VALUES ('Cavaleiro Real',	'Ana Claudia', 'F',	'465', 'Atlas',	'49.90',	'RJ', '2009'),
	('SQL para leigos',	'João Nunes', 'M',	'450',	'Addison',	'98', 'SP',	'2018'),
	('Receitas Caseiras', 'Celia Tavares', 'F',	'210',	'Atlas', '45',	'RJ', '2008'),
	('Pessoas Efetivas', 'Eduardo Santos', 'M',	'390',	'Beta',	'78.99', 'RJ', '2018'),
	('Habitos Saudáveis', 'Eduardo Santos',	'M', '630',	'Beta',	'150.98', 'RJ',	'2019'),
	('A Casa Marrom', 'Hermes Macedo', 'M',	'250', 'Bubba',	'60',	'MG', '2016'),
	('Estacio Querido',	'Geraldo Francisco', 'M', '310', 'Insignia', '100',	'ES',	'2015'),
	('Pra sempre amigas',	'Leda Silva', 'F', '510',	'Insignia',	'78.98', 'ES',	'2011'),
	('Copas Inesqueciveis',	'Marco Alcantara', 'M',	'200', 'Larson', '130.98', 'RS', '2018'),
	('O poder da mente', 'Clara Mafra', 'F', '120', 'Continental', '56.58', 'SP', '2017'
); 

/* 1 – Trazer todos os dados.*/

SELECT NOME AS NOME_DO_LIVRO, AUTOR AS AUTOR_DO_LIVRO, GENERO AS GENERO_DO_AUTOR, PAGINAS AS NÚMERO_DE_PÁGINAS, EDITORA AS NOME_DA_EDITORA, VALOR AS VALOR_DO_LIVRO, UF AS ESTADO_DA_EDITORA, ANO AS ANO_DE_PUBLICACAO FROM LIVROS;

/* 2 – Trazer o nome do livro e o nome da editora*/

SELECT NOME AS NOME_DO_LIVRO, EDITORA AS NOME_DA_EDITORA FROM LIVROS;

/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */

SELECT NOME AS NOME_DO_LIVRO, UF AS ESTADO_DA_EDITORA FROM LIVROS
WHERE GENERO = 'M';

/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */

SELECT NOME AS NOME_DO_LIVRO, PAGINAS AS NÚMERO_DE_PÁGINAS FROM LIVROS
WHERE GENERO = 'F';

/* 5 – Trazer os valores dos livros das editoras de São Paulo. */

SELECT VALOR AS VALOR_DO_LIVRO FROM LIVROS
WHERE UF = 'SP';

/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros 
publicados por São Paulo ou Rio de Janeiro (Questão Desafio). */

SELECT AUTOR, GENERO, UF FROM LIVROS
WHERE GENERO = 'M' AND (UF = 'SP' OR UF = 'RJ');

/*================================================================================*/


