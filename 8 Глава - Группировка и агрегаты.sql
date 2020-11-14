-- 8.1. Создайте запрос для подсчета числа строк в таблице account
SELECT COUNT(*) number_of_strings
FROM account;

-- 8.2 Измените свой запрос из упражнения 8.1 для подсчета числа счетов, имеющихся у каждого клиента. 
-- Для каждого клиента выведите ID кли􏰀ента и количество счетов.
SELECT cust_id, COUNT(*) number_of_accounts
FROM account
GROUP BY cust_id;

-- 8.3 Измените запрос из упражнения 8.2 так, чтобы в результирующий на􏰀бор были включены только клиенты, имеющие не менее двух счетов.
SELECT cust_id, COUNT(*) number_of_accounts
FROM account
GROUP BY cust_id
HAVING COUNT(*) >= 2;

-- 8.4 Найдите общий доступный остаток по типу счетов и отделению, где на каждый тип и отделение приходится более одного счета. 
-- Результа􏰀ты должны быть упорядочены по общему остатку (от наибольшего к наименьшему).
SELECT product_cd, open_branch_id, SUM(avail_balance) as total_money
FROM account
GROUP BY product_cd, open_branch_id
HAVING COUNT(*) > 1
ORDER BY 3 DESC;
