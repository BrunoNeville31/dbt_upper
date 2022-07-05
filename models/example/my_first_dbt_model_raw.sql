
{{ config(materialized='table') }}


SELECT qtd, valor, descricao, valor_total, au.cpf_cnpj as cpf, usuario_id
FROM dbo.avnl_01_compras
LEFT JOIN dbo.avnl_01_usuarios au on usuario_id = au.id

union

SELECT qtd, valor, descricao, valor_total, au.cpf_cnpj as cpf,	usuario_id
FROM dbo.avnl_00_compras
LEFT JOIN dbo.avnl_00_usuarios au on usuario_id = au.id