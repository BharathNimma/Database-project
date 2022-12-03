INSERT INTO employee
(Emp_ID, Emp_First_Name, Emp_Last_Name, Contact_Num, Role)
VALUES 
(114,"LOUIS","MIKE","248-547-5478","DELIVERY PERSON");


INSERT INTO products
(P_ID, P_Name, Price, P_Quantity)
VALUES
(230014,"Dolphin",15.00,400);



UPDATE products SET Price=20
WHERE  P_ID=230014;


UPDATE stores SET S_Name="Target" 
WHERE  S_ID=534102;

DELETE FROM products WHERE P_ID=230014;


SELECT Emp_ID, Emp_First_Name,Contact_Num FROM employee;

SELECT orders.O_ID, products.P_Name, orders.O_Total
FROM orders
INNER JOIN products ON orders.P_ID=products.P_ID;

SELECT orders.O_ID, stores.S_Name, orders.Quantity
FROM orders
LEFT JOIN stores ON orders.S_ID=stores.S_ID;


SELECT COUNT(*) AS_TOTAL FROM STORES;

SELECT AVG(O_Total) Average_order_price
FROM orders;


SELECT SUM(Price) AS sum_price
FROM orders;

SELECT  P_Quantity  FROM products
UNION
SELECT Quantity  FROM orders;

