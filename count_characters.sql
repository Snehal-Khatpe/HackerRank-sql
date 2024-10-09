-- Count how many blank spaces are in sentence
-- 'This is a beautiful day, sal is easy'

USE practice;

SELECT 'This is a beautiful day, sal is easy' FROM dual;


SELECT   
LENGTH('This is a beautiful day, sal is easy') - 
LENGTH(REPLACE('This is a beautiful day, sal is easy', ' ', ''))
FROM dual
