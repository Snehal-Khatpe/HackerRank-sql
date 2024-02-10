-- eg. 1) Second highest salary

/*
SELECT sal FROM emp 
WHERE sal < (SELECT MAX(sal) FROM emp)
ORDER BY sal DESC;  */

-- Second highest salary is nothing but the MAX(salary) from second set; second set will consist of all salaries less than overall MAX
SELECT MAX(sal) FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp);

-- Third highest salary
SELECT MAX(sal) FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp
			WHERE sal < (SELECT MAX(sal) FROM emp));