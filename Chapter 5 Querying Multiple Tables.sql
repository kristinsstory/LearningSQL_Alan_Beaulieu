-- 5.1 Заполните в следующем запросе пробелы (обозначенные как <число>), чтобы получить такие результаты:
<1> - branch
<2> branch_id

-- 5.2 Напишите запрос, по которому для каждого клиента􏰀 физического ли􏰀ца (customer.cust_type_cd = 'I') 
-- возвращаются ID счета, федеральный ID (customer.fed_id) и тип созданного счета (product.name).
use bank;
SELECT a.account_id, c.fed_id, p.name 
FROM account a JOIN customer c
ON a.cust_id = c.cust_id
JOIN product p
ON a.product_cd = p.product_cd
WHERE c.cust_type_cd = 'I';
