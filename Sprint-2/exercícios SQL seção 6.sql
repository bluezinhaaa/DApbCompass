/*
Exportar o resultado da query que obtém os 10 livros mais caros para um arquivo CSV. 
Utilizar o caractere ; (ponto e vírgula) como separador. Lembre-se que o conteúdo do 
seu arquivo deverá respeitar a sequência de colunas e seus respectivos nomes de 
cabeçalho que listamos abaixo:

CodLivro

Titulo

CodAutor

NomeAutor

Valor

CodEditora

NomeEditora

Observação: O arquivo exportado, conforme as especificações acima, deve ser disponibilizado 
no GitHub. Abaixo (na caixa de envio), gentileza nos enviar o link do arquivo .csv que 
colocou no seu github.
exemplo de envio (resposta):
Segue abaixo link do arquivo no formato .csv (referente a query dos 10 livros mais caros) conforme solicitado:
https://github.com/aasouzaconsult/programabolsas/blob/main/arquivo1.csv
*/
SELECT L.COD AS CodLivro, 
       L.TITULO AS Titulo,
       A.CODAUTOR CodAutor,
       A.NOME AS NomeAutor,
       L.VALOR AS Valor,
       ED.CODEDITORA AS CodEditora,
       ED.NOME AS NomeEditora 
FROM LIVRO L
	INNER JOIN AUTOR A
	ON L.AUTOR = A.CODAUTOR
		INNER JOIN EDITORA ED
		ON L.EDITORA = ED.CODEDITORA
ORDER BY L.VALOR DESC LIMIT 10;


/*
Exportar o resultado da query que obtém as 5 editoras com maior 
quantidade de livros na biblioteca para um arquivo CSV. Utilizar
o caractere | (pipe) como separador. Lembre-se que o conteúdo 
do seu arquivo deverá respeitar a sequência de colunas e seus 
respectivos nomes de cabeçalho que listamos abaixo:

CodEditora

NomeEditora

QuantidadeLivros

Observação: O arquivo exportado, conforme as especificações acima, 
deve ser disponibilizado no GitHub. Abaixo (na caixa de envio), 
gentileza nos enviar o link do arquivo .csv que colocou no seu 
github.
exemplo de envio (resposta):
Segue abaixo link do arquivo no formato .csv (referente a query 
das 5 editoras com maior quantidade de livros na biblioteca) 
conforme solicitado:
https://github.com/aasouzaconsult/programabolsas/blob/main/arquivo2.csv
*/

SELECT ED.CODEDITORA AS CodEditora, 
       ED.NOME AS NomeEditora,
       COUNT(L.EDITORA) AS QuantidadeLivros
FROM LIVRO L
	INNER JOIN EDITORA ED
	ON L.EDITORA = ED.CODEDITORA
GROUP BY ED.CODEDITORA, 
         ED.NOME,
         L.EDITORA
ORDER BY QuantidadeLivros DESC LIMIT 5;      