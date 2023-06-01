DROP TABLE PizzaOrders; 
CREATE TABLE PizzaOrders
 (
   order_id   int,
   order_status   status_t,
   order_time   timestamp,
   PRIMARY KEY (order_id, order_status)
 ) PARTITION BY LIST (order_status);
 
CREATE TABLE orders_in_progress PARTITION OF PizzaOrders 
  FOR VALUES IN('ordered','baking');
  
CREATE TABLE orders_in_delivery PARTITION OF PizzaOrders 
  FOR VALUES IN('delivering');
  
CREATE TABLE orders_completed PARTITION OF PizzaOrders 
  FOR VALUES IN('yummy-in-my-tummy');