// Find all workouts
db.getCollection("Workouts").find({});

// Find workouts by type
db.getCollection("Workouts").find({ type: "Cardio" });

// Find workouts with duration greater than 30 minutes
db.getCollection("Workouts").find({ duration: { $gt: 30 } });

// Find and sort workouts by date
db.getCollection("Workouts").find({}).sort({ date: -1 });

// Find workouts with specific fields
db.getCollection("Workouts").find({}, { name: 1, duration: 1, calories: 1 });


// Aggregate: Calculate average calories by workout type
db.getCollection("Workouts").aggregate([
    {
        $group: {
            _id: "$type",
            avgCalories: { $avg: "$calories" }
        }
    }
]);