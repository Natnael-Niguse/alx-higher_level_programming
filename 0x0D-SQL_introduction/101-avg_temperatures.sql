-- Calculate the average temperature (Fahrenheit) by city and order by temperature descending
SELECT city, AVG(temp_f) AS avg_temp
FROM temperatures
GROUP BY city
ORDER BY avg_temp DESC;

