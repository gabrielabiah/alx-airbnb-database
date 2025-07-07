-- Indexes to optimize joins, filtering, and ordering performance

-- 1. User Table
-- Optimize lookup and authentication by indexing email
CREATE INDEX idx_users_email ON users(email);

-- 2. Booking Table
-- Optimize user-booking joins and filtering by user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Optimize filtering by property_id (e.g., finding bookings for a property)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Optimize sorting/filtering by start_date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- 3. Property Table
-- Optimize filtering and ordering by location
CREATE INDEX idx_properties_location ON properties(location);

-- Optimize price sorting
CREATE INDEX idx_properties_price ON properties(pricepernight);
