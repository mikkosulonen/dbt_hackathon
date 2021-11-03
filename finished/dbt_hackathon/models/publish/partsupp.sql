select *
from {{ source('tpc', 'partsupp') }}