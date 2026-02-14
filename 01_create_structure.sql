USE DW_SegmentacaoClientes;
GO

-- =============================================
-- CRIAR SCHEMA DW
-- =============================================
CREATE SCHEMA dw;
GO


-- =============================================
-- DIMENSÃO CLIENTE
-- =============================================
CREATE TABLE dw.dim_cliente (
    id_cliente     INT PRIMARY KEY,
    nome           VARCHAR(100) NOT NULL,
    estado         VARCHAR(50)  NOT NULL
);
GO


-- =============================================
-- FATO VENDAS
-- =============================================
CREATE TABLE dw.fato_vendas (
    id_venda       INT PRIMARY KEY,
    id_cliente     INT NOT NULL,
    data_venda     DATE NOT NULL,
    valor_total    DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_cliente_dw
        FOREIGN KEY (id_cliente)
        REFERENCES dw.dim_cliente(id_cliente)
);
GO
