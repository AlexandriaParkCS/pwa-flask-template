-- database: ../runtime/db/app.db

-- NOTE:
-- Usually each SQL statement here will be placed in its own SQL file. 

-- Create tables
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL);

-- Add user
INSERT INTO users (name, username, email) 
    VALUES ('luke', 'luke@starwars.com');

-- Get user by user name
SELECT id, username, email FROM users WHERE username = 'luke';

-- Update user
UPDATE users SET email = 'skywalker@starwars.com' WHERE username = 'luke';

-- Delete user
DELETE FROM users WHERE username = 'luke';
