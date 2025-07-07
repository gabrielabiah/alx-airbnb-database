# 📈 Index Performance Analysis – Airbnb Database

This document evaluates how indexes improve SQL query performance using the `EXPLAIN` statement before and after applying indexes.

---

## 🧩 Indexes Implemented

### 🔹 On `users` table:

```sql
CREATE INDEX idx_users_email ON users(email);
```
