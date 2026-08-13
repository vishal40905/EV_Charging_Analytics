
-- ============================================================
-- EV Charging Operations & Revenue Analytics
-- SQL Analysis
-- ============================================================

-- 1. Total number of charging sessions
SELECT
    COUNT(*) AS total_sessions
FROM charging_sessions;


-- 2. Total energy delivered and average energy per session
SELECT
    SUM(energy_wh) AS total_energy_wh,
    AVG(energy_wh) AS avg_energy_wh
FROM charging_sessions;


-- 3. Charging session duration statistics
SELECT
    AVG(stay_min) AS avg_stay_min,
    MIN(stay_min) AS min_stay_min,
    MAX(stay_min) AS max_stay_min
FROM charging_sessions;


-- 4. Charging demand by hour
SELECT
    hour,
    COUNT(*) AS sessions
FROM charging_sessions
GROUP BY hour
ORDER BY sessions DESC;


-- 5. Charging sessions by day type
SELECT
    day_type,
    COUNT(*) AS sessions
FROM charging_sessions
GROUP BY day_type
ORDER BY sessions DESC;


-- 6. Energy delivered by day type
SELECT
    day_type,
    COUNT(*) AS sessions,
    SUM(energy_wh) / 1000.0 AS total_energy_kwh,
    AVG(energy_wh) / 1000.0 AS avg_energy_kwh
FROM charging_sessions
GROUP BY day_type
ORDER BY total_energy_kwh DESC;


-- 7. Connector utilization
SELECT
    CCS,
    COUNT(*) AS sessions,
    SUM(energy_wh) / 1000.0 AS total_energy_kwh,
    AVG(energy_wh) / 1000.0 AS avg_energy_kwh
FROM charging_sessions
GROUP BY CCS
ORDER BY sessions DESC;


-- 8. Monthly charging activity
SELECT
    month,
    COUNT(*) AS sessions
FROM charging_sessions
GROUP BY month
ORDER BY month;
