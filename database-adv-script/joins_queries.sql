-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    bookings.booking_id,
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.property_id,
    properties.name AS property_name,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id
ORDER BY properties.property_id, reviews.review_id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: FULL OUTER JOIN is not supported in MySQL. Use UNION of LEFT and RIGHT JOINs as a workaround.
SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.first_name,
    users.last_name,
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
RIGHT JOIN bookings ON users.user_id = bookings.user_id;
