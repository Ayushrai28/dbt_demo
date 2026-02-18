select
order_id,
product_id,
qty
from {{ source('raw','order_items') }}
