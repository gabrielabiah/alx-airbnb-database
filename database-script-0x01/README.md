# Database Schema – Airbnb Clone

This SQL script (`schema.sql`) defines the full relational schema for an Airbnb-like application.

## Tables Created

- users
- properties
- bookings
- payments
- reviews
- messages

## Features

- Uses UUIDs as primary keys
- Enforces relationships via foreign keys
- Applies appropriate constraints (e.g., ENUMs, CHECKs, NOT NULL)
- Indexes for optimized performance on frequent queries

## Usage

Run the script in your PostgreSQL or MySQL environment:

```bash
psql -f schema.sql
```
