-- SELECT column1, column2, ... // 화면에 보여질 컬럼을 *퉁침 
-- FROM table_name 
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC; 

SELECT * 
FROM members
WHERE TELEPHONE LIKE '%' ||'0-'|| '%'; -- = 이퀄 대신 'LIKE' 키 이용 //010-이 동일하다는 것을 %로 표시
									   -- =VERTICAL BAR ||이용 
                                       
