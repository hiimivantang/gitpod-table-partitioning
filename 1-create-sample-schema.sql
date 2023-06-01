CREATE TYPE status_t AS ENUM('ordered', 'baking', 'delivering', 'yummy-in-my-tummy');

DROP TABLE IF EXISTS PizzaOrders; 

CREATE TABLE PizzaOrders
 (
   order_id   int PRIMARY KEY,
   order_status   status_t,
   order_time   timestamp
 );

INSERT INTO PizzaOrders VALUES 
(1, 'yummy-in-my-tummy', '2021-12-27 22:00:00'),
(2, 'yummy-in-my-tummy', '2022-05-15 13:00:00'),
(3, 'yummy-in-my-tummy', '2022-05-23 10:00:00'),
(4, 'yummy-in-my-tummy', '2022-06-23 19:00:00'),
(5, 'delivering', '2022-06-24 8:30:00'),
(6, 'baking', '2022-06-24 8:45:00'),
(7, 'baking', '2022-06-24 9:00:00'),
(8, 'ordered', '2022-06-24 10:00:00');
