# MySQL_BD
# `Семинар №1 ДЗ. "Установка СУБД, подключение к БД, просмотр и создание таблиц"`
* **`Задача № 1.`** 
Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными

* **`Задача № 2.`** 
Выведите название, производителя и цену для товаров, количество которых превышает 2

* **`Задача № 3.`** 
Выведите весь ассортимент товаров марки “Samsung”

* **`Задача № 4.`** 
Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

* **`Задача № 4***.`** 
С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):

* **`Задача № 4.1`**
Товары, в которых есть упоминание "Iphone"

* **`Задача № 4.2`**
"Galaxy"

* **`Задача № 4.3`**
Товары, в которых есть ЦИФРЫ

* **`Задача № 4.4`**
Товары, в которых есть ЦИФРА "8"

# `Семинар №2 ДЗ. "SQL – создание объектов, простые запросы выборки"`
* **`Задача № 1.`** 
Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

* **`Задача № 2.`**
Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

* **`Задача № 3.`** 
Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE

* **`Дополнительное задание к первым 2 урокам:`**
* **`Задача № 1.`** 
RUD - операции на любом ЯП. Коннект с БД через С#, к примеру

* **`Файл со скриптом прикреплен к материалам(interview.sql):`**
* **`Задача № 1.`**
Используя оператор ALTER TABLE, установите внешний ключ в одной из таблиц (clients-posts)

* **`Задача № 2.`**
Без оператора JOIN, верните заголовок публикации, текст с описанием, идентификатор клиента, опубликовавшего публикацию и логин данного клиента.

* **`Задача № 3.`**
Выполните поиск по публикациям, автором которых является клиент "Mikle".

# `Семинар №3 ДЗ. "SQL – выборка данных, сортировка, агрегатные функции"`
* **`Задача № 1.`** 
Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания

* **`Задача № 2.`**
Выведите 5 максимальных заработных плат (saraly)

* **`Задача № 3.`** 
Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

* **`Задача № 4.`** 
Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

* **`Задача № 5.`** 
Найдите количество специальностей

* **`Задача № 6.`** 
Выведите специальности, у которых средний возраст сотрудников меньше 30 лет

# `Семинар №4 ДЗ. "SQL – работа с несколькими таблицами"`
`Табличка:`
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link

* **`Задача № 1.`** 
Используя JOIN-ы, выполните следующие операции:  
Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

* **`Задача № 2.`**
Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)

* **`Задача № 3.`**
Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

* **`Задача № 4.`** 
`Табличка` (после слов “Последнее задание, таблица:”):
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link  
Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.  
Есть `таблица` анализов `Analysis`:  
an_id — ID анализа;  
an_name — название анализа;  
an_cost — себестоимость анализа;  
an_price — розничная цена анализа;  
an_group — группа анализов.  
Есть таблица групп анализов Groups:  
gr_id — ID группы;  
gr_name — название группы;  
gr_temp — температурный режим хранения.  
Есть таблица заказов Orders:  
ord_id — ID заказа;  
ord_datetime — дата и время заказа;  
ord_an — ID анализа.  

# `Семинар №5 ДЗ. "SQL – оконные функции"`
`Файл:`
https://docs.google.com/spreadsheets/d/1bKCfz2tMENAISBxU7XRevge1qraNuPoN/edit?usp=share_link&ouid=112631188905352530754&rtpof=true&sd=true  
`Скрипт:` https://drive.google.com/file/d/1rkNr6GHSE9ulRs39BB4RC80aKMg1c7Jw/view?usp=share_link

* **`Задача № 1.`**   
Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов


* **`Задача № 2.`**   
Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)

* **`Задача № 3.`**  
Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

* **`Задача № 4.`**   
Добавьте новый столбец под названием «время до следующей станции». 
Чтобы получить это значение, мы вычитаем время станций для пар смежных станций.
Мы можем вычислить это значение без использования оконной функции SQL, но это может быть очень сложно. 
Проще это сделать с помощью оконной функции LEAD . 
Эта функция сравнивает значения из одной строки со следующей строкой, чтобы получить результат. 
В этом случае функция сравнивает значения в столбце «время» для станции со станцией сразу после нее.

# `Семинар №6 ДЗ. "SQL – Транзакции. Временные таблицы, управляющие конструкции, циклы"`

* **`Задача № 1.`**   
Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней, часов, минут и секунд.    
**Пример:**    
256174 ->'2 days 23 hours 9 minutes 34 seconds '  

* **`Задача № 2.`**   
Выведите только четные числа от 10 до 20 (Через цикл).  
**Пример:**  
10, 12, 14, 16, 18, 20  

