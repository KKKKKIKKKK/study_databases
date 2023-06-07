SELECT COUNT(*),EmployeeID
FROM Orders
WHERE EmployeeID IN (7 , 9)  -- 1)조건 고용 아이디가 7.9 직원에 주문 갯수 .
GROUP BY EmployeeID           -- 2)그룹화 

-- Number of Records: 2
-- refer : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_orderby