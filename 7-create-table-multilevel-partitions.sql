DROP TABLE PizzaOrders; 
CREATE TABLE PizzaOrders
 (
   order_id   int,
   order_status   status_t,
   order_time   timestamp
 ) PARTITION BY RANGE (order_time);
 
CREATE TABLE orders_2022_06 PARTITION OF PizzaOrders 
  FOR VALUES FROM('2022-06-01') TO ('2022-07-01')
  PARTITION BY LIST(order_status);

CREATE TABLE orders_in_progress PARTITION OF orders_2022_06 
  FOR VALUES IN('ordered','baking');

CREATE TABLE orders_in_delivery PARTITION OF orders_2022_06 
  FOR VALUES IN('delivering');
  
CREATE TABLE orders_completed PARTITION OF orders_2022_06 
  FOR VALUES IN('yummy-in-my-tummy');
  
CREATE TABLE orders_others PARTITION OF PizzaOrders DEFAULT;