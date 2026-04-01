-- Criar tabela vendas
CREATE TABLE vendas (
  id INT, 
  produto VARCHAR(50),
  categoria VARCHAR(50),
  valor DECIMAL(10,2),
  quantidade INT,
  data DATE
);

-- Visualiazar dados
SELECT * FROM vendas;

-- Faturamento total
SELECT
     SUM(valor * quantidade) AS faturamento_total
FROM vendas;

-- Total de pedidos 
SELECT
     COUNT(*) AS total_pedidos
FROM vendas;

-- Ticket médio
SELECT
     AVG(valor * quantidade) AS
ticket_medio
FROM vendas;

-- Faturamento por categoria
SELECT
     categoria,
    SUM(valor * quantidade) AS faturamento
FROM vendas 
GROUP BY categoria;


-- Produtos mais vendidos 
SELECT
     produto,
     SUM(quantidade) AS
total_vendido
FROM vendas
GROUP BY protudo 
ORDER BY total_vendido DESC;
