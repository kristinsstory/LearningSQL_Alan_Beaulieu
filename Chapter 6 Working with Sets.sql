-- 6.1  Имеются множество A = {L M N O P} и множество B = {P Q R S T}. Какие мно􏰀жества будут получены в результате следующих операций:
A union B {L M N O P  Q R S T}
A union all B {L M N O P P Q R S T}
A intersect B {P}
A except B {L M N O}


-- 6.2 Напишите составной запрос для выбора имен и фамилий всех клиен􏰀тов 􏰀физических лиц, а также имен и фамилий всех сотрудников.
SELECT fname, lname
FROM individual
UNION
SELECT fname, lname
FROM employee;

-- 6.3 Отсортируйте результаты упражнения 6.2 по столбцу lname.
SELECT fname, lname
FROM individual
UNION
SELECT fname, lname
FROM employee
ORDER by lname;