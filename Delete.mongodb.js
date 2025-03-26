// Delete one document
db.getCollection("Workouts").deleteOne(
    { name: "Morning Run" }
);

// Delete multiple documents
db.getCollection("Workouts").deleteMany(
    { type: "Cardio" }
);

// Delete all documents
db.getCollection("Workouts").deleteMany({});
