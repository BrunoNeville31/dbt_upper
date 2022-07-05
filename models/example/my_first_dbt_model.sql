
{{ config(materialized='table') }}

SELECT sum(qtd) as qtd, cpf, sum(valor_total) as valor_total FROM public.my_first_dbt_model_raw group by cpf
