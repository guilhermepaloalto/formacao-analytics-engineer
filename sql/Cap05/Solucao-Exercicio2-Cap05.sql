SELECT id, nome, email, cidade, estado, data_nascimento
	FROM cap05.clientes;

# Use SQL para responder às perguntas abaixo:


-- Pergunta 1: Quantos clientes estão registrados por estado?
SELECT 
	estado,
	COUNT(id) AS qtd_clientes
FROM cap05.clientes
GROUP BY estado
ORDER BY qtd_clientes

-- Pergunta 2: Qual é a idade média dos clientes?
SELECT
	ROUND(AVG(idade), 2) AS idade_media
FROM 
	(SELECT 
		nome,
		2026 - EXTRACT(YEAR FROM (data_nascimento)) AS idade
	FROM cap05.clientes
	ORDER BY idade) as subquery


-- Pergunta 3: Quantos clientes têm mais de 30 anos?
SELECT
	nome,
	idade
FROM 
	(SELECT 
		nome,
		2026 - EXTRACT(YEAR FROM (data_nascimento)) AS idade
	FROM cap05.clientes
	ORDER BY idade) as subquery
WHERE idade > 30

-- Pergunta 4: Quais são as 3 cidades com o maior número de clientes?
SELECT 
	cidade,
	COUNT(id) AS qtd_clientes
FROM cap05.clientes
GROUP BY cidade
ORDER BY qtd_clientes

-- Pergunta 5: Quantos clientes têm um endereço de e-mail registrado?
SELECT 
	COUNT(id) AS qtd_clientes
FROM cap05.clientes
WHERE email is not  null