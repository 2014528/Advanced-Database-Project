// Insert a single workout
db.getCollection("Workouts").insertOne({
    name: "Morning Run",
    type: "Cardio",
    duration: 30,
    date: new Date(),
    calories: 300,
    notes: "Easy pace run"
});

// Insert multiple workouts
db.getCollection("Workouts").insertMany([
    {
        name: "Weight Training",
        type: "Strength",
        duration: 45,
        date: new Date(),
        exercises: ["Squats", "Deadlifts", "Bench Press"],
        calories: 400
    },
    {
        name: "Yoga",
        type: "Flexibility",
        duration: 60,
        date: new Date(),
        calories: 200
    }
]);