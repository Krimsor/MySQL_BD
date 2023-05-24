-- 1. Создание таблицы "sales" и заполнение ее данными:

CREATE DATABASE IF NOT EXISTS hw_002;
USE hw_002;

CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Prod_name CHAR(25),
    Sale_count INT
);

INSERT INTO sales(Prod_name,Sale_count)
VALUES ('product_1', ROUND(RAND()*500, 0)),
('product_2', ROUND(RAND()*500, 0)),
('product_3', ROUND(RAND()*500, 0)),
('product_4', ROUND(RAND()*500, 0)),
('product_5', ROUND(RAND()*500, 0)),
('product_6', ROUND(RAND()*500, 0)),
('product_7', ROUND(RAND()*500, 0)),
('product_8', ROUND(RAND()*500, 0)),
('product_9', ROUND(RAND()*500, 0)),
('product_10', ROUND(RAND()*500, 0)),
('product_11', ROUND(RAND()*500, 0)),
('product_12', ROUND(RAND()*500, 0)),
('product_13', ROUND(RAND()*500, 0)),
('product_14', ROUND(RAND()*500, 0)),
('product_15', ROUND(RAND()*500, 0)),
('product_16', ROUND(RAND()*500, 0)),
('product_17', ROUND(RAND()*500, 0)),
('product_18', ROUND(RAND()*500, 0)),
('product_19', ROUND(RAND()*500, 0)),
('product_20', ROUND(RAND()*500, 0));

-- 2. Группировка значений количества в 3 сегмента:

SELECT
    CASE
        WHEN Sale_count < 100 THEN 'Меньше 100'
        WHEN Sale_count BETWEEN 100 AND 300 THEN '100 - 300'
        ELSE 'Больше 300'
    END AS 'Сегмент',
    COUNT(*) AS 'Количество'
FROM
    sales
GROUP BY
    CASE
        WHEN Sale_count < 100 THEN 'Меньше 100'
        WHEN Sale_count BETWEEN 100 AND 300 THEN '100 - 300'
        ELSE 'Больше 300'
    END;

-- 3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE:

USE hw_002;

-- Создание таблицы 'orders', если она не существует
CREATE TABLE IF NOT EXISTS orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  order_date DATE,
  order_status VARCHAR(20),
  PRIMARY KEY (order_id)
);

-- Заполнение таблицы 'orders' значениями

INSERT INTO orders (order_id, order_date, order_status)
VALUES
  (1, '2023-05-01', 'Delivered'),
  (2, '2023-05-05', 'Pending'),
  (3, '2023-05-10', 'Shipped'),
  (4, '2023-05-15', 'Cancelled'),
  (5, '2023-05-20', 'Delivered');

-- Вывод 'полного' статуса заказа с использованием оператора CASE
SELECT
  order_id,
  order_status,
  CASE
    WHEN order_status = 'Delivered' THEN 'Заказ доставлен'
    WHEN order_status = 'Pending' THEN 'Ожидает обработки'
    WHEN order_status = 'Shipped' THEN 'Отправлен'
    WHEN order_status = 'Cancelled' THEN 'Заказ отменен'
    ELSE 'Неизвестный статус'
  END AS full_status
FROM
  orders;

-- Дополнительное задание:

-- 1. Используя оператор ALTER TABLE, установите внешний ключ в одной из таблиц (clients-posts)

ALTER TABLE posts 
ADD INDEX clients_user_id (user_id);
ALTER TABLE posts 
ADD CONSTRAINT fk_clients_posts 
FOREIGN KEY (user_id) 
REFERENCES clients (id);

-- 2. Без оператора JOIN, верните заголовок публикации, текст с описанием, идентификатор клиента, опубликовавшего публикацию и логин данного клиента.

SELECT
  p.title,
  p.full_text,
  p.user_id,
  (SELECT c.login FROM clients c WHERE c.id = p.user_id) AS client_login
FROM
  posts p;

-- 3. Выполните поиск по публикациям, автором которых является клиент "Mikle".

SELECT p.*
FROM posts p
WHERE p.user_id IN (
    SELECT id
    FROM clients
    WHERE login = 'Mikle'
)
LIMIT 3;