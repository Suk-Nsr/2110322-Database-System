SELECT id, customer, order_date, delivery_date, delivery_date - order_date AS days_late
FROM purchase_orders
WHERE delivery_date - order_date > 5