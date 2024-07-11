-- Task: Create a table 'users' with specified attributes and constraints
-- Context: Make an attribute unique directly in the table schema to enforce business rules and avoid bugs in your application

-- Check if the table 'users' already exists and create it if it doesn't
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	-- Attribute: id, integer, never null, auto increament and primary key
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,

	-- Attribute: email, string (255 characters), never null, auto increment and primary key
	email VARCHAR(255) NOT NULL UNIQUE,

	-- Attribute: name, string (255 characters)
	name VARCHAR(255)
);
