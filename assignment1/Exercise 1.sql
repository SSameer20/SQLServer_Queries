/*
Hands on Exercise 1:

Create a Sql query to join below tables to get multiple columns from the tables.
sales.orders
sales.customers
sales.stores
sales.staffs
*/
/*
select * from sales.orders
select * from sales.customers
select * from sales.stores
select * from sales.staffs*/



select ord.customer_id, cust.first_name + space(1) + cust.last_name as customer_name,
staff.staff_id, staff.first_name + space(1) + staff.last_name as full_name, store.store_name, store.phone, ord.order_date
from sales.orders ord
left join sales.customers cust on ord.customer_id = cust.customer_id
left join sales.stores store on ord.store_id = store.store_id
left join sales.staffs staff on ord.staff_id = staff.staff_id
