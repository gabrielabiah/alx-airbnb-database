# Database Normalization – Airbnb Project

## Objective

To apply normalization principles to ensure the Airbnb database is in **Third Normal Form (3NF)** by identifying and resolving redundancy and dependency issues.

---

## First Normal Form (1NF)

### Criteria:
- Each column must have atomic (indivisible) values.
- Each record must be unique.

### Evaluation:
- All tables contain atomic values (e.g., no lists in a single column).
- Primary keys ensure row uniqueness.
  
✅ **All tables satisfy 1NF.**

---

## Second Normal Form (2NF)

### Criteria:
- Must be in 1NF.
- All non-key attributes are fully functionally dependent on the entire primary key.

### Evaluation:
- All tables use **single-column primary keys (UUIDs)**.
- No composite primary keys exist.
- All attributes depend entirely on the PK.

✅ **All tables satisfy 2NF.**

---

## Third Normal Form (3NF)

### Criteria:
- Must be in 2NF.
- No transitive dependencies (non-key attributes should not depend on other non-key attributes).

### Evaluation:

- **User Table**:
  - Attributes like `role`, `email`, and `phone_number` depend only on `user_id`.

- **Property Table**:
  - All attributes depend directly on `property_id`. `host_id` is a foreign key and not a transitive dependency.

- **Booking Table**:
  - Attributes like `start_date`, `total_price`, and `status` depend on `booking_id`.

- **Payment Table**:
  - Each field relates directly to `payment_id`. No derived data (e.g., amount not calculated in-table).

- **Review Table**:
  - No redundant values; ratings and comments are tied to user/property via `review_id`.

- **Message Table**:
  - `sender_id`, `recipient_id`, and `message_body` are all dependent on `message_id`.

✅ **No transitive dependencies found. All tables satisfy 3NF.**

---

## Conclusion

The current database design satisfies all conditions for **Third Normal Form (3NF)**. All entities have:
- Atomic attributes (1NF)
- No partial dependencies (2NF)
- No transitive dependencies (3NF)

Therefore, **no additional normalization changes are needed**.
