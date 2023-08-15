-- Retrieve scores and names from "second_table" where the name is not null,
-- and order the results by score in descending order
SELECT score, name
FROM second_table
HAVING name IS NOT NULL
ORDER BY score DESC;

