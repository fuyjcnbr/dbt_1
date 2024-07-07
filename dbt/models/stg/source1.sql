{{
config(
   materialized="incremental",
   schema="stg"
)
}}


select 1 as key_
    ,'lala' as val
    ,current_timestamp as ts
