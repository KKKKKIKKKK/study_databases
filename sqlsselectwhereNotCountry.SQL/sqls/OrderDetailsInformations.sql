-- 조건 : - Table : OrderDetails
-- 조건 : 제품명,가격, 주문 갯수, 고객명 표시

SELECT T_PRODUCTS.ProductName, T_ORDERDETAILS.Quantity, T_CUSTOMERS.CustomerName, T_PRODUCTS.Price
   FROM ((OrderDetails AS T_ORDERDETAILS
   INNER JOIN Products AS T_PRODUCTS
   ON T_ORDERDETAILS.ProductID = T_PRODUCTS.ProductID)
   INNER JOIN Orders AS T_ORDERS
   ON T_ORDERDETAILS.OrderID = T_ORDERS.OrderID)
   INNER JOIN Customers AS T_CUSTOMERS
   ON T_ORDERS.CustomerID = T_CUSTOMERS.CustomerID;
   
  --  refer: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns
  --  Number of Records: 518
  