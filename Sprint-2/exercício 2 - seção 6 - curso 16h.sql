/* EXERCÍCIO 2 */

/* 1- RELATORIO GERAL DE TDS OS CLIENTES */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE;

+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|         4 | CLARA   | F    | NULL              | 5687766856  | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     | COM  | 55689654 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         8 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 68976565 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | LORENA  | M    | NULL              | 774557887   | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
25 rows in set (0.00 sec)

SELECT * FROM CLIENTE;

+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |
|         4 | CLARA   | F    | NULL              | 5687766856  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |
|         6 | CELIA   | F    | JCELIA@IG.COM     | 5767876889  |
|         7 | PAULA   | M    | NULL              | 77437493    |
|         8 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        10 | GIOVANA | F    | NULL              | 0876655     |
|        11 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        12 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        13 | LORENA  | M    | NULL              | 774557887   |
|        14 | EDUARDO | M    | NULL              | 54376457    |
|        15 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        17 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        18 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+
20 rows in set (0.00 sec)

		/* PRECISAM SER ATUALIZADOS PARA 'F' = 7, 11, 12, 13, 17, 18  */
		/* PRECISAM SER ATUALIZADOS PARA 'H' = 15 */
		/* https://www.w3resource.com/mysql/update-table/update-table.php#:~:text=MySQL%20UPDATE%20multiple%20columns,the%20column%20will%20be%20updated */

SELECT * FROM CLIENTE 
WHERE IDCLIENTE IN (7, 11, 12, 13, 17, 18);

UPDATE CLIENTE
SET SEXO = 'F' 
WHERE IDCLIENTE IN (7, 11, 12, 13, 17, 18);

SELECT * FROM CLIENTE 
WHERE IDCLIENTE IN (15);

UPDATE CLIENTE
SET SEXO = 'M' 
WHERE IDCLIENTE IN (15);

+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAOA@IG.COM      | 76567587887 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM    | 5464553466  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   |
|         4 | CLARA   | F    | NULL              | 5687766856  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  |
|         6 | CELIA   | F    | JCELIA@IG.COM     | 5767876889  |
|         7 | PAULA   | F    | NULL              | 77437493    |
|         8 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        10 | GIOVANA | F    | NULL              | 0876655     |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |
|        12 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    |
|        13 | LORENA  | F    | NULL              | 774557887   |
|        14 | EDUARDO | M    | NULL              | 54376457    |
|        15 | ANTONIO | M    | ANTONIO@IG.COM    | 12436767    |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        17 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |
|        18 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+
20 rows in set (0.00 sec)

/* 2- RELATÓRIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

+-----------+---------+------+-----------------+-------------+--------------------+-----------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF         | RUA                | BAIRRO    | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-----------------+-------------+--------------------+-----------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAOA@IG.COM    | 76567587887 | RUA CAPITAO HERMES | CENTRO    | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO   | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOSA@IG.COM  | 5464553466  | RUA ALFANDEGA      | ESTACIO   | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA     | CENTRO    | VITORIA        | ES     | RES  | 89986668 |
|         8 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GOMES FREIRE   | CENTRO    | RIO DE JANEIRO | RJ     | RES  | 68976565 |
|         9 | ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA GUEDES         | CASCADURA | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        15 | ANTONIO | M    | ANTONIO@IG.COM  | 12436767    | AV CAPITAO ANTUNES | CENTRO    | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | AV CARLOS BARROSO  | JARDINS   | SAO PAULO      | SP     | COM  | 88679978 |
+-----------+---------+------+-----------------+-------------+--------------------+-----------+----------------+--------+------+----------+
12 rows in set (0.00 sec)


/* 3- RELATÓRIO DE MULHERES */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

+-----------+---------+------+-------------------+------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF        | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+------------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678  | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|         4 | CLARA   | F    | NULL              | 5687766856 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     | COM  | 55689654 |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778  | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778  | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        12 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | LORENA  | F    | NULL              | 774557887  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        17 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763   | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | CARMEM  | F    | CARMEM@IG.COM     | 787832213  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256   | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
+-----------+---------+------+-------------------+------------+--------------------+------------+----------------+--------+------+----------+
13 rows in set (0.00 sec)


/* 4- QUANTIDADE DE HOMENS E MULHERES */

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| M    |        8 |
| F    |       12 |
+------+----------+
2 rows in set (0.00 sec)


/* 5- IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E NÃO TENHAM CELULAR */

SELECT C.IDCLIENTE, C.NOME, C.EMAIL, C.SEXO FROM CLIENTE C
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE 
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
WHERE BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO' AND SEXO = 'F' AND (TIPO = 'COM' OR TIPO = 'RES');

+-----------+---------+-------------------+------+
| IDCLIENTE | NOME    | EMAIL             | SEXO |
+-----------+---------+-------------------+------+
|        19 | ADRIANA | ADRIANA@GMAIL.COM | F    |
|        19 | ADRIANA | ADRIANA@GMAIL.COM | F    |
|        20 | JOICE   | JOICE@GMAIL.COM   | F    |
|        20 | JOICE   | JOICE@GMAIL.COM   | F    |
+-----------+---------+-------------------+------+
4 rows in set (0.00 sec)

 /* 6- PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.NUMERO FROM CLIENTE C
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE 
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
WHERE ESTADO = 'RJ'AND TIPO = 'CEL';

+--------+-----------------+----------+
| NOME   | EMAIL           | NUMERO   |
+--------+-----------------+----------+
| JOAO   | JOAOA@IG.COM    | 87866896 |
| CARLOS | CARLOSA@IG.COM  | 88687909 |
| KARLA  | KARLA@GMAIL.COM | 33567765 |
| KARLA  | KARLA@GMAIL.COM | 88668786 |
+--------+-----------------+----------+
4 rows in set (0.00 sec)

/* 7- PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.NUMERO FROM CLIENTE C
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE 
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
WHERE ESTADO = 'SP'AND TIPO = 'CEL'AND SEXO = 'F';

+------+------------+----------+
| NOME | EMAIL      | NUMERO   |
+------+------------+----------+
| ANA  | ANA@IG.COM | 78989765 |
| ANA  | ANA@IG.COM | 99766676 |
+------+------------+----------+
2 rows in set (0.00 sec)