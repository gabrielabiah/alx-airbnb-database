-- Step 1: Drop the original table if exists (for demonstration)
DROP TABLE IF EXISTS bookings CASCADE;

-- Step 2: Create partitioned table definition
CREATE TABLE bookings (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions for each quarter of 2024
CREATE TABLE bookings_2024_q1 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE bookings_2024_q2 PARTITION OF bookings
    FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE bookings_2024_q3 PARTITION OF bookings
    FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE bookings_2024_q4 PARTITION OF bookings
    FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

-- Step 4: Test query on partitioned table
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-30';
