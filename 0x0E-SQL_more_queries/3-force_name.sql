-- Create a table named 'force_name' if it doesn't already exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT,                          -- Column for storing integer IDs
    name VARCHAR(256) NOT NULL       -- Column for storing non-null names with a maximum length of 256 characters
);

