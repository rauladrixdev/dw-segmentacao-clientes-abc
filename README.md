📊 Data Warehouse – Segmentação de Clientes (Curva ABC)
📌 Objetivo do Projeto

Este projeto simula um cenário real de negócio onde a empresa precisa identificar quais clientes geram maior impacto na receita.

Foi desenvolvido um modelo dimensional simples (Star Schema) para aplicar a metodologia de Curva ABC e classificar clientes de acordo com sua representatividade no faturamento.

🏗️ Arquitetura do Banco

Banco de Dados: DW_SegmentacaoClientes
Schema: dw

Tabelas

dw.dim_cliente → Dimensão de clientes

dw.fato_vendas → Fato de vendas

Modelo dimensional com separação entre dimensão e fato, seguindo boas práticas de Data Warehouse.

📂 Estrutura dos Arquivos

00_create_database.sql → Criação do banco

01_create_structure.sql → Criação de schema e tabelas

02_insert_data.sql → Inserção de dados simulados

03_receita_por_cliente.sql → Receita total por cliente

04_curva_abc.sql → Classificação ABC com percentual acumulado

📈 Análises Desenvolvidas

Receita total por cliente

Receita acumulada (ordenada da maior para menor)

Percentual acumulado da receita total

Classificação dos clientes em:

Classe A → até 70% da receita acumulada

Classe B → até 90%

Classe C → restante

🧠 Técnicas Utilizadas

JOIN

GROUP BY

CTE (Common Table Expression)

Window Functions (SUM OVER)

Cálculo de percentual acumulado

Classificação com CASE

Modelagem dimensional (Fato + Dimensão)

🎯 Aplicação em Negócio

Este modelo pode ser utilizado para:

Identificar clientes estratégicos

Definir campanhas direcionadas

Priorizar retenção de clientes Classe A

Reduzir churn de clientes mais valiosos

Otimizar estratégias comerciais

🚀 Resultado

O projeto demonstra como transformar dados brutos em informação estratégica para tomada de decisão, simulando uma necessidade real de empresas que desejam entender concentração de receita e priorização de clientes.
