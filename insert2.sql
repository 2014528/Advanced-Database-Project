INSERT INTO Users (name, email) VALUES
('Abhishek', 'abhi@gym.com'),
('Sidhant', 'sid@gym.com');

INSERT INTO Workouts (workout_name, category, duration_minutes) VALUES
('Running', 'Cardio', 30),
('Deadlift', 'Strength', 45),
('Yoga Session', 'Yoga', 60);

INSERT INTO WorkoutLogs (user_id, workout_id, calories_burned) VALUES
(1, 1, 300),
(2, 2, 500);
