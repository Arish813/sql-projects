SELECT title,score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT SUM(score)
FROM hacker_news;

SELECT user,SUM(score) AS user_score
FROM hacker_news
GROUP BY user
HAVING user_score>200;

SELECT (517 + 309 + 304 + 282) / 6366.0;

SELECT user,count(1)
FROM hacker_news
WHERE url="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
GROUP BY user;

SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
  END AS 'Source',count(1)
  FROM hacker_news
  GROUP BY Source;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
strftime('%H',timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H',timestamp) AS hours,AVG(score),COUNT(1)
FROM hacker_news
GROUP BY 1;

SELECT strftime('%H',timestamp) AS hours,ROUND(AVG(score),0) AS avg_score,COUNT(1) AS stories_hour
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1;

