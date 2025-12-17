# IT-asset-management-database
SQL-based inventory tracking system for corporate IT assets.

## 🎯 Objective
To develop a relational database system capable of tracking corporate IT assets and employee assignments across multiple physical locations. The goal was to replace manual tracking methods with a structured SQL database to automate reporting on hardware lifecycles and inventory shortages.

## 🛠 Skills Applied
- **Database Development:** Designed a normalized schema for `Employees` and `Inventory` tables.
- **SQL Scripting:** Wrote `INSERT` statements to populate test data for multi-site environments (HQ, Ohio, Texas).
- **Reporting & Analytics:** Developed custom `SELECT` queries to filter data for "Low Stock" alerts and asset location auditing.
- **System Administration:** Deployed and secured MariaDB on a Rocky Linux 9 server running in a Proxmox virtualized environment.

## 💻 Technologies
- **Engine:** MariaDB (MySQL compatible)
- **OS:** Rocky Linux 9 (Virtual Machine)
- **Hypervisor:** Proxmox VE
- **Language:** SQL (Structured Query Language)

## 📝 Steps Performed

### 1. Database Deployment & Schema Design
- Provisioned a Rocky Linux 9 VM within Proxmox VE.
- Installed MariaDB Server via `dnf` and secured the root account.
- Designed table structures to track enterprise assets including Laptops, RF Scanners, and Printers.

![Database Schema](https://github.com/hunterraustin/IT-asset-management-database/blob/main/schema.png)

### 2. Data Ingestion (Personnel & Hardware)
- Populated the database with simulated data representing staff across key operational hubs.
- Logged hardware inventory counts to establish a baseline for asset tracking.

### 3. Reporting & Operational Analytics
- **Procurement Report:** Created a query to automatically flag items with `StockCount < 5`, enabling proactive hardware ordering.
- **Asset Audit:** Generated reports showing all IT equipment assigned to specific warehouse locations.

![Reporting Output](https://github.com/hunterraustin/IT-asset-management-database/blob/main/reporting_query.png)

## 📂 Project Files
- [asset_schema.sq](asset_schema.sql)`: Contains the full SQL script used to build the database and insert sample data.

## 📚 References & Resources
Project configuration was guided by standard documentation and the following resources:
- **Database Installation:** [How to install MariaDB on Linux](https://www.youtube.com/watch?v=XytAiTsts4k)
- **SQL Query Fundamentals:** [SQL Basics: SELECT, INSERT, DELETE](https://www.youtube.com/watch?v=ou5txB0uwP0)
