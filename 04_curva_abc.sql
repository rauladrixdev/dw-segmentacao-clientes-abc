USE DW_SegmentacaoClientes;
GO

WITH receita_cliente AS (
    SELECT 
        c.id_cliente,
        c.nome,
        SUM(v.valor_total) AS receita_total
    FROM dw.fato_vendas v
    JOIN dw.dim_cliente c 
        ON v.id_cliente = c.id_cliente
    GROUP BY c.id_cliente, c.nome
),

receita_acumulada AS (
    SELECT 
        id_cliente,
        nome,
        receita_total,
        SUM(receita_total) OVER (ORDER BY receita_total DESC) 
            AS receita_acumulada,
        SUM(receita_total) OVER () 
            AS receita_geral
    FROM receita_cliente
)

SELECT 
    nome,
    receita_total,
    receita_acumulada,
    CAST(receita_acumulada * 100.0 / receita_geral AS DECIMAL(10,2)) 
        AS percentual_acumulado,

    CASE
        WHEN receita_acumulada * 100.0 / receita_geral <= 70 THEN 'Classe A'
        WHEN receita_acumulada * 100.0 / receita_geral <= 90 THEN 'Classe B'
        ELSE 'Classe C'
    END AS classificacao_abc

FROM receita_acumulada
ORDER BY receita_total DESC;
GO
