with
orders as (
    select * from {{ ref('stg_jaffle_shop_orders') }}
),

customer as (
    select * from {{ ref('stg_jaffle_shop_cust') }}
)

select *
from orders
left join customer
on orders.customer_id = customer.id