select
id as customer_id,
name,
city,
signup_date
from {{ source('raw','customers') }}
