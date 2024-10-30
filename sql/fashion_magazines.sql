SELECT
customers.cusomer_name,
FROM orders
JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id
JOIN customers ON orders.customer_id = customers.customer_id
WHERE order_status = 'unpaid' and subscriptions.description = 'Fashion Magazine'
GROUP BY customer_name