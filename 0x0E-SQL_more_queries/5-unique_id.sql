-- Create a table named 'unique_id' if it doesn't already exist
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1,           -- Column for storing integer IDs with a default value of 1
    UNIQUE (ID),                -- Enforce uniqueness constraint on the 'id' column
    name VARCHAR(256)           -- Column for storing names with a maximum length of 256 characters
);

