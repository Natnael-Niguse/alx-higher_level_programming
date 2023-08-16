-- Create a table named 'id_not_null' if it doesn't already exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,           -- Column for storing integer IDs with a default value of 1
    name VARCHAR(256)           -- Column for storing names with a maximum length of 256 characters
);

