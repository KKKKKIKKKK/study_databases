-- SELECT column1, column2, ... // 화면에 보여질 컬럼을 *퉁침 
-- FROM table_name 
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC; 

SELECT * 
FROM members
WHERE AGE BETWEEN 25 AND 35   -- 종료시 ;  BETWEEN 사이에서 "AGE"로 정렬
ORDER BY GENDER_CODE_ID, AGE DESC; -- ORDER 로 BY   "AGE"  "25"부터 순서대로 정렬 해줌 //DESC: 많은것부터 아래로 정렬
-- 1. GENDER 정렬 중 >> 가장 많은 사람을 보고 싶을때, GENDER끼리 정렬해야함. 
  
-- IN ()조건 28이랑 32살만 뽑고 GENDER 단위로 뽑기 
SELECT*
FROM members
WHERE AGE NOT IN (32,28) 
ORDER BY ADDRESS_CODE_ID DESC ; 


SELECT * 
FROM members
WHERE GENDER_CODE_ID NOT LIKE  'G-01';
-- WHERE GENDER  
                                       