-- Calculate the maximum temperature (Fahrenheit) for each state and order by state name
SELECT state, MAX(temp_f) AS max_temp
FROM temperatures
GROUP BY state
ORDER BY state;

