-- 10.1 Напишите запрос, возвращающий все типы счетов и открытые счета этих типов (для соединения с таблицей product используйте столбец product_cd таблицы account).
 -- Должны быть включены все типы счетов, даже если не был открыт ни один счет определенного типа.
SELECT p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM product p LEFT OUTER JOIN account a
  On p.product_cd = a.product_cd;

-- 10.2 Переформулируйте запрос из упражнения 10.1 и примените другой тип внешнего соединения
--  (т. е. если в упражнении 10.1 использова􏰀лось левостороннее внешнее соединение, используйте правосторон􏰀 нее), так чтобы результаты были, как в упражнении 10.1.
SELECT p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM account a LEFT OUTER JOIN product p
  On p.product_cd = a.product_cd;
