# Partitioning Report – Bookings Table

## Objective

Optimize the performance of queries on the large `bookings` table by implementing **range partitioning** based on the `start_date` column.

---

## 1. Strategy

We partitioned the `bookings` table by **year** using the `start_date` column:

- `bookings_2023`
- `bookings_2024`
- `bookings_2025`

Each partition was created using the `FOR VALUES FROM ... TO ...` clause.

---

## 2. Performance Test

### Query Tested:

```sql
SELECT *
FROM bookings
WHERE start_date BETWEEN '2024-05-01' AND '2024-07-01';
```
