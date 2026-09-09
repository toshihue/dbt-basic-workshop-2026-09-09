with customer_order_dates as (
    select
        customer_id,
        first_order_date,
        most_recent_order_date
    from {{ ref('customers') }}
)

select
    customer_id,
    first_order_date,
    most_recent_order_date
from customer_order_dates
<<<<<<< HEAD
where first_order_date > most_recent_order_date
=======
where first_order_date > most_recent_order_date
>>>>>>> 53a8a4684d1a8eedf288d32244b9d744eeb74b58
