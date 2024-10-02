-- AULA. 009
-- FORMAT: Formata um valor de acordo com uma formatação

-- 1. Formatação de número
-- GERAL
SELECT FORMAT(5123, 'G')

-- NUMERO
SELECT FORMAT(5123, 'N')

-- MOEDA
SELECT FORMAT(5123, 'C')

-- 2. Formatação de data
-- 23/04/2020
SELECT FORMAT('23/04/2020', 'dd/MM/yyy') -- CÓDIGO NAO FUNCIONA DESSA FORMA POIS A DATA ESTA COMO STRING

-- QUANDO PASSAMOS UM TEXTO PARA UMA DATA PRECISAMOS CONVERTER O TEXTO EM DATA, PARA ISSO USAMOS O CAST:
-- dd/MM/yyyy
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd/MM/yyyy')
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd/MMM/yyyy')
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd/MMMM/yyyy')

-- COMO TERCEIRO ARGUMENTO PODEMOS COLOCAR UM IDIOMA
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd/MMM/yyyy', 'pt-br')
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd/MMM/yyyy', 'en-us')

--[dia] FORMATANDO A DATA PARA SER MOSTRADO APENAS O DIA
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dd') --NOS TRÁS O NUMERO DO DIA 
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'ddd') -- NOS TRÁS O DIA ABREVIADO
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'dddd') -- NOS TRÁS O NOME COMPLETO DO DIA

--[mês] FORMATA DATA PARA SER MOSTRADO APENAS O MES
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'MM') -- NUMERO DO MES
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'MMM') -- MES ABREVIADO
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'MMMM') -- NOME COMPLETO DO MES

--[ano] FORMATA DATA PARA SER MOSTRADO APENAS O ANO
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'yy') -- ANO ABREVIADO
SELECT FORMAT(CAST('23/04/2020' AS DATETIME), 'yyyy') -- ANO COMPLETO

-- [PERSONALIZADA] FORMATAÇÃO PERSONALIZADA
-- 1234567 > 12-34-567
SELECT FORMAT(1234567, '##-##-###')
