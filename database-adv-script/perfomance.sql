-- Initial Query (Unoptimized)
-- Retrieves bookings with user, property, and payment details
-- Includes WHERE and AND clauses for filtering by date and status
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed'
  AND b.start_date >= '2024-01-01';

-- Optimized Query (Refactored)
-- Targets specific columns only and uses same WHERE filtering
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed'
  AND b.start_date >= '2024-01-01';
