# Workout Tracker Database System

A comprehensive database system for tracking workouts, users, and exercise logs using both SQL and MongoDB.

## Overview

This project implements a workout tracking system with support for:
- User management
- Workout logging
- Exercise tracking
- Performance analytics

## Database Structure

### SQL Tables
- **Users**: Stores user profiles and workout statistics
- **Workouts**: Contains different types of exercises and their details
- **WorkoutLogs**: Tracks user workout sessions and performance

### MongoDB Collections
- **Users**: User profiles with detailed metrics
- **Workouts**: Exercise definitions and categories
- **workout_logs**: Detailed workout session records

## Features

- User registration and profile management
- Workout logging and tracking
- Calorie tracking
- Performance analytics
- Automated statistics updates via triggers
- Optimized queries with indexes

## Key Components

- Database creation scripts
- CRUD operations
- Stored procedures
- Triggers for automated updates
- Transaction management
- Complex joins for data analysis
- MongoDB aggregations

## Usage Examples

### SQL Queries
```sql
-- Get user workout history
CALL GetUserWorkoutHistory(1);

-- View total calories burned by user
SELECT u.name, SUM(wl.calories_burned) 
FROM WorkoutLogs wl 
JOIN Users u ON wl.user_id = u.user_id 
GROUP BY u.user_id;
```

### MongoDB Queries
```javascript
// Find all cardio workouts
db.getCollection("Workouts").find({ type: "Cardio" });

// Calculate average calories by workout type
db.getCollection("Workouts").aggregate([
    {
        $group: {
            _id: "$type",
            avgCalories: { $avg: "$calories" }
        }
    }
]);
```

## Technologies Used

- MySQL
- MongoDB
- SQL
- JavaScript