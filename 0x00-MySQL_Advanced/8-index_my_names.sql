-- SQL script that creates an index idx_name_first on the table names and the first letter of name.
-- Requirements: Only the first letter of name must be indexed

-- Drop the existing index if it exists
DROP INDEX IF EXISTS idx_name_first ON names;

-- Create index idx_name_first on the table names for the first letter of name
CREATE INDEX idx_name_first ON names (name(1));
