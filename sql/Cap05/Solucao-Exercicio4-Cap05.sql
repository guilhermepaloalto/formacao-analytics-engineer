SELECT id, nome, cidade, estado, email, data_registro
	FROM cap05.fornecedores;

-- Pergunta 1: Qual é a quantidade de fornecedores por estado?
SELECT 
	estado,
	COUNT(id) AS qtd_fornecedores
FROM cap05.fornecedores
GROUP BY estado
ORDER BY qtd_fornecedores

-- Pergunta 2: Qual é o estado com o maior número de fornecedores?
-- r: Todos tem a mesma quantidade de fornecedores 

-- Pergunta 3: Quantos fornecedores foram registrados no mês de Setembro de 2023?
SELECT 
	COUNT(id) AS qtd_fornecedores
FROM cap05.fornecedores
WHERE EXTRACT(YEAR FROM (data_registro)) = 2023 AND EXTRACT(MONTH FROM (data_registro)) = 9

-- Pergunta 4: Qual é a média de registros de fornecedores por mês?
SELECT 
	EXTRACT(MONTH FROM (data_registro)) AS mes,
	COUNT(id) AS qtd_registros
FROM cap05.fornecedores
GROUP BY mes
ORDER BY qtd_registros

-- Pergunta 5: Qual é o fornecedor mais recente registrado?
SELECT 
	nome,
	data_registro
FROM cap05.fornecedores
ORDER BY 2 DESC