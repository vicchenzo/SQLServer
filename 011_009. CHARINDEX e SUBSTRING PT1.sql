-- CHARINDEX: descobre a posição de um determinado caractere dentro de um texto
-- SUBSTRING: Extrai alguns caracteres de dentro de um texto

SELECT 'Raquel Moreno' AS 'Nome'

-- DESCUBRA A POSIÇÃO EM QUE COMEÇA O SOBRENOME DA 'Raquel' UTILIZANDO A FUNÇÃO CHARINDEX
-- AQUI TEMOS DOIS ARGUMENTOS
-- 1. QUAL 'CARACTER' OU 'TEXTO' QUE QUERO SABER A POSIÇÃO
-- 2. TEXTO ONDE VAMOS ACHAR O CARACTER SELECT CHARINDEX('M', 'Raquel Moreno')
SELECT CHARINDEX('Moreno', 'Raquel Moreno') -- Quando tenho vários caracteres ele ve onde começa o conjunto de caracteres

-- SUBSTRING: ELA DA FLEXIBILIDADE DE PEGAR UM TEXTO DE QUALQUER PARTE COMEÇANDO DE QUALQUER LUGAR
-- EXTRAIA O SOBRENOME DA RAQUE UTILIZANDO A FUNÇÃO SUBSTRING
-- PEDE 3 ARGUMENTOS
-- 1. TEXTO ONDE VAMOS EXTRAIR AS INFORMAÇÕES
-- 2. A POSIÇÃO INICIAL QUE EU QUERO PEGAR
-- 3. QUANTIDADE DE CARACTERES QUE EU QUERO A PARTIR DO DA POSIÇÃO INICIAL
SELECT SUBSTRING('Raquel Moreno', 1, 6) AS 'Nome'
SELECT SUBSTRING('Raquel Moreno', 8, 6) AS 'Sobrenome'
