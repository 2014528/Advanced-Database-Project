CREATE INDEX idx_email ON Users(email);
CREATE INDEX idx_workout_name ON Workouts(workout_name);

-- Creating index on email and workoutname to optimize queries that search  based on the email and workout name.(for better search).
