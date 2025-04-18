-- user_progress_report.sql

SELECT 
    u.name,
    COUNT(w.workout_id) AS total_workouts,
    SUM(w.calories_burned) AS total_calories
FROM users u
JOIN workouts w ON u.user_id = w.user_id
GROUP BY u.name;
