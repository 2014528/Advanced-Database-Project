// Update one document
db.getCollection("Workouts").updateOne(
    { name: "Morning Run" },
    { $set: { duration: 35, calories: 350 } }
);

// Update multiple documents
db.getCollection("Workouts").updateMany(
    { type: "Cardio" },
    { $inc: { calories: 50 } }
);
