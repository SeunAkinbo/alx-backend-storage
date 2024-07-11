-- Task: Create an index idx_name_first_score on the table names and the first letter of name and the score
-- Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

-- Drop the existing index if it exists
DROP INDEX IF EXISTS idx_name_first_score ON names;

-- Create an index on the first letter of the name column and the score column
CREATE INDEX idx_name_first_score ON names (SUBSTRING(name, 1, 1), score);
