-- refer: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_having
-- Result Number of Records: 5



SELECT CategoryID, COUNT(CategoryID) AS CNT_CategoryID 
FROM Products AS T_PRODUCT
GROUP BY CategoryID
HAVING COUNT(CategoryID) >= 10;

-- Result
-- CategoryID	CNT_CategoryID
--  1	         12
--  2	         12
--  3	         13
--  4	         10
--  8	         12


