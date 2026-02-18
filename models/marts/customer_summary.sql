select
customer_id,
sum(revenue) as total_spent,
count(distinct order_id) as total_orders
from {{ ref('fct_sales') }}
group by customer_id
