-- calories_vs_goals.sql

SELECT 
    u.name,
    g.target_calories,
    SUM(w.calories_burned) AS actual_calories
FROM users u
JOIN goals g ON u.user_id = g.user_id
JOIN workouts w ON u.user_id = w.user_id
GROUP BY u.name, g.target_calories;
