/* E1 - Apresente a query para listar todos os livros publicados após 2014. Ordenar pela coluna
 cod, em ordem crescente, as linhas.  Atenção às colunas esperadas no resultado final: cod, 
 titulo, autor, editora, valor, publicacao, edicao, idioma 
*/

SELECT COD, TITULO, AUTOR, EDITORA, VALOR, PUBLICACAO, EDICAO, IDIOMA 
FROM LIVRO
WHERE PUBLICACAO >= '2015-01-01'
ORDER BY COD ASC;

/* E2 - Apresente a query para listar os 10 livros mais caros. Ordenar as linhas pela coluna 
valor, em ordem decrescente.  Atenção às colunas esperadas no resultado final:  titulo, valor. */

SELECT TITULO, VALOR
FROM LIVRO 
ORDER BY VALOR DESC LIMIT 10;

/* E3 - Apresente a query para listar as 5 editoras com mais livros na biblioteca. O resultado deve 
conter apenas as colunas quantidade, nome, estado e cidade. Ordenar as linhas pela coluna que 
representa a quantidade de livros em ordem decrescente. */

SELECT  COUNT(L.EDITORA) AS QUANTIDADE,
		ED.NOME,
		E.ESTADO, E.CIDADE
FROM LIVRO L
	INNER JOIN EDITORA ED
	ON L.EDITORA = ED.CODEDITORA
		INNER JOIN ENDERECO E
		ON ED.ENDERECO = E.CODENDERECO
GROUP BY L.EDITORA, 
		 ED.NOME, 
		 E.ESTADO, E.CIDADE
ORDER BY QUANTIDADE DESC LIMIT 5;


/* E4 - Apresente a query para listar a quantidade de livros publicada por cada autor
. Ordenar as linhas pela coluna nome (autor), em ordem crescente. Além desta, apresentar as colunas codautor, nascimento e 
quantidade (total de livros de sua autoria). 
*/

SELECT  A.NOME, A.CODAUTOR, A.NASCIMENTO,
		COUNT(L.AUTOR) AS QUANTIDADE
FROM AUTOR A
	LEFT JOIN LIVRO L
	ON A.CODAUTOR = L.AUTOR
GROUP BY A.NOME, A.CODAUTOR, A.NASCIMENTO
ORDER BY A.NOME;

/* E5 - Apresente a query para listar o nome dos autores que publicaram
 livros através de editoras NÃO situadas
 na região sul do Brasil. Ordene o resultado pela coluna nome, 
 em ordem crescente.
*/

SELECT A.NOME
FROM LIVRO L
	INNER JOIN AUTOR A
	ON L.AUTOR = A.CODAUTOR
	INNER JOIN EDITORA ED
	ON L.EDITORA = ED.CODEDITORA
	INNER JOIN ENDERECO E
	ON ED.ENDERECO = E.CODENDERECO 
WHERE E.ESTADO != 'RIO GRANDE DO SUL' AND E.ESTADO != 'PARANÁ' AND E.ESTADO != 'SANTA CATARINA'
ORDER BY A.NOME ASC;

/* E6 - Apresente a query para listar o autor com maior número de 
livros publicados. O resultado deve conter apenas 
as colunas codautor, nome, quantidade_publicacoes. 
*/

SELECT  A.CODAUTOR,	A.NOME, 
		COUNT(L.AUTOR) AS QUANTIDADE_PUBLICACOES
FROM LIVRO L
	INNER JOIN AUTOR A
	ON L.AUTOR = A.CODAUTOR
GROUP BY L.AUTOR, A.CODAUTOR, A.NOME
ORDER BY QUANTIDADE_PUBLICACOES DESC LIMIT 1;

/* E7 - Apresente a query para listar o nome dos autores com nenhuma publicação. Apresentá-los em ordem crescente. */

SELECT  A.NOME
FROM AUTOR A
	LEFT JOIN LIVRO L
	ON A.CODAUTOR = L.AUTOR
WHERE L.AUTOR IS NULL
GROUP BY A.NOME
ORDER BY A.NOME ASC;

