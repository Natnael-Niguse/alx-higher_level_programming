-- Create a new database named 'hbtn_0d_usa' if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Create a table named 'cities' within the 'hbtn_0d_usa' database if it doesn't already exist
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.cities (
    id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,     -- Column for storing unique integer IDs, auto-incremented, and serving as primary key
    state_id INT NOT NULL,                                 -- Column for storing integer IDs of states to establish a foreign key relationship
    FOREIGN KEY(state_id) REFERENCES hbtn_0d_usa.states(id), -- Establish a foreign key relationship with the 'id' column in the 'states' table
    name VARCHAR(256) NOT NULL                            -- Column for storing non-null city names with a maximum length of 256 characters
);

