USE DW_SegmentacaoClientes;
GO

SELECT 
    c.nome,
    SUM(v.valor_total) AS receita_total
FROM dw.fato_vendas v
JOIN dw.dim_cliente c 
    ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY receita_total DESC;
GO
