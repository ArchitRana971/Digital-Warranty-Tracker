# Digital Warranty & Purchase Tracker (DWPT)

## Project Overview
Digital Warranty & Purchase Tracker is an SQL-based DBMS project that stores product purchase details, warranty information, and service history. It helps users keep track of their purchases and identify active, expired, and soon-to-expire warranties.

## Objectives
- Store user, product, category, and purchase details.
- Maintain warranty duration and expiry dates.
- Record repair and service history.
- Retrieve information using SQL queries.
- Demonstrate database relationships and common DBMS concepts.

## Technologies
- MySQL
- MySQL Workbench
- SQL

## Database Tables
1. **Users** – stores user details.
2. **Categories** – stores product categories.
3. **Products** – stores product names, brands, and categories.
4. **Purchases** – stores who purchased a product, purchase date, and price.
5. **Warranty** – stores warranty duration and expiry date for each purchase.
6. **Service_Records** – stores repair and service history.

## Relationships
- One user can make many purchases.
- One category can contain many products.
- One product can be linked to many purchase records.
- One purchase can have one warranty record.
- One purchase can have multiple service records.

## How to Run
1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench and connect to your local MySQL server.
3. Run the files in the `database` folder in this order:
   - `01_create_database.sql`
   - `02_create_tables.sql`
   - `03_insert_sample_data.sql`
   - `04_basic_queries.sql`
   - `05_joins.sql`
   - `06_subqueries_and_views.sql`
4. Execute the queries and review the result grids.

## SQL Concepts Demonstrated
- CREATE DATABASE and CREATE TABLE
- Primary keys and foreign keys
- AUTO_INCREMENT
- NOT NULL, UNIQUE, DEFAULT and CHECK constraints
- INSERT, SELECT and WHERE
- Aggregate functions: SUM, AVG and COUNT
- Joins
- Subqueries
- Views
- Date functions

## Project Limitations
- This is an SQL-only academic project; it does not include a website or graphical user interface.
- Sample data is included for demonstration.
- Warranty status is determined using the stored expiry date.

## Future Scope
- Add a user interface.
- Add automatic warranty reminders.
- Store invoice or bill references.
- Add more detailed service-centre information.

## Author
Archit Rana
