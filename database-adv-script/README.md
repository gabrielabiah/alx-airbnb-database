# Airbnb Advanced SQL Joins

This module focuses on practicing different types of SQL joins using the Airbnb database schema.

## Objectives

- Understand how INNER JOIN, LEFT JOIN, and FULL OUTER JOIN work in real-world database queries.
- Retrieve combined data across multiple tables with relational context.
- Handle NULLs and non-matching records appropriately using outer joins.

## Queries Included

1. **INNER JOIN**  
   Joins the `bookings` and `users` tables to retrieve detailed booking information along with the user who made it.

2. **LEFT JOIN**  
   Joins the `properties` and `reviews` tables, ensuring all properties are returned, even those without any reviews.

3. **FULL OUTER JOIN** (Simulated)  
   Retrieves all users and all bookings, regardless of whether they are matched together. This is done using a combination of `LEFT JOIN` and `RIGHT JOIN` with `UNION` in MySQL.

## Note

- MySQL does not support FULL OUTER JOIN directly, so it has been simulated using `UNION`.

# Subqueries in SQL – Airbnb Database

This task demonstrates the use of correlated and non-correlated subqueries in SQL using the Airbnb schema.

## Queries Included

### 1. Non-Correlated Subquery

**Objective:**  
Find all properties where the average rating is greater than 4.0.

**Approach:**  
A non-correlated subquery is used in the `WHERE` clause to filter `property_id`s with an average rating greater than 4.0.

### 2. Correlated Subquery

**Objective:**  
Identify users who have made more than 3 bookings.

**Approach:**  
A correlated subquery compares each user's `user_id` to their count of bookings in the `bookings` table.

---

Both queries simulate real-world insights from the Airbnb dataset and support performance-oriented query writing.
