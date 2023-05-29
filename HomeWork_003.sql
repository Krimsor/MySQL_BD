drop database if exists hw3;

create database if not exists hw3;

use hw3;

-- 'Рабочие кадры'

drop table if exists worker;

create table if not exists worker
( id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20),
	patronymic VARCHAR(20),
    post VARCHAR(60),
	salary INT,  
    age INT
);

insert worker 
values
	(1, "Сергей", "Сергеевич", "Монтер пути", "46700", "26"), -- id = 1
    (2, "Владислав", "Владиславович", "Инженер-Конструктор", "80000", "45"), -- id = 2
    (3, "Данил", "Даниловыч", "Робототехник", "120000", "35"), -- id = 3
    (4, "Егор", "Егорович", "Инженер-Строитель", "75000", "32"), -- id = 4
    (5, "Вадим", "Вадимович", "Инженер", "60000", "49"), -- id = 5
    (6, "Илья", "Ладиславович", "Инженер", "15000", "23"), -- id = 6
    (7, "Тимофей", "Валерьевич", "Крановщик", "45000", "65"), -- id = 7
    (8, "Алена", "Бесс", "Терапевт", "150000", "79"), -- id = 8
    (9, "Полина", "Олеговна", "Инженер-Конструктор", "120000", "28"), -- id = 9
    (10, "Маша", "Васнецова", "Инженер-Строитель", "15000", "21"); -- id = 10
    
-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания

-- по убыванию:
select salary
from worker
order by salary desc;

-- по возрастанию:
select salary
from worker
order by salary;

-- 2. Выведите 5 максимальных заработных плат (saraly)
select salary
from worker 
order by salary desc
LIMIT 5;

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
select 
	post, 
	SUM(salary) as sum_salary
from worker 
group by post;
    
-- 4. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

select
	count(id) as count_id
from worker
where post = "Инженер" and age > 24 and age <= 49; -- Тебе по заданию нужно другое название специальности, хочешь меняй, хочешь не меняй

-- 5. Найдите количество специальностей

select 
	count(distinct post) as count_post
from worker;

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет

select 
	post
from worker
group by post
having avg(age) < 30;