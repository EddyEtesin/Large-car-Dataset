# Large Cars Dataset SQL Analysis

This project demonstrates structured SQL analysis using a dataset of large cars, focusing on pricing, performance, and regional trends. All analysis is performed using standard SQL queries (MySQL syntax) on a relational table structure.

---

## Dataset Overview

The dataset, named `large cars dataset`, contains detailed specifications of various car models, including:

* Brand and Model
* Engine Size, Cylinders, Horsepower
* Weight, DriveTrain, Vehicle Class
* MSRP and Dealer Cost
* Fuel Economy (MPG in City and Highway)
* Region of Manufacture

---

## Objectives

* Analyze pricing trends by brand, region, and drivetrain.
* Compare engine performance across models and brands.
* Explore fuel efficiency across vehicle classes and regions.
* Identify characteristics of high-end and performance vehicles.
* Use SQL to derive insights from complex business questions.

---

## Key Analyses Performed

### Descriptive Queries

* List of all distinct brands.
* Retrieval of sedans manufactured in the Asia region.
* Identification of rear-wheel-drive models.
* Filtering based on weight, engine specs, or MPG ranges.

### Pricing and Cost Analysis

* Top 10 vehicles by MSRP.
* Brands with the highest average dealer cost.
* Vehicles with the highest MSRP-to-dealer cost markup.
* MSRP distributions by drivetrain.

### Performance and Technical Analysis

* Cars with more than 6 cylinders and horsepower over 300.
* Power-to-weight ratio rankings per model.
* Heaviest brands by average vehicle weight.

### Fuel Efficiency and Regional Comparison

* Highest combined MPG models.
* Average MPG comparison across regions.
* Vehicle class ranking by fuel efficiency and weight.

### Statistical Insight

* Correlation calculation between engine size and MSRP using SQL.

---

## SQL Features Used

* Filtering: `WHERE`, `BETWEEN`, conditional logic
* Aggregation: `GROUP BY`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`
* Ordering and ranking: `ORDER BY`, `LIMIT`
* Subqueries and Common Table Expressions (CTEs)
* Mathematical operations and transformations: `REPLACE()`, `CAST()`, `ABS()`
* Basic statistical calculations implemented directly in SQL

---

## Files Included

| File Name                       | Description                                 |
| ------------------------------- | ------------------------------------------- |
| `large car dataset queried.sql` | SQL file containing all queries used        |
| `large cars dataset`            | Raw dataset loaded into the SQL environment |

---

## Requirements

* MySQL or compatible SQL engine
* A SQL editor or environment (e.g., MySQL Workbench, DBeaver, or Jupyter Notebook with SQL magic)
* Access to the loaded `large cars dataset` table

---

## Summary

This SQL analysis project demonstrates the use of structured queries to uncover insights from a vehicle dataset. It covers performance metrics, pricing, fuel economy, and brand comparisons, providing a strong foundation for automotive business intelligence tasks.


