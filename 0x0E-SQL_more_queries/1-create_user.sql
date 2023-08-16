-- Create a new user 'user_0d_1' if they don't already exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Grant all privileges on all databases and tables to 'user_0d_1' from localhost
GRANT ALL PRIVILEGES ON * . * TO 'user_0d_1'@'localhost';

-- Flush the privileges to ensure they take effect
FLUSH PRIVILEGES;
