-- Task: Create an index idx_name_first on the table names and the first letter of name
-- Context: Index is not the solution for any performance issue, but well used, it’s really powerful!

-- Create an index on the first letter of the name column
CREATE INDEX idx_name_first ON names (name(1));
