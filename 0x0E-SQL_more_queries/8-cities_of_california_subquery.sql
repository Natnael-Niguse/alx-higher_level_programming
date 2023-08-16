-- Select the 'id' and 'name' columns from the 'cities' table
-- for cities located in the state with the name "California"
-- and order the results by the 'id' column
SELECT id, name FROM cities
WHERE state_id = (
    -- Subquery to retrieve the 'id' of the state with the name "California"
    SELECT id FROM states
    WHERE name = "California"
)
ORDER BY id;

