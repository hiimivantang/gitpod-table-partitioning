DROP TABLE IF EXISTS PizzaOrders; 

CREATE TABLE PizzaOrders
 (
   order_id   int,
   order_status   status_t,
   order_time   timestamp
 ) PARTITION BY HASH (order_id);

CREATE TABLE orders_part1 PARTITION OF PizzaOrders 
  FOR VALUES WITH (modulus 2, remainder 0);

CREATE TABLE orders_part2 PARTITION OF PizzaOrders 
  FOR VALUES WITH (modulus 2, remainder 1);
