DELIMITER //
CREATE TRIGGER after_workout_log
AFTER INSERT ON WorkoutLogs
FOR EACH ROW
BEGIN
    UPDATE Users
    SET total_workouts = total_workouts + 1
    WHERE user_id = NEW.user_id;
END;
//
DELIMITER ;

-- I am creating a trigger in my database, which automatically updates the Users table every time a new row is inserted into the WorkoutLogs.

