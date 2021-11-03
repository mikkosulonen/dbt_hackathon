select *
from {{ source('tpc', 'part') }}