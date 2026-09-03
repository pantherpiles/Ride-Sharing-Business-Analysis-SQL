-- ============================================
-- RIDE-SHARING BUSINESS DATA ANALYSIS
-- ============================================


-- 1. Overall Business Performance

SELECT 
    COUNT(*) AS total_completed_rides,
    SUM(fare) AS total_revenue,
    ROUND(AVG(fare), 2) AS average_fare
FROM rides
WHERE status = 'Completed';


-- 2. Revenue Analysis by City

SELECT 
    pickup_city,
    COUNT(*) AS completed_rides,
    SUM(fare) AS total_revenue
FROM rides
WHERE status = 'Completed'
GROUP BY pickup_city
ORDER BY total_revenue DESC;


-- 3. Average Fare by City

SELECT
    pickup_city,
    ROUND(AVG(fare), 2) AS average_fare
FROM rides
WHERE status = 'Completed'
GROUP BY pickup_city
ORDER BY average_fare DESC;


-- 4. Cancellation Analysis

SELECT
    status,
    COUNT(*) AS total_rides
FROM rides
GROUP BY status;


-- 5. Cancellation Rate

SELECT
    COUNT(*) AS total_rides,
    SUM(
        CASE
            WHEN status = 'Cancelled' THEN 1
            ELSE 0
        END
    ) AS cancelled_rides,
    ROUND(
        SUM(
            CASE
                WHEN status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate_percentage
FROM rides;


-- 6. Customer Spending Analysis

SELECT
    c.customer_name,
    COUNT(r.ride_id) AS total_rides,
    SUM(r.fare) AS total_spent
FROM customers AS c
JOIN rides AS r
    ON c.customer_id = r.customer_id
WHERE r.status = 'Completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;


-- 7. Driver Performance Analysis

SELECT
    d.driver_name,
    COUNT(r.ride_id) AS completed_rides,
    SUM(r.fare) AS total_revenue,
    ROUND(AVG(r.fare), 2) AS average_fare
FROM drivers AS d
JOIN rides AS r
    ON d.driver_id = r.driver_id
WHERE r.status = 'Completed'
GROUP BY d.driver_id, d.driver_name
ORDER BY total_revenue DESC;


-- 8. Most Active Customers

SELECT
    c.customer_name,
    COUNT(r.ride_id) AS completed_rides
FROM customers AS c
JOIN rides AS r
    ON c.customer_id = r.customer_id
WHERE r.status = 'Completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY completed_rides DESC;


-- 9. Monthly Business Performance

SELECT
    strftime('%Y-%m', ride_date) AS month,
    COUNT(*) AS completed_rides,
    SUM(fare) AS total_revenue
FROM rides
WHERE status = 'Completed'
GROUP BY strftime('%Y-%m', ride_date)
ORDER BY month;
