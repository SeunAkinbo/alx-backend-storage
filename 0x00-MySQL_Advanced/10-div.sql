-- Task: Create a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0
-- Context: You must create a function SafeDiv that takes 2 arguments: a, INT and b, INT

DELIMITER //

-- Create the function SafeDiv
CREATE FUNCTION SafeDiv (
    a INT,
    b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    -- Check if the second number is equal to 0
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END //

DELIMITER ;
