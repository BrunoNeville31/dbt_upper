
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

-- with source_data as (

--     select 1 as id
--     union all
--     select null as id

-- )

-- select *
-- from source_data
SELECT qtd, valor, descricao, valor_total, au.cpf_cnpj as cpf, usuario_id
FROM dbo.avnl_01_compras
left join dbo.avnl_01_usuarios au on usuario_id = au.id
union
SELECT qtd, valor, descricao, valor_total, au.cpf_cnpj as cpf,	usuario_id
FROM dbo.avnl_00_compras
left join dbo.avnl_00_usuarios au on usuario_id = au.id
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
