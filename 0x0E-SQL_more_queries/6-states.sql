-- Create a new database named 'hbtn_0d_usa' if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Create a table named 'states' within the 'hbtn_0d_usa' database if it doesn't already exist
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.states (
    id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,   -- Column for storing unique integer IDs, auto-incremented, and serving as primary key
    name VARCHAR(256) NOT NULL                           -- Column for storing non-null state names with a maximum length of 256 characters
);

