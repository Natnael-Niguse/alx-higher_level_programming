-- Creating user 'user_0d_1' on localhost with a password.
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Granting all privileges to 'user_0d_1' on all databases and tables.
GRANT ALL PRIVILEGES ON * . * TO 'user_0d_1'@'localhost';

-- Refreshing privileges to apply the recent grant.
FLUSH PRIVILEGES;

