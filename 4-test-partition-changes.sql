SELECT tableoid::regclass,* from PizzaOrders 
  WHERE order_id=6 ORDER BY order_id;

UPDATE PizzaOrders SET order_status='delivering' WHERE order_id=6;

--Confirm that record was moved to a different partition
SELECT tableoid::regclass,* from PizzaOrders 
  WHERE order_id=6 ORDER BY order_id;