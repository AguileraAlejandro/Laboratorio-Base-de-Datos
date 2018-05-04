INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Juan', 'Angel','Monterrey','81120232','español', 'Mexico','100000','juan123@gmail.com','2','100','12032018','viudo','masculino','10000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Pedro', 'Abel','Monterrey','81532532','español', 'Mexico','120000','pedro23@gmail.com','3','100','03032018','casado','masculino','20000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Franco', 'Rigoberto','Apodaca','81231232','español', 'Mexico','140000','fran1@gmail.com','4','100','01032018','soltero','masculino','30000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Luis', 'Alejandro','Monterrey','81252232','español', 'Mexico','150000','luis123@gmail.com','5','100','09032018','viudo','masculino','40000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Kevin', 'Daniel','Guadalupe','81643642','español', 'Mexico','110000','kevin12@gmail.com','6','100','11032018','casado','masculino','15000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Daniel', 'Ernesto','Escobedo','81621342','español', 'Mexico','150000','Dani2@gmail.com','5','100','07052018','soltero','masculino','45000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Miguel', 'Angel','Guadalupe','81312642','español', 'Mexico','160000','Mike@gmail.com','6','100','02042018','casado','masculino','49000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Marco', 'Antonio','Apodaca','81532642','español', 'Mexico','170000','Mar12@gmail.com','7','100','08082018','soltero','masculino','50000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Jose', 'Luis','San Pedro','81214642','español', 'Mexico','180000','Jose321@gmail.com','8','100','02222018','casado','masculino','60000');

INSERT INTO CUSTOMERS(customer_id, cust_first_name, cust_last_name, cust_address, phone_numbers,nls_language,nls_territory,credit_limit,cust_email,account_mgr_id,cust_geo_location,date_of_birth,marital_status,gender,income_level)
VALUES (NEWID(), 'Dilan', 'Jared','Guadalupe','81773342','español', 'Mexico','190000','Dilan11@gmail.com','9','100','01012018','soltero','masculino','70000');

DELETE FROM CUSTOMERS
WHERE cust_first_name = 'Juan';

DELETE FROM CUSTOMERS
WHERE cust_first_name = 'Pedro';

DELETE FROM CUSTOMERS
WHERE cust_first_name = 'Franco';

DELETE FROM CUSTOMERS
WHERE cust_first_name = 'Luis';

DELETE FROM CUSTOMERS
WHERE cust_first_name = 'Kevin';
