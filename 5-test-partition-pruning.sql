EXPLAIN ANALYZE SELECT * FROM PizzaOrders 
  WHERE order_status = 'yummy-in-my-tummy';

SET enable_partition_pruning = off;
 
EXPLAIN ANALYZE SELECT * FROM PizzaOrders 
  WHERE order_status = 'yummy-in-my-tummy';

SET enable_partition_pruning = on;

--Partition pruning will not work with functions applied.
EXPLAIN ANALYZE SELECT * FROM PizzaOrders 
  WHERE order_status::text = lower('yummy-in-my-tummy');
