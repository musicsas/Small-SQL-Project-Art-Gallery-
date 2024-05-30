
-- Вывод плана выставок, которые осталось провести в 2024 году
SELECT title, start_date, theme FROM exhibitions 
WHERE start_date > '2024-05-28';

-- Получение списка всех картин, которые участвуют в выставках в 2024 году, с указанием художников и выставок.
SELECT p.title AS painting_title, a.name AS artist_name, e.title AS exhibition_title, ej.date AS exhibition_date
FROM paintings p
JOIN artists a ON p.artist_id = a.id
JOIN exhibition_journal ej ON p.id = ej.painting_id
JOIN exhibitions e ON ej.exhibition_id = e.id
WHERE EXTRACT(YEAR FROM ej.date) = 2024;

-- Список покупателей, которые купили больше всего картин и количество картин, которые они купили
SELECT b.name AS buyer_name, COUNT(sj.painting_id) AS number_of_paintings FROM sales_journal sj
JOIN buyers b ON sj.buyer_id = b.id
GROUP BY b.name
HAVING COUNT(sj.painting_id) = (
    SELECT MAX(painting_count)
    FROM (
        SELECT COUNT(painting_id) AS painting_count
        FROM sales_journal
        GROUP BY buyer_id
    ) AS max_paintings
);

-- Список покупателей и их суммы, которые они потратили на картины
SELECT
    b.name AS buyer_name,
    SUM(sj.sale_price) AS total_purchase_cost
FROM sales_journal sj
JOIN buyers b ON sj.buyer_id = b.id
GROUP BY b.name
ORDER BY total_purchase_cost DESC;

-- Вывод самой дорогой картины, проданной за все время
SELECT
    p.title AS painting_title,
    a.name AS artist_name,
    sj.sale_price AS sale_price,
	p.creation_year 
FROM sales_journal sj
JOIN paintings p ON sj.painting_id = p.id
JOIN artists a ON p.artist_id = a.id
WHERE sj.sale_price = (
    SELECT MAX(sale_price) 
    FROM sales_journal
);

-- Вывод куратоторов, которые курировали больше, чем одну выставку и количество этих выставок
SELECT
    c.name AS curator_name,
    COUNT(DISTINCT ej.exhibition_id) AS num_exhibitions_curated
FROM
    exhibition_journal ej
JOIN
    curators c ON ej.curator_id = c.id
GROUP BY
    c.name
HAVING
    COUNT(DISTINCT ej.exhibition_id) > 1;

-- Средняя стоимость картин, проданных в каждом стиле
SELECT
    a.main_style AS art_style,
    ROUND(AVG(sj.sale_price), 2) AS avg_sale_price
FROM
    paintings p
JOIN
    artists a ON p.artist_id = a.id
JOIN
    sales_journal sj ON p.id = sj.painting_id
GROUP BY
    a.main_style
ORDER BY
    avg_sale_price DESC;

-- Список 3 самых популярных стилей и количество проданных картин по ним
SELECT
    p.style AS painting_style,
    COUNT(s.id) AS total_sales
FROM
    sales_journal s
JOIN
    paintings p ON s.painting_id = p.id
GROUP BY
    p.style
ORDER BY
    total_sales DESC
LIMIT 3;

-- Несколько запросов на обновление базы данных
-- Добавление новой картины, которая появилась в коллекции только недавно
INSERT INTO paintings (title, creation_year, style, artist_id, is_original, paint_type, size)
VALUES ('Three Musicians', 1921, 'Cubism', 3, TRUE, 'Oil', '200 cm x 222 cm');


-- Обновление фамилии покупателя
UPDATE buyers
SET name = 'John Smith'
WHERE id = 1;

