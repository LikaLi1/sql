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
SELECT department , COUNT(*) FROM employees
GROUP BY department;

SELECT department, AVG(salary)
FROM employees
GROUP BY department;

HAVING - после GROUP и используется только с агрегю 
SELECT department, COUNT(*)
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 2;

SELECT COUNT(*) FROM employees;
SELECT COUNT(DISTINCT department) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;

SELECT name, MIN(salary) FROM employees;

SELECT name, department, MAX(salary) FROM employees;

SELECT department, MAX(salary) FROM employees;

SELECT name, department, COUNT(*) FROM employees
GROUP BY department;

# GROUP BY, ORDER BY

SELECT -- столбец1, столбец2 ...
FROM -- таблица
ORDER BY -- столбец для группировки [ASC/DESC]

ORDER BY -- сортировка результатов.
-- Упорядочивает строки результата запроса по указанным столбцам

ASC and DESC -- направление сортировка
ASC -- сортировка по возрастанию
DESC -- сортировка по убыванию 

GROUP BY -- группировка строк. Объединяет строки с одинаковым значениями в группы

SELECT name, department, salary
FROM employees
ORDER BY name;

SELECT * FROM employees;

SELECT name, salary
FROM employees
ORDER BY salary DESC;
