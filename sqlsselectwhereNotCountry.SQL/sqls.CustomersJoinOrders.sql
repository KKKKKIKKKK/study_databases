-- refer: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join
-- Result : Number of Records: 74

SELECT COUNT(*), T_CUSTOMER.CustomerName  
FROM Customers AS T_CUSTOMER            -- 1. Customers 테이블 
INNER JOIN Orders AS T_ORDER            -- 2. Orders   테이블  
ON T_CUSTOMER.CUSTOMERID = T_ORDER.CUSTOMERID -- 3. 연결점 
GROUP BY T_CUSTOMER.CustomerName; 

