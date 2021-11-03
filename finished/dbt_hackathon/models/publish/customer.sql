
{{ config(
    materialized="table"
) }}

select 
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,
    c_mktsegment,
    c_comment,
    n.n_name,
    n.n_comment,
    r.r_name,
    r.r_comment
from {{ ref('stg_customer')}} as c
left join {{ source('tpc', 'nation') }} n on c.c_nationkey = n.n_nationkey
left join {{ ref('region')}} as r on n.n_regionkey = r.r_regionkey