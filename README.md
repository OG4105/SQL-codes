# SQL Practice — ISTE-330
 
MySQL queries and scripts written while studying for the ISTE-330 Database Connectivity and Access course at RIT Croatia.
 
## What's here
 
| File | Purpose |
|------|---------|
| `gradascevic_midterm_practice_practical.sql` | Midterm preparation — covers connection patterns, metadata APIs, and core MySQL queries |
| `mysql-p1.sql` | Practice set 1 — basic SELECT, JOIN, WHERE, GROUP BY |
| `mysql-p2.sql` | Practice set 2 — stored procedures, authentication, role-based access control |
 
## Topics covered
 
- Basic and advanced SELECT statements
- JOIN operations (INNER, LEFT, RIGHT)
- Stored procedures with `DELIMITER //`
- User authentication and login/lockout logic
- Role-based CRUD methods
- Metadata APIs
## How to run
 
Requires MySQL Server 8.0+ and MySQL Workbench (or any MySQL client).
 
```bash
mysql -u <your_username> -p < mysql-p1.sql
```
 
Or open the `.sql` file in MySQL Workbench and execute.
