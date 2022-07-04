
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

SELECT sum(qtd) as qtd, cpf, sum(valor_total) as valor_total FROM my_first_dbt_model_raw group by cpf
