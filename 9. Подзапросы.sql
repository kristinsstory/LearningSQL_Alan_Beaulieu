-- 9. 1 Создайте запрос к таблице account, использующий условие фильтра􏰀ции с несвязанным подзапросом к таблице product для поиска всех кре􏰀дитных счетов 
-- (product.product_type_cd = 'LOAN'). Должны быть выбра􏰀ны ID счета, код счета, ID клиента и доступный остаток.
SELECT account_id, product_cd, cust_id, avail_balance
FROM account 
WHERE product_cd IN (SELECT product_cd 
  FROM product
  WHERE product.product_type_cd = 'LOAN');

-- 9.2 Переработайте запрос из упражнения 9.1, используя связанный подза􏰀прос к таблице product для получения того же результата.
SELECT a.account_id, a.product_cd, a.cust_id, a.avail_balance
FROM account a
WHERE EXISTS (SELECT 1 
  FROM product p
  WHERE p.product_cd = a.product_cd
    AND p.product_type_cd = 'LOAN');

--  9.4 Создайте запрос к таблице employee для получения ID, имени и фами􏰀лии сотрудника вместе с названиями отдела и отделения, к которым он приписан.
-- Не используйте соединение таблиц.
SELECT e.emp_id, e.fname, e.lname,
  (SELECT d.name FROM department d
  WHERE d.dept_id = e.dept_id) dept_name,
  (SELECT b.name FROM branch b
  WHERE b.branch_id = e.assigned_branch_id) branch_name
FROM employee e;

