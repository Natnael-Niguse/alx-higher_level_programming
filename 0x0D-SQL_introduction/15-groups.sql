-- Retrieve scores and the count of occurrences (number) from "second_table",
-- group them by score, and order the results by the count in descending order
SELECT score, COUNT(1) AS number FROM second_table
GROUP BY score
ORDER BY number DESC;

