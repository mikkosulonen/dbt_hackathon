select *
from {{ source('tpc', 'supplier') }}