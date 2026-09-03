# 🚖 Ride-Sharing Business Analysis using SQL

## 📌 Project Overview

This project analyzes a ride-sharing business dataset using SQL to extract meaningful business insights related to revenue, customer behavior, driver performance, cancellations, and monthly business trends.

The project uses a self-created practice dataset consisting of customers, drivers, and ride transactions.

---

## 🎯 Project Objectives

The main objectives of this project were to:

- Analyze overall business performance
- Identify revenue generated across different cities
- Compare average ride fares by city
- Calculate ride cancellation rates
- Identify high-value and active customers
- Analyze driver performance and revenue generation
- Study monthly revenue and completed ride trends

---

## 🗂️ Database Structure

The project consists of three tables:

### 👤 Customers

Contains customer-related information such as:

- Customer ID
- Customer Name
- City
- Signup Date

### 🚗 Drivers

Contains driver-related information such as:

- Driver ID
- Driver Name
- City
- Driver Rating

### 🚖 Rides

Contains ride transaction information such as:

- Ride ID
- Customer ID
- Driver ID
- Ride Date
- Pickup City
- Fare
- Ride Status

---

## 🛠️ SQL Skills Used

The following SQL concepts were used in this project:

- SELECT
- FROM
- WHERE
- COUNT()
- SUM()
- AVG()
- ROUND()
- GROUP BY
- ORDER BY
- JOIN
- CASE WHEN
- CREATE TABLE
- INSERT INTO

---

## 📊 Business Analysis Performed

### 1. Overall Business Performance

Analyzed:

- Total completed rides
- Total revenue
- Average ride fare

### 2. Revenue Analysis by City

Compared completed rides and revenue generated across different cities.

### 3. Average Fare Analysis

Calculated the average fare for each city.

### 4. Cancellation Analysis

Analyzed the number of completed and cancelled rides.

### 5. Cancellation Rate

Calculated the overall ride cancellation percentage.

### 6. Customer Spending Analysis

Identified customers based on:

- Number of completed rides
- Total amount spent

### 7. Driver Performance Analysis

Evaluated drivers based on:

- Completed rides
- Total revenue generated
- Average fare

### 8. Most Active Customers

Identified customers with the highest number of completed rides.

### 9. Monthly Business Performance

Analyzed monthly trends based on:

- Completed rides
- Revenue generated

---

## 🔍 Key Insights

- The dataset contained **20 total rides**, including **17 completed rides** and **3 cancelled rides**.
- The overall cancellation rate was **15%**.
- **Mumbai generated the highest total revenue** among the analyzed cities.
- **Rohan Gupta was the highest-value customer**, with total spending of **₹1,190**.
- **Aarav Sharma and Rohan Gupta were the most active customers**, with **3 completed rides each**.
- **Amit Shah generated the highest driver revenue**, despite Rahul Kumar completing more rides.
- **March generated the highest monthly revenue** among the months analyzed.

---

## 📁 Project Files

- `01_database_setup.sql` - Database tables and sample dataset
- `02_business_analysis.sql` - SQL queries for business analysis
- `README.md` - Project documentation

---

## 💻 Tools Used

- SQL
- SQLite
- GitHub

---

## 👩‍💻 Author
**Janvi**

Aspiring Data / Business Analyst

**Janvi**

Aspiring Data / Business Analyst
