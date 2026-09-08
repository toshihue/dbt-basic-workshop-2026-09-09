-- Temporary CI verification model. Delete after confirming the CI job fires.
select count(*) as customer_count from raw.jaffle_shop.customers
