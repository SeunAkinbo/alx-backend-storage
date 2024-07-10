-- Task: Create a trigger that resets the attribute valid_email only when the email has been changed
-- Context: Distribute the logic to the database itself for user email validation

DELIMITER //

-- Create a trigger that activates before updating a row in the users table
CREATE TRIGGER reset_valid_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has been changed
    IF NEW.email <> OLD.email THEN
        -- Reset valid_email attribute
        SET NEW.valid_email = FALSE;
    END IF;
END //

DELIMITER ;
