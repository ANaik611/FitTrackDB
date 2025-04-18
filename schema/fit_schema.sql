-- fittrack_schema.sql

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE goals (
    goal_id INT PRIMARY KEY,
    user_id INT,
    target_calories INT,
    target_workouts_per_week INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE workouts (
    workout_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    workout_type VARCHAR(50),
    duration_minutes INT,
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
