select
o.order_id,
o.customer_id,
p.name as product_name,
oi.qty,
p.price,
oi.qty * p.price as revenue,
o.order_date
from {{ ref('stg_orders') }} o
join {{ ref('stg_order_items') }} oi on o.order_id = oi.order_id
join {{ ref('stg_products') }} p on oi.product_id = p.product_id
