-- Calculate the average temperature (Fahrenheit) for each city during July and August
-- and display the top 3 cities ordered by temperature descending
SELECT city, AVG(temp_f) AS avg_temp
FROM temperatures
WHERE month IN (7, 8)
GROUP BY city
ORDER BY avg_temp DESC
LIMIT 3;
