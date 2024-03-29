/* Apresente a query para listar o código e o nome do vendedor com maior número de 
vendas (contagem), e que estas vendas estejam com o status concluída.  As colunas 
presentes no resultado devem ser, portanto, cdvdd e nmvdd. */

SELECT VDD.CDVDD, VDD.NMVDD
FROM TBVENDAS VND
	INNER JOIN TBVENDEDOR VDD 
	ON VND.CDVDD = VDD.CDVDD
WHERE VND.STATUS = 'Concluído'
GROUP BY VDD.CDVDD, VDD.NMVDD
ORDER BY COUNT(VND.CDVDD) DESC;


/* Apresente a query para listar o código e nome do produto mais vendido entre as datas 
de 2014-02-03 até 2018-02-02, e que estas vendas estejam com o status concluída. 
As colunas presentes no resultado devem ser cdpro e nmpro. */

SELECT COUNT(CDPRO), NMPRO, DTVEN
FROM TBVENDAS
	WHERE DTVEN BETWEEN '2014-02-03' AND '2018-02-02' AND STATUS = 'Concluído'
GROUP BY CDPRO, NMPRO, DTVEN
ORDER BY CDPRO DESC;


/* A comissão de um vendedor é definida a partir de um percentual 
sobre o total de vendas (quantidade * valor unitário) por ele 
realizado. O percentual de comissão de cada vendedor
está armazenado na coluna perccomissao, tabela tbvendedor.
Com base em tais informações, calcule a comissão de todos os 
vendedores, considerando todas as vendas armazenadas na base de 
dados com status concluído. As colunas presentes no resultado 
devem ser vendedor, valor_total_vendas e comissao. O valor de 
comissão deve ser apresentado em ordem decrescente arredondado 
na segunda casa decimal. */

SELECT  VDD.NMVDD AS VENDEDOR, 
		SUM(VND.QTD * VND.VRUNT) AS VALOR_TOTAL_VENDAS,
		ROUND(SUM((VND.QTD * VND.VRUNT) * VDD.PERCCOMISSAO/100), 2) AS COMISSAO
FROM TBVENDAS VND
	INNER JOIN TBVENDEDOR VDD
	ON VND.CDVDD = VDD.CDVDD
WHERE VND.STATUS = 'Concluído'
GROUP BY VDD.NMVDD
ORDER BY COMISSAO DESC;


/* Apresente a query para listar o código e nome cliente com maior gasto na loja. As 
colunas presentes no resultado devem ser cdcli, nmcli e gasto, esta última representando 
o somatório das vendas (concluídas) atribuídas ao cliente. */

SELECT  VND.CDCLI, VND.NMCLI,
		SUM(VND.QTD * VND.VRUNT) AS GASTO
FROM TBVENDAS VND	
WHERE VND.STATUS = 'Concluído'
GROUP BY VND.CDCLI, VND.NMCLI
ORDER BY GASTO DESC LIMIT 1;


/* Apresente a query para listar código, nome e data de nascimento dos dependentes do 
vendedor com menor valor total bruto em vendas (não sendo zero). As colunas presentes no 
resultado devem ser cddep, nmdep, dtnasc e valor_total_vendas.
Observação: Apenas vendas com status concluído. */

SELECT  DEP.CDDEP, DEP.NMDEP, DEP.DTNASC,
		SUM(VND.QTD * VND.VRUNT) AS VALOR_TOTAL_VENDAS
FROM TBVENDAS VND
	INNER JOIN TBVENDEDOR VDD
	ON VND.CDVDD = VDD.CDVDD
		INNER JOIN TBDEPENDENTE DEP
		ON VDD.CDVDD = DEP.CDVDD
WHERE VND.STATUS = 'Concluído'
GROUP BY DEP.CDDEP, DEP.NMDEP, DEP.DTNASC
ORDER BY VALOR_TOTAL_VENDAS ASC LIMIT 1;


/* Apresente a query para listar os 10 produtos menos vendidos pelos canais de E-Commerce
ou Matriz (Considerar apenas vendas concluídas).  As colunas presentes no resultado 
devem ser cdpro, nmcanalvendas, nmpro e quantidade_vendas. 

CORRIGIR
*/

SELECT  VND.CDPRO, VND.NMCANALVENDAS, 
		VND.NMPRO,
		SUM(VND.QTD) AS QUANTIDADE_VENDAS
FROM TBVENDAS VND
WHERE VND.STATUS = 'Concluído'
GROUP BY VND.CDPRO, VND.NMCANALVENDAS, VND.NMPRO
ORDER BY QUANTIDADE_VENDAS ASC LIMIT 10;


/* Apresente a query para listar o gasto médio por estado da 
federação. As colunas presentes no resultado devem ser estado 
e gastomedio. Considere apresentar a coluna gastomedio 
arredondada na segunda casa decimal e ordenado de forma decrescente.
Observação: Apenas vendas com status concluído. */
/* query teve o "order by" ajustado depois da dica do monitor e a 
correção da solução na plataforma  */

SELECT ESTADO, ROUND(AVG(QTD * VRUNT), 2) AS GASTOMEDIO
FROM TBVENDAS
WHERE STATUS = 'Concluído'
GROUP BY ESTADO
ORDER BY GASTOMEDIO DESC;


/* Apresente a query para listar os códigos das vendas identificadas como deletadas. 
Apresente o resultado em ordem crescente. */

SELECT CDVEN 
FROM TBVENDAS
WHERE DELETADO = 1
ORDER BY CDVEN ASC;


/* Apresente a query para listar a quantidade média vendida de cada produto agrupado por
estado da federação. As colunas presentes no resultado devem ser estado, nmpro e 
quantidade_media. Considere arredondar o valor da coluna quantidade_media na quarta casa
decimal. Ordene os resultados pelo estado (1º) e nome do produto (2º).
Observação: Apenas vendas com status concluído. */

SELECT  ESTADO, NMPRO, ROUND(AVG(QTD), 4) AS QUANTIDADE_MEDIA
FROM TBVENDAS
WHERE STATUS = 'Concluído'
GROUP BY ESTADO, NMPRO
ORDER BY ESTADO, NMPRO;






