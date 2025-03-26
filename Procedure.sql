DELIMITER //
CREATE PROCEDURE GetUserWorkoutHistory(IN uid INT)
BEGIN
    SELECT wl.log_id, u.name, w.workout_name, w.category, wl.log_date, wl.calories_burned
    FROM WorkoutLogs wl
    JOIN Users u ON wl.user_id = u.user_id
    JOIN Workouts w ON wl.workout_id = w.workout_id
    WHERE wl.user_id = uid;
END;
//
DELIMITER ;


--  creating a stored procedure named GetUserWorkoutHistory, 
-- Taking a user ID (uid) as input and retrieves the user's workout history from the WorkoutLogs, Users, and Workouts tables. 
-- It joins the tables and filters the records to return the user's workout logs, including workout details like name, category, date, and calories burned.

CALL GetUserWorkoutHistory(1);
