select
id as product_id,
name,
category,
price
from {{ source('raw','products') }}
