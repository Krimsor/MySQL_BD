CREATE DATABASE HomeWork_005;
USE HomeWork_005;

CREATE TABLE cars
(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
    (1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
    (5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);


-- 1. Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
CREATE VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost <= 25000;
SELECT * FROM cars_under_25000;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW cars_under_25000
AS
SELECT *
FROM cars
WHERE cost <= 30000;
SELECT * FROM cars_under_25000;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW skoda_and_audi_cars AS
SELECT *
FROM cars
WHERE name IN ('Skoda', 'Audi');
SELECT * FROM skoda_and_audi_cars;

-- 4. Добавьте новый столбец под названием «время до следующей станции».

CREATE TABLE stations
(
train_id INT NOT NULL,
station varchar(20) NOT NULL,
station_time TIME NOT NULL
);
INSERT stations(train_id, station, station_time)
VALUES (110, "SanFrancisco", "10:00:00"),
(110, "Redwood Sity", "10:54:00"),
(110, "Palo Alto", "11:02:00"),
(110, "San Jose", "12:35:00"),
(120, "SanFrancisco", "11:00:00"),
(120, "Palo Alto", "12:49:00"),
(120, "San Jose", "13:30:00");
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE stations
ADD COLUMN time_to_next_station TIME;

UPDATE stations AS s
JOIN (
    SELECT train_id, station_time, LEAD(station_time) OVER (PARTITION BY train_id ORDER BY station_time) AS next_station_time
    FROM stations
) AS t ON s.train_id = t.train_id AND s.station_time = t.station_time
SET s.time_to_next_station = TIMEDIFF(t.next_station_time, s.station_time);

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM stations;

    