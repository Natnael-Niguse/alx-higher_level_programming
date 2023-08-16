-- Select the 'id' and 'name' columns from the 'cities' table,
-- along with the 'name' column from the 'states' table
-- using an inner join based on the 'state_id' and 'id' columns, respectively
-- and order the results by the 'id' column of the 'cities' table
SELECT cities.id, cities.name, states.name FROM cities
JOIN states ON cities.state_id=states.id
ORDER BY cities.id;

