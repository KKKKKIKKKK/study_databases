-- refer : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns

SELECT  MAX(EMPLOYEE.CNT) AS MAX_COUNT, EMPLOYEE.NAME
FROM
(
    SELECT ORD.EmployeeID, COUNT(ORD.EmployeeID) AS CNT, EPY.LastName AS NAME
    FROM Orders AS ORD
    JOIN Employees AS EPY
    ON ORD.EmployeeID = EPY.EmployeeID
    GROUP BY ORD.EmployeeID
) AS EMPLOYEE;

-- Number of Records: 1
-- MAX_COUNT:  40 
-- NAME:  Peacock
