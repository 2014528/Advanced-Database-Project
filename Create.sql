Create database WorkoutTracker;
USE WorkoutTracker;

-- Stores unformation of the users.
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    total_workouts INT DEFAULT 0
);

-- Stores details of the workout types.
CREATE TABLE Workouts (
    workout_id INT AUTO_INCREMENT PRIMARY KEY,
    workout_name VARCHAR(100),
    category VARCHAR(50),  
    duration_minutes INT
);

-- Saving the details of the workouts performed by users into a database.
CREATE TABLE WorkoutLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    workout_id INT,
    log_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- This will automatically record the date and time when a  workout log is created.(for tracking the time).
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (workout_id) REFERENCES Workouts(workout_id)
);
