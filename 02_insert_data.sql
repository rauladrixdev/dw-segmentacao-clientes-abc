USE DW_SegmentacaoClientes;
GO

INSERT INTO dw.dim_cliente VALUES
(1, 'Carlos Silva', 'SP'),
(2, 'Ana Souza', 'RJ'),
(3, 'Marcos Lima', 'MG'),
(4, 'Fernanda Rocha', 'BA'),
(5, 'Juliana Costa', 'SP'),
(6, 'Ricardo Alves', 'PR');

INSERT INTO dw.fato_vendas VALUES
(1, 1, '2025-01-10', 7000.00),
(2, 2, '2025-01-15', 400.00),
(3, 3, '2025-02-03', 450.00),
(4, 1, '2025-02-20', 1200.00),
(5, 4, '2025-03-05', 3500.00),
(6, 2, '2025-03-18', 320.00),
(7, 5, '2025-03-22', 8000.00),
(8, 6, '2025-03-25', 900.00);
GO
