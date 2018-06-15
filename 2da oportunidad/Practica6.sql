CREATE VIEW view_orderAndOrder_items
AS
SELECT ORDERS.order_date,ORDERS.order_mode,
ORDER_ITEMS.quantity, ORDER_ITEMS.unit_price 
FROM ORDERS
CROSS JOIN ORDER_ITEMS;

CREATE VIEW view_productDescriptionAndproductInformation
AS
SELECT PRODUCT_DESCRIPTIONS.translated_name,PRODUCT_DESCRIPTIONS.translated_description,
PRODUCT_INFORMATION.product_name,PRODUCT_INFORMATION.product_description
FROM PRODUCT_DESCRIPTIONS
CROSS JOIN PRODUCT_INFORMATION;

CREATE VIEW view_CustomersAndOrders
AS
SELECT CUSTOMERS.cust_first_name, CUSTOMERS.cust_last_name,
ORDERS.order_date,ORDERS.order_mode
FROM CUSTOMERS
CROSS JOIN ORDERS;

CREATE VIEW view_Product_DescriptionsAndInventories
AS
SELECT PRODUCT_DESCRIPTIONS.translated_name,PRODUCT_DESCRIPTIONS.translated_description,
INVENTORIES.quantity_on_hand 
FROM PRODUCT_DESCRIPTIONS
CROSS JOIN INVENTORIES;

CREATE VIEW view_Product_DescriptionsAndOrder_items
AS
SELECT PRODUCT_DESCRIPTIONS.translated_name,PRODUCT_DESCRIPTIONS.translated_description,
ORDER_ITEMS.quantity, ORDER_ITEMS.unit_price 
FROM PRODUCT_DESCRIPTIONS
CROSS JOIN ORDER_ITEMS;

