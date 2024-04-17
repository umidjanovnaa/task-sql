--1 task
SELECT *
FROM customers

--2 task
SELECT contact_name, city
FROM customers

--3 task
SELECT order_id, shipped_date - order_date
FROM orders

--4 task
SELECT DISTINCT city
FROM customers

--5 task
SELECT DISTINCT city, country
FROM customers

--6 task
SELECT COUNT(*)
FROM customers

--7 task
SELECT COUNT(DISTINCT country)
FROM customers


--1 task
SELECT *
FROM orders
WHERE ship_country IN ('France', 'Spain', 'Austria')

--2 task
SELECT required_date, shipped_date
FROM orders
ORDER BY required_date DESC, shipped_date ASC

--3 task
SELECT MIN(units_in_stock)
FROM products
WHERE units_in_stock > 30

--4 task
SELECT MAX(units_in_stock)
FROM products
WHERE units_in_stock > 30

--5 task
SELECT AVG(shipped_date - order_date)
FROM orders 
WHERE ship_country = 'USA'

--6 task
SELECT SUM(units_in_stock * unit_price)
FROM products
WHERE discontinued = 0


--1 task
SELECT ship_country
FROM orders
WHERE ship_country LIKE 'U%'

--2 tatsk
SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10

--3 task
SELECT last_name, first_name, region
FROM employees
WHERE region IS NULL

--4 task
SELECT COUNT(contact_name)
FROM customers
WHERE region IS NOT NULL

--5 task
SELECT ship_country, COUNT(ship_country)
FROM orders
GROUP BY ship_country
ORDER BY COUNT(ship_country)

--6 task
SELECT ship_country, SUM(freight)
FROM orders
GROUP BY ship_country
HAVING SUM (freight) > 2750
ORDER BY SUM(freight) DESC

--7 dars
SELECT country
FROM customers
UNION
SELECT country
FROM suppliers

--8 task
SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
INTERSECT
SELECT country
FROM employees

--9 task
SELECT country
FROM employees
EXCEPT
SELECT country
FROM suppliers


