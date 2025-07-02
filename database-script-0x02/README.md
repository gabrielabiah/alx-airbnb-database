# Airbnb Database Seeding – Sample Data

This script inserts sample data into the Airbnb database schema defined in `schema.sql`.

## Entities Seeded

- Users
- Properties
- Bookings
- Payments
- Reviews
- Messages

## Instructions

```bash
psql -f ../database-script-0x01/schema.sql

psql -f seed.sql
```
