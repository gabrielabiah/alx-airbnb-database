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
