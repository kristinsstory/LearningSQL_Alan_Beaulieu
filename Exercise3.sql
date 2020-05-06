DROP DATABASE if exists bank;
CREATE DATABASE bank;
USE bank;


SELECT * FROM bank.employee;

-- 3.1 Извлеките ID, имя и фамилию всех банковских сотрудников. Выпол􏰀ните сортировку по фамилии, а затем по имени.
SELECT emp_id, fname, lname FROM employee
ORDER BY lname, fname;

-- 3.2 Извлеките ID счета, ID клиента и доступный остаток всех счетов, имею􏰀щих статус 'ACTIVE' (активный) и доступный остаток более 2500 долла􏰀ров.
SELECT account_id, cust_id, avail_balance FROM account
WHERE status = 'ACTIVE'
  AND avail_balance > 2500
ORDER by avail_balance;

-- 3.3 Напишите запрос к таблице account, возвращающий ID сотрудников, от􏰀крывших счета (используйте столбец account.open_emp_id). 
-- Результирую􏰀щий набор должен включать по одной строке для каждого сотрудника.
SELECT DISTINCT open_emp_id FROM account;

-- 3.4 В этом запросе к нескольким наборам данных заполните пробелы (обо􏰀 значенные как <число>) так, чтобы получить результат, приведенный ниже:
SELECT p.product_cd, a.cust_id, a.avail_balance
FROM product p INNER JOIN account a
  ON p.product_cd = a.product_cd
WHERE p.product_type_cd = 'ACCOUNT';