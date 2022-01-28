SELECT *
FROM names
LIMIT 5

-----
SELECT COUNT(*)
FROM names
---QUESTION 1: 1,957,046

SELECT SUM(num_registered)
FROM names
---QUESTION 2: 351,653,025

SELECT MAX(num_registered)
FROM names

Select name
FROM names
WHERE num_registered= 99689
---QUESTION 3: LINDA

Select MIN(year)
FROM names
---Question 4 1880-2018
Select Max(year)
FROM names
-------
Select year, SUM(num_registered)
FROM names
GROUP BY year
ORDER BY SUM(num_registered) DESC
---QUESTION 5: 1957 WITH 4,200,022

SELECT DISTINCT COUNT(name)
FROM names
----QUESTION 6: 1,957,046

SELECT SUM(num_registered)
FROM names
WHERE gender= 'F'
---females - 174,079,232
SELECT SUM(num_registered)
FROM names
WHERE gender= 'M'
---males - 177,573,793
---QUESTION 7 MORE MALES

SELECT name, SUM(num_registered)
FROM names
WHERE gender= 'F'
GROUP BY name
ORDER BY SUM(num_registered) DESC
--QUESTION 8 FEMALE: Mary
SELECT name, SUM(num_registered)
FROM names
WHERE gender= 'M'
GROUP BY name
ORDER BY SUM(num_registered) DESC
---QUESTION 8 MALE: JAMES

SELECT name, SUM(num_registered)
FROM names
WHERE gender= 'F'
AND year
BETWEEN 2000 AND 2009 
GROUP BY name
ORDER BY SUM(num_registered) DESC
--QUESTION 9 FEMALE: EMILY
SELECT name, SUM(num_registered)
FROM names
WHERE gender= 'M'
AND year
BETWEEN 2000 AND 2009 
GROUP BY name
ORDER BY SUM(num_registered) DESC
---QUESTION 9 MALE: JACOB

SELECT DISTINCT COUNT (name), YEAR
FROM names
GROUP BY YEAR
ORDER BY COUNT (NAME) DESC
---QUESTION 10 2008

SELECT name, SUM(num_registered)
FROM names
WHERE gender= 'F'
AND name LIKE 'X%'
GROUP BY name
ORDER BY SUM(num_registered) DESC
---QUESTION 11 Ximena

SELECT DISTINCT COUNT (name)
FROM names
WHERE name LIKE 'Q%'
AND name NOT LIKE '_u%'
--- QUESTION 12 =333

SELECT name ,SUM(num_registered)
FROM names
WHERE name = 'Steven'
GROUP BY name----1,286,951

SELECT name ,SUM(num_registered)
FROM names
WHERE name = 'Stephen'
GROUP BY name--- 860,972

SELECT name ,SUM(num_registered)
FROM names
WHERE name = 'Steven' OR name ='Stephen'
GROUP BY name
---QUESTION 13 STEVEN

