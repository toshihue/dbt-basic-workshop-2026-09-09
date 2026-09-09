<<<<<<< HEAD
=======
{{
  config(
    materialized='table'
  )
}}



>>>>>>> 53a8a4684d1a8eedf288d32244b9d744eeb74b58
with customers as (

    select * from {{ ref('stg_customers') }}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

customer_orders as (

    select
        customer_id,

        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders

    from orders

    group by 1

),

final as (

    select
<<<<<<< HEAD
        customers.*,
=======
        customers.customer_id,
        customers.first_name,
        customers.last_name,
>>>>>>> 53a8a4684d1a8eedf288d32244b9d744eeb74b58
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    left join customer_orders using (customer_id)

)

<<<<<<< HEAD
select * from final
=======
select * from final
>>>>>>> 53a8a4684d1a8eedf288d32244b9d744eeb74b58
