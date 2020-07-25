 SELECT *
FROM met
LIMIT 10;

SELECT COUNT(1)
FROM met
WHERE department='American Decorative Arts';

SELECT COUNT(1)
FROM met
WHERE category LIKE '%celery%';

SELECT title,medium
FROM met
WHERE date=(SELECT MIN(date) FROM met);


SELECT country,count(1) AS con
FROM met
WHERE country IS NOT NULL
GROUP BY country
ORDER BY con DESC
limit 10;

SELECT category,count(1) AS con
FROM met
WHERE category IS NOT NULL
GROUP BY category
HAVING con>100;

SELECT medium,count(1)
FROM met
WHERE medium LIKE '%gold%' OR medium LIKE "%silver%"
GROUP BY medium
ORDER BY 2 DESC;