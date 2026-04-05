SELECT id, nome, preco, quantidade, categoria, data_criacao
	FROM cap05.produtos;


-- Pergunta 1: Qual é o valor total de produtos em estoque por categoria?
SELECT 
	categoria,
	SUM(preco * quantidade) as valor_total 
FROM cap05.produtos
GROUP BY categoria
ORDER BY valor_total DESC


-- Pergunta 2: Qual é a quantidade média de produtos em estoque por categoria?
SELECT 
	categoria,
	ROUND(AVG(quantidade),2) as qtd_media 
FROM cap05.produtos
GROUP BY categoria
ORDER BY qtd_media DESC

-- Pergunta 3: Qual é o preço médio dos produtos por categoria?
SELECT 
	categoria,
	ROUND(AVG(preco),2) as preco_medio
FROM cap05.produtos
GROUP BY categoria
ORDER BY preco_medio DESC


-- Pergunta 4: Qual é o número total de categorias de produtos?
SELECT
	COUNT(DISTINCT(categoria)) as qtd_categoria
FROM cap05.produtos

-- Pergunta 5: Qual é a categoria com a maior quantidade de produtos em estoque?
SELECT 
	categoria,
	SUM(quantidade) as qtd_total 
FROM cap05.produtos
GROUP BY categoria
ORDER BY qtd_total DESC








