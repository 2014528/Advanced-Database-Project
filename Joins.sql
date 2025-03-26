-- Fetching data by using Join operations
-- Inner Join
-- Geting all workout logs with user information. By joining the WorkoutLogs table with the Users table to get information about the user along with the workout log details.
SELECT
    wl.log_id,
    u.name AS user_name,
    u.email AS user_email,
    w.workout_name,
    wl.calories_burned,
    wl.log_date
FROM
    WorkoutLogs wl
JOIN
    Users u ON wl.user_id = u.user_id
JOIN
    Workouts w ON wl.workout_id = w.workout_id;

-- Geting total calories burned by each user for all workout.

SELECT
    u.name AS user_name,
    u.email AS user_email,
    SUM(wl.calories_burned) AS total_calories_burned
FROM
    WorkoutLogs wl
JOIN
    Users u ON wl.user_id = u.user_id
GROUP BY
    u.user_id;
    
-- Left Join

-- Getting all users and the number of workout logs they have (including users with no workouts).

SELECT
    u.name AS user_name,
    u.email AS user_email,
    COUNT(wl.log_id) AS workout_count
FROM
    Users u
LEFT JOIN
    WorkoutLogs wl ON u.user_id = wl.user_id
GROUP BY
    u.user_id;

