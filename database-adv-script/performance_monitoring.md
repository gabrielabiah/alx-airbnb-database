# Database Performance Monitoring Report

## Objective

Monitor and refine database performance by analyzing query execution plans and implementing optimizations.

---

## 1. Query Monitoring: Booking Data with User & Property Details

### Query:

```sql
EXPLAIN ANALYZE
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.status = 'confirmed'
  AND b.start_date >= '2024-01-01';
```
