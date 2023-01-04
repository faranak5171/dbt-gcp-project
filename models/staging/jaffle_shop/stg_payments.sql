with source as (select * from {{ source("stripe", "payment") }})
select
    id as customer_id,
    orderid as order_id,
    status,
    paymentmethod as payment_method,
    amount / 100 as amount,
    created as created_at
from source
