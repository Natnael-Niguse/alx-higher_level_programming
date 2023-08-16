-- Create a new database 'hbtn_0d_2' if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Create a new user 'user_0d_2' if they don't already exist, with a password
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant SELECT privilege on all tables within the 'hbtn_0d_2' database to 'user_0d_2' from localhost
GRANT SELECT ON `hbtn_0d_2`.* TO 'user_0d_2'@'localhost';

-- Flush the privileges to ensure they take effect
FLUSH PRIVILEGES;

