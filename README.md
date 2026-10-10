# E-Commerce Retail Sales & Customer Analytics Masterclass

## 📌 Project Overview
This repository features a comprehensive, production-grade retail data engineering and analysis framework. It contains 20 highly optimized SQL queries designed to solve real-world corporate challenges such as rolling average velocity, customer retention cohort tracking, market share percentages, and anti-fraud schema audits.

The queries demonstrate advanced problem-solving capabilities across large relational database structures.

## 🛠️ Tech Stack & Advanced SQL Highlights
* **Core Framework**: MySQL Engine
* **Advanced Commands Demonstrated**:
  * Multi-Column Aggregate Joins (`INNER JOIN`, `LEFT JOIN`)
  * Chronological Window Tracking (`LAG()`, `LEAD() OVER (...)`)
  * Running Totals & Dynamic Ranks (`SUM() OVER()`, `DENSE_RANK()`)
  * Cohort Event Triggers (`DATEDIFF()`, `WEEKDAY()`)
  * String Multi-Category Aggregations (`GROUP_CONCAT(DISTINCT ... SEPARATOR)`)
  * Subqueries & Inline Aggregate Ceilings (`HAVING SUM(x) > ...`)

---

## 📊 Database Architecture Design
The layout maps transactional entries across three relational tables:
1. **`retail_products`**: Core inventory catalog containing item names, prices, categories, and physical stock limits.
2. **`retail_customers`**: Master client log storing client names, nationalities, email logs, and account creation dates.
3. **`retail_sales`**: Transaction ledger logging quantities, purchase timestamps, client IDs, and gross bills.

---

## 🔍 Core Business Insights Addressed (20-Query Matrix)

### 📈 1. Advanced Window & Trend Analytics
* **Month-over-Month Revenue Growth**: Uses Common Table Expressions (CTEs) paired with sequential window functions (`LAG()`) to compute exact financial progression shifts.
* **Chronological Revenue Accumulation**: Implements running totals sorted over time scales to provide live financial building grids.
* **Second-Highest Transaction Isolation**: Combines window density functions (`DENSE_RANK()`) to catch outlier premium spending spikes.

### 🚚 2. Supply Chain & Inventory Optimization
* **Low Stock Category Triggers**: Pinpoints high-risk stock outs in key appliance categories where inventory limits drop beneath 40 units.
* **Dead Stock Liquidation Audit**: Leverages strict non-matching joins (`LEFT JOIN WHERE IS NULL`) to filter out completely unsold inventory logs.
* **High-Velocity Restocking Warnings**: Isolates items whose recent sales volumes have drained over 80% of their physical warehouse limits.

### 🌍 3. International Market Share & Geopolitical Trends
* **Cross-Border Revenue Ratios**: Utilizes global partition arrays (`SUM/SUM OVER()`) to compute exact national contribution metrics.
* **Geopolitical Category Breakdown**: Evaluates segmented category popularity percentages nested within sovereign territory borders.
* **Sovereign High-Roller Tracking**: Applies partitioned ranking boundaries to extract the absolute highest-spending consumer inside each unique country.

### 🕵️‍♂️ 4. Security, Data Integrity & System Audits
* **Price Drop Inconsistency Alerts**: Identifies configuration glitches where products were mistakenly checked out beneath their catalog master prices.
* **Orphan Record Data Isolation**: Scans the ledger for missing keys or fraudulent account codes bypassing referential integrity rules.
* **Duplicate Identity Checks**: Aggregates registration logs to clear out duplicate communication rows.

### 👥 5. Customer Behavior & Cohort Segmentation
* **Conversion Velocity Timelines**: Measures the speed of customer conversion by tracking the gap between their initial account join date and their very first invoice swipe (`DATEDIFF`).
* **Shopping Preferences Mapping**: Groups massive distinct product names into a single row (`GROUP_CONCAT`) to generate quick promotional cash-back customer preference lookup sheets.
* **Multi-Tier Buyer Segmentations**: Employs aggregate switch parameters (`CASE WHEN`) to split the user base into distinct operational brackets ('One-time Buyer', 'Frequent Buyer', 'VIP Spender').

---

## 🚀 Execution Instructions
1. Initialize the physical layout by running the schema pipelines inside `schema.sql`.
2. Populate the mockup records to generate overlapping analytical matrices.
3. Open `queries.sql` to deploy the master queries and view immediate retail intelligence grids.
