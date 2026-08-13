
# EV Charging Operations & Revenue Analytics

## Project Overview

This project analyzes EV charging session data to understand charging demand, energy delivery, session duration, connector usage, and operational patterns.

The analysis uses a real EV charging session dataset containing 1,878 charging sessions recorded between April 2022 and July 2023.

The goal is to transform raw charging-session data into practical operational insights using Python, Pandas, NumPy, Matplotlib, and SQL.

---

## Business Questions

The analysis focuses on the following questions:

1. How many charging sessions were recorded?
2. How much energy was delivered?
3. When is charging demand highest?
4. How does charging activity vary over time?
5. Are weekdays busier than weekends?
6. How much energy is delivered per session?
7. How long do charging sessions typically last?
8. Which charging connector is used most frequently?
9. What operational patterns can support charger planning?

---

## Dataset

The dataset contains 1,878 charging sessions and 14 original columns, including:

- Session
- CCS
- Arrival
- Departure
- Stay (min)
- Energy (Wh)
- Pmax (W)
- Preq_max (W)
- Controlled session
- TotalCapacity
- BulkCapacity
- SOC arrival
- SOC departure
- Energy capacity (Wh)

### Data Quality

- Rows: 1,878
- Columns: 14
- Missing values: 0
- Duplicate rows: 0
- First recorded session: April 12, 2022
- Last recorded session: July 4, 2023

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- SQL
- SQLite
- Google Colab
- Excel

---

## Data Preparation

The analysis included:

- Data quality checks
- Duplicate detection
- Missing-value validation
- Datetime feature extraction
- Hour extraction
- Month extraction
- Weekday/weekend classification
- Session-duration categorization
- Energy unit conversion from Wh to kWh

---

## SQL Analysis

The dataset was loaded into a SQLite database and analyzed using SQL.

Key SQL operations included:

- COUNT
- SUM
- AVG
- MIN
- MAX
- GROUP BY
- ORDER BY

The SQL queries are available in:

`sql/analysis.sql`

---

## Key KPIs

| KPI | Result |
|---|---:|
| Total charging sessions | 1,878 |
| Total energy delivered | 60,441.94 kWh |
| Average energy per session | 32.18 kWh |
| Average session duration | 32.92 minutes |
| Peak charging hour | 18:00 |
| Sessions at peak hour | 156 |
| Weekday sessions | 1,384 |
| Weekend sessions | 494 |
| Most-used connector | CCS1 |
| CCS1 sessions | 1,129 |
| Average maximum charging power | 102.49 kW |

---

## Key Insights

### 1. Peak Charging Demand

18:00 was the busiest recorded charging hour with 156 sessions. Charging activity remained relatively strong throughout the afternoon and early evening.

### 2. Weekday-Heavy Charging Activity

73.7% of recorded sessions occurred on weekdays, compared with 26.3% on weekends.

### 3. Energy Throughput

The dataset contains approximately 60,441.94 kWh of delivered energy across 1,878 charging sessions.

The average session delivered approximately 32.18 kWh.

### 4. Session Duration

The average session duration was approximately 32.92 minutes.

Medium-duration sessions were the largest derived category, with 869 sessions representing approximately 46.3% of all sessions.

### 5. Connector Usage

CCS1 accounted for 1,129 sessions, or approximately 60.1% of all recorded sessions.

Average energy per session was similar between CCS1 and CCS2.

### 6. Energy Distribution

Most sessions delivered moderate amounts of energy, while a smaller number of high-energy sessions created a long right tail in the distribution.

---

## Visualizations

The project includes the following visualizations:

- Charging Sessions by Hour
- Monthly Charging Sessions
- Weekday vs Weekend Sessions
- Energy Delivered Distribution
- Session Duration Distribution
- Average Energy per Session by Day Type

Visualizations are stored in the `visualizations/` directory.

---

## Project Structure

```text
EV_Charging_Analytics/
│
├── data/
│   └── Session_data.xlsx
│
├── notebooks/
│   └── ev_charging_analysis.ipynb
│
├── sql/
│   └── analysis.sql
│
├── visualizations/
│   ├── sessions_by_hour.png
│   ├── monthly_sessions.png
│   ├── weekday_vs_weekend.png
│   ├── energy_distribution.png
│   ├── session_duration_distribution.png
│   └── avg_energy_day_type.png
│
└── README.md
