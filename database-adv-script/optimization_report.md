# Optimization Report – Airbnb Complex Query

## Objective

To optimize a query that retrieves all booking records along with user, property, and payment details.

---

## 1. Initial Query Analysis

**Query Summary:**  
The original query joins `bookings`, `users`, `properties`, and `payments` to fetch comprehensive details.

**Performance Check:**

```sql
EXPLAIN ANALYZE SELECT ...
-- (full query listed in perfomance.sql)
```
