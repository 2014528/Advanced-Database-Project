START TRANSACTION;

INSERT INTO WorkoutLogs (user_id, workout_id, calories_burned)
VALUES (1, 2, 400);


UPDATE Users 
SET total_workouts = total_workouts + 1 
WHERE user_id = 1;

COMMIT;

-- In this i am inserting a new workout log updating the user's total workout count after the workout is logged and commiting the transaction if everything is successful.