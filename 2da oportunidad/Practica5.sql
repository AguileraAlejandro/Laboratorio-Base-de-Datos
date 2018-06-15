SELECT * FROM ORDERS WHERE order_total > 20;

SELECT * FROM CUSTOMERS WHERE cust_first_name = 'Miguel';

SELECT * FROM CUSTOMERS WHERE phone_numbers > 81000000;

SELECT * FROM CUSTOMERS WHERE credit_limit > 100000;

SELECT * FROM PRODUCT_INFORMATION WHERE min_price < 3000;

SELECT date_of_birth
FROM CUSTOMERS
GROUP BY date_of_birth;

SELECT phone_numbers
FROM CUSTOMERS
GROUP BY phone_numbers;

SELECT min_price
FROM PRODUCT_INFORMATION
GROUP BY min_price;

SELECT phone_numbers
FROM CUSTOMERS
GROUP BY phone_numbers;

SELECT credit_limit
FROM CUSTOMERS
GROUP BY credit_limit;

SELECT SUM(order_total)
FROM ORDERS;

SELECT SUM(min_price)
FROM PRODUCT_INFORMATION;

SELECT AVG(order_total)
FROM ORDERS;

SELECT AVG(phone_numbers)
FROM CUSTOMERS;

SELECT SUM(phone_numbers)
FROM CUSTOMERS;

SELECT credit_limit, count(customer_id)
FROM CUSTOMERS
GROUP BY credit_limit
HAVING count(customer_id) > 0;

SELECT order_total, count(order_id)
FROM ORDERS
GROUP BY order_total
HAVING count(order_id) > 0;

SELECT min_price, count(product_id)
FROM PRODUCT_INFORMATION
GROUP BY min_price
HAVING count(product_id) > 0;

SELECT cust_first_name, COUNT(customer_id)
FROM Customers
GROUP BY cust_first_name
HAVING COUNT(customer_id) > 0;

SELECT phone_numbers, count(customer_id)
FROM CUSTOMERS
GROUP BY phone_numbers
HAVING count(customer_id) > 0;

SELECT TOP 4 * FROM Customers;

SELECT TOP 3 * FROM WAREHOUSES;

SELECT TOP 5 * FROM Customers;

SELECT TOP 1 * FROM ORDERS;

SELECT TOP 2 * FROM ORDER_ITEMS;

