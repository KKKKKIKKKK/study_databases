-- Number of Records: 2
-- 1 
-- 1

SELECT COUNT(*) AS CATEGORY, OUT_CAT.CategoryName
FROM (
      SELECT CAT.*
      FROM Categories AS CAT
      WHERE CAT.CategoryName IN ('Produce','Beverages')
) AS OUT_CAT
GROUP BY OUT_CAT.CategoryName;


