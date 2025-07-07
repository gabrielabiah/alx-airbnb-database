-- Before adding index on users.email
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'guest@example.com';

-- Create index on users.email
CREATE INDEX idx_users_email ON users(email);

-- After adding index on users.email
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'guest@example.com';


-- Before adding index on bookings.user_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'uuid-user-1';

-- Create index on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- After adding index on bookings.user_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'uuid-user-1';


-- Before adding index on properties.location
EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'Accra';

-- Create index on properties.location
CREATE INDEX idx_properties_location ON properties(location);

-- After adding index on properties.location
EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'Accra';
