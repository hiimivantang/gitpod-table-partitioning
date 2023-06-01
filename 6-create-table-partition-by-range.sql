DROP TABLE PizzaOrders; 
CREATE TABLE PizzaOrders
 (
   order_id   int,
   order_status   status_t,
   order_time   timestamp,
   PRIMARY KEY (order_id, order_time)
 ) PARTITION BY RANGE (order_time);
 
CREATE TABLE orders_2022_06 PARTITION OF PizzaOrders 
  FOR VALUES FROM('2022-06-01') TO ('2022-07-01');
  
CREATE TABLE orders_2022_05 PARTITION OF PizzaOrders 
  FOR VALUES FROM('2022-05-01') TO ('2022-06-01');
  
CREATE TABLE orders_others PARTITION OF PizzaOrders DEFAULT;