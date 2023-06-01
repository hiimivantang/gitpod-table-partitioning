CREATE TYPE status_t AS ENUM('ordered', 'baking', 'delivering', 'yummy-in-my-tummy');

DROP TABLE IF EXISTS PizzaOrders; 

CREATE TABLE PizzaOrders
 (
   order_id   int PRIMARY KEY,
   order_status   status_t,
   order_time   timestamp
 );
