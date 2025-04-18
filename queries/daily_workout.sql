-- daily_workout_summary.sql

SELECT 
    u.name,
    w.date,
    w.workout_type,
    w.duration_minutes,
    w.calories_burned
FROM users u
JOIN workouts w ON u.user_id = w.user_id
ORDER BY w.date DESC;
