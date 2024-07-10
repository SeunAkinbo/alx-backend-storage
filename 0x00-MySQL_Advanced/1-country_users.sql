-- Task: Create a table 'users' with specified attributes and constraints
-- Context: Make an attribute unique directly in the table schema to enforce business rules and avoid bugs in your application

-- Check if the table 'users' already exists and create it if it does not
CREATE TABLE IF NOT EXISTS users(
	-- Attribute: id, integer, never null, auto increment and primary key
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,

	-- Attribute: email, string (255 characters), never null and unique
	email VARCHAR(255) NOT NULL UNIQUE,

	-- Attribute: name, string (255 characters)
	name VARCHAR(255),

	-- Attribute: country, enumeration of countries: US, CO, and TN, never null
	country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
