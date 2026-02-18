select
id as order_id,
customer_id,
order_date
from {{ source('raw','orders') }}
