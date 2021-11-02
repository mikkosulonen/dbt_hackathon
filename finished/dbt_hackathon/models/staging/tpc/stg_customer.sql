select c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,   
    c_mktsegment,
    c_comment,
    current_timestamp() as dbt_loaded_at
from {{ source('tpc', 'customer') }}