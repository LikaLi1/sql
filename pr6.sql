HAVING - после GROUP и используется только с 
SELECT department, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

FROM - из какой таблицы берём данные
WHERE - фильтрует строки
GROUP BY - складываем строки в группу 
HAVING - фильтрует группы

SELECT name, MIN(salary) FROM emloyees;
SELECT name, department, MAX(salary) FROM emloyees;
SELECT 
