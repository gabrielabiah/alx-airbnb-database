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

-- 2. Window Function using ROW_NUMBER(): Rank properties based on total bookings
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS ranked_properties_row;

-- 3. Window Function using RANK(): Rank properties based on total bookings
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_position
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS ranked_properties_rank;
