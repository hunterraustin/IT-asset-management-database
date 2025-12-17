# IT-asset-management-database
SQL-based inventory tracking system for corporate IT assets.

## 🎯 Objective
To develop a relational database system capable of tracking corporate IT assets and employee assignments. The goal was to replace manual spreadsheet tracking with a structured SQL database to automate reporting on hardware lifecycles and inventory levels.

## 🛠 Skills Applied
- **Database Development:** Designed a normalized schema for `Employees` and `Inventory`.
- **SQL Scripting:** Wrote `INSERT` statements to populate test data for multi-site corporate environments.
- **Reporting & Analytics:** Developed custom `SELECT` queries to filter data for "Low Stock" alerts and asset location auditing.
- **System Administration:** Deployed and secured MariaDB on a Rocky Linux 9 server.

## 💻 Technologies
- **Engine:** MariaDB (MySQL compatible)
- **OS:** Rocky Linux 9
- **Language:** SQL (Structured Query Language)

## 📝 Steps Performed

### 1. Database Deployment & Schema Design
- Installed MariaDB Server on Linux.
- Designed table structures to track enterprise assets including Laptops, Peripherals, and Network Gear.
- Enforced data types (`INT`, `VARCHAR`) to ensure data integrity.

![Database Schema](INSERT_IMAGE_LINK_HERE)

### 2. Data Ingestion (Personnel & Hardware)
- Populated the database with simulated data representing staff across multiple office locations (Remote, HQ, Satellite Offices).
- Logged hardware inventory counts to establish a baseline for asset tracking.

### 3. Reporting & Operational Analytics
- **Procurement Report:** Created a query to automatically flag items with `StockCount < 5`, enabling proactive hardware ordering.
- **Asset Audit:** Generated reports showing all IT equipment assigned to specific departments or locations.

![Reporting Output](INSERT_IMAGE_LINK_HERE)

## 📂 Project Files
- `asset_schema.sql`: Contains the full SQL script used to build the database and insert sample data.

## 📚 References & Resources
Project configuration was guided by standard documentation and the following resources:
- **Database Installation:** [How to install MariaDB on Linux](https://www.youtube.com/watch?v=XytAiTsts4k)
- **SQL Query Fundamentals:** [SQL Basics: SELECT, INSERT, DELETE](https://www.youtube.com/watch?v=ou5txB0uwP0)
