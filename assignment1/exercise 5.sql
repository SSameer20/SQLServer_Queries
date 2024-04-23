select sum(ord.order_status) as sumOfAllOrders from sales.stores as store
left join sales.orders ord on ord.store_id = store.store_id
