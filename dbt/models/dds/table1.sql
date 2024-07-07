
{{
config(
   materialized="incremental",
   schema="dds"
)
}}

select key_
    ,val
    ,ts
from {{ref('source1')}} --stg.source1
