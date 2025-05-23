-- Write your PostgreSQL query statement below
SELECT DISTINCT email
FROM (
    SELECT EMAIL, ROW_NUMBER() OVER(PARTITION BY EMAIL) AS ROW FROM PERSON
) DUPS
WHERE DUPS.ROW>1;