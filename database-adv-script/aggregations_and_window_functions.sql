-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id
ORDER BY 
    total_bookings DESC;

-- 2. Window Function: Rank properties based on total number of bookings using ROW_NUMBER()
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS property_booking_counts
ORDER BY 
    booking_rank;
