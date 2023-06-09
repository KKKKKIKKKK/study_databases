-- 조건 : - Table : OrderDetails
-- 조건 : 제품명,가격, 주문 갯수, 고객명 표시

SELECT T_CUS.CustomerName, T_PRO.ProductName, T_PRO.Price ,T_ORDT.Quantity --조건 : 고객명, 제품명 ,가격, 주문 갯수,  표시 

   FROM ((OrderDetails AS T_ORDT  -- orderdetails 테이블 
   JOIN Products AS T_PRO         -- product 테이블과 조인 
   ON T_PRO.ProductID = T_ORDT.ProductID) -- product id 와 공통부분 연결
   JOIN Orders AS T_ORD           -- orders 테이블과 조인 
   ON T_ORD.OrderID = T_ORDT.OrderID)  -- order id 와 공통부분 연결
   JOIN Customers AS T_CUS   -- customes 테이블과 조인 
   ON T_ORD.CustomerID = T_CUS.CustomerID;  --customer id 공통부분 연결
   
  --  refer: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns
  --  Number of Records: 518
  