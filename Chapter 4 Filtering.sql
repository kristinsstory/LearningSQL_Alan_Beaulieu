
-- 4.1 Какие ID транзакций возвращают следующие условия фильтрации? (см. таблица в книге)
-- txn_date < '2005􏰀02􏰀26' AND (txn_type_cd = 'DBT' OR amount > 100)

ID транзакций 1, 2, 3, 5, 6, 7  

 -- 4.2 Какие ID транзакций возвращают следующие условия фильтрации?
 -- account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)
ID транзакций 4, 9

-- 4.3 Создайте запрос, выбирающий все счета, открытые в 2002 году.individual
SELECT account_id, open_date FROM bank.account
WHERE open_date BETWEEN '2002-01-01' AND '2002-12-31';

-- 4.4 Создайте запрос, выбирающий всех клиентов􏰀физических лиц,
-- второй буквой фамилии которых является буква 'a' и есть 'e' в любой пози􏰀ции после 'a'.
SELECT cust_id, fname, lname FROM individual
WHERE lname LIKE '_a%e%';


