-- Проверка заполнения таблиц

SELECT * FROM employees e
	JOIN department d ON d.id = e.department_id
	JOIN executor ex ON ex.tab_no = e.id
	JOIN contract c ON ex.contract_id = c.id
	JOIN customer cu ON cu.id = c.customer_id
;

-- Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». Вывести: contract_id, employee_name

SELECT c.id AS contract_id, e.name AS employee_name FROM employees e
	JOIN department d ON d.id = e.department_id
	JOIN executor ex ON ex.tab_no = e.id
	JOIN contract c ON ex.contract_id = c.id
WHERE d.id = (SELECT department.id FROM department WHERE department.name = 'Logistic')
;

-- Найти среднюю стоимость контрактов, заключенных сотрудником Ivan Ivanov. Вывести: среднее значение amount

SELECT e.name AS employee_name, ROUND(AVG(c.amount),2) AS average_amount FROM employees e
	JOIN executor ex ON ex.tab_no = e.id
	JOIN contract c ON ex.contract_id = c.id
WHERE e.id = (SELECT employees.id FROM employees WHERE employees.name = 'Ivan Ivanov')
;

-- Найти самую часто встречающуюся локации среди всех заказчиков. Вывести: location, count

SELECT cu.location, COUNT(cu.location) AS count FROM customer cu
	GROUP BY cu.location
HAVING cu.location = (SELECT customer.location FROM customer 
	GROUP BY customer.location
	ORDER BY COUNT(customer.location)
	DESC
	LIMIT 1)
;


-- Найти контракты одинаковой стоимости. Вывести count, amount

SELECT c.amount, COUNT(c.amount) AS count FROM contract c
GROUP BY c.amount 
HAVING COUNT(c.amount)> 1
ORDER BY c.amount
;



--	Найти заказчика с наименьшей средней стоимостью контрактов. Вывести customer_name, среднее значение amount

SELECT cu.customer_name, ROUND(AVG(c.amount),2) AS average_amount FROM customer cu
	JOIN contract c ON cu.id = c.customer_id
	GROUP BY cu.customer_name
HAVING AVG(c.amount) = (SELECT AVG(contract.amount) FROM contract
	JOIN customer ON customer.id = contract.customer_id
	GROUP BY contract.customer_id
	ORDER BY AVG(contract.amount)
	LIMIT 1)
;


-- Найти отдел, заключивший контрактов на наибольшую сумму. Вывести: department_name, sum

SELECT d.name AS department_name, SUM(c.amount) AS sum_amount FROM department d 
	JOIN employees e ON d.id = e.department_id
	JOIN executor ex ON ex.tab_no = e.id
	JOIN contract c ON ex.contract_id = c.id
WHERE d.id = (SELECT department.id FROM contract
	JOIN executor ON executor.contract_id = contract.id
	JOIN employees ON executor.tab_no = employees.id
	JOIN department ON department.id = employees.department_id
	GROUP BY department.id
	ORDER BY SUM(contract.amount)
	DESC
	LIMIT 1)
;