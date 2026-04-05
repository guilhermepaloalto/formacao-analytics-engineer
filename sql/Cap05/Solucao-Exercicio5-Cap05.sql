SELECT id, data_venda, valor, id_produto
	FROM cap05.vendas;


-- Pergunta 1: Qual é o total de vendas por produto?
SELECT 
	id_produto,
	SUM(valor) AS valor_venda
FROM cap05.vendas
GROUP BY id_produto
ORDER BY valor_venda DESC

-- Pergunta 2: Quantos produtos diferentes foram vendidos?
SELECT 
	COUNT(DISTINCT(id_produto)) AS qtd
FROM cap05.vendas

-- Pergunta 3: Qual é o total de vendas por dia?
SELECT 
	data_venda,
	COUNT(*) AS qtd_venda
FROM cap05.vendas
GROUP BY data_venda
ORDER BY data_venda 

-- Pergunta 4: Em quais dias o valor total de vendas foi superior a $100?
SELECT 
	data_venda,
	SUM(valor) AS valor_venda
FROM cap05.vendas
GROUP BY data_venda
HAVING SUM(valor) > 100

-- Pergunta 5: Quais produtos tiveram um valor total de vendas superior a $50?
SELECT 
	id_produto,
	SUM(valor) AS valor_venda
FROM cap05.vendas
GROUP BY id_produto
HAVING SUM(valor) > 50