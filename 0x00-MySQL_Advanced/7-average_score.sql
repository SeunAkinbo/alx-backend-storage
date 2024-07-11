-- Task: Create a stored procedure ComputeAverageScoreForUser that computes and stores the average score for a student
-- Note: An average score can be a decimal

DELIMITER //

-- Create the stored procedure ComputeAverageScoreForUser
CREATE PROCEDURE ComputeAverageScoreForUser (
    IN user_id INT
)
BEGIN
    DECLARE avg_score DECIMAL(10, 2);

    -- Calculate the average score for the user
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id;

    -- Insert or update the average score in the user_average_scores table
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
END //

DELIMITER ;
