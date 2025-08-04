# 🚖 UBER SUPPLY DEMAND GAP ANALYSIS

This project explores Uber ride data to understand ride demand, supply issues, peak hours, and trip performance using **Excel, SQL, and Python**

---

## 📊 Dashboard Overview

An interactive dashboard created in **Excel** shows patterns in ride requests, cancellations, and trip success across different times and pickup points.

---

<img width="1474" height="849" alt="Screenshot 2025-08-04 104249" src="https://github.com/user-attachments/assets/e09644a2-a284-4ca6-af9d-93693f9f4513" />


---


## 🔹 Key Features

✅ Total Requests: Completed, Cancelled, No Cars Available  
✅ Location Insights: City vs Airport  
✅ Time Trends: Hourly, Daily, and Period-based  
✅ Completion & Failure Analysis  
✅ Filters: Hour, Day, Pickup Point, Trip Status

---

## 📌 Dashboard Components

| Section              | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| KPI Cards            | Key metrics – total rides, completed trips, cancellation rate              |
| Time Trend Charts    | Ride requests and completion over hours and days                            |
| Status Breakdown     | % of completed, cancelled, and failed trips                                 |
| Pickup Point Insights| Compare City vs Airport demand and success                                  |
| Filters & Slicers    | Interactive selection by time, location, and status                         |

---

## 🧠 Key Insights

- Night and early morning see **high demand but low supply**, leading to many failed trips  
- **City pickups** slightly outnumber Airport ones and have higher success  
- Afternoon and late night have **low activity**, drivers can be better managed here  
- Most trips are **completed during morning and evening**, suggesting these are key time slots

<img width="1322" height="547" alt="Screenshot 2025-08-03 215737" src="https://github.com/user-attachments/assets/ebee1e6b-c439-4e77-b180-f4c01e01d2a8" />


---

## 📅 Time-Based Trends

- **High demand**: 5 AM–9 AM and 5 PM–9 PM  
- **Most cancellations and "No Cars Available"**: 12 AM–5 AM  
- **Low demand**: 12 PM–4 PM and after 10 PM

<img width="1478" height="541" alt="Screenshot 2025-08-03 215748" src="https://github.com/user-attachments/assets/5ddcba10-1c37-46cd-a26b-d172a5e703d5" />


---

## 🗺️ Pickup Point Trends

- **City**: More reliable service  
- **Airport**: Faces more cancellations and missed trips  
- Suggests need for better airport driver availability planning

<img width="471" height="501" alt="image" src="https://github.com/user-attachments/assets/a3e666cd-ab1c-4d17-b0ff-a451c94cd28c" />

<img width="1304" height="647" alt="Screenshot 2025-08-03 215758" src="https://github.com/user-attachments/assets/c430e8c0-c671-402c-acce-6c214d63e738" />

<img width="1796" height="584" alt="Screenshot 2025-08-03 215816" src="https://github.com/user-attachments/assets/0f4b66ea-f2f6-4d9f-a6a5-5fe6049a28d6" />

<img width="749" height="484" alt="Screenshot 2025-08-03 215831" src="https://github.com/user-attachments/assets/2b05b14a-5237-4b08-8439-e10517bbefb0" />


<img width="661" height="486" alt="Screenshot 2025-08-03 215839" src="https://github.com/user-attachments/assets/6ba723ba-adb7-452d-b85a-10a325240c1c" />


---


## 📁 Repository Files

| File Name                  | Description                                               |
|----------------------------|-----------------------------------------------------------|
| `Uber Request Data.csv`    | Raw Uber trip request data                                |
| `uber_query.sql`           | SQL queries for analysis and cleaning                     |
| `Uber.ipynb`               | Python notebook for EDA and visuals                       |
| `uber ppt.pdf`             | Final presentation file                                   |
| `clean_uber.xlsx`          | Excel file for pivot summaries and Dashboard              |
| `clean_uber.csv`           | clean uber raw data                                       |
| `README.md`                | Project summary and documentation                         |

---

## 🚀 Tools & Technologies

- **Excel** – Used for cleaning, sorting, and summarizing raw data  
- **SQL** – Used to filter, join, and analyze ride statuses and durations  
- **Python** – For data wrangling, time parsing, and visual plots  

---

## 📈 Metrics Tracked

- Total Requests  
- Trip Status (% Completed, Cancelled, No Cars)  
- Ride Requests by Hour, Day, Pickup Point  
- Trip Duration  
- Failure rate by Time Period

---

## 📌 Business Insights & Suggestions

### 🚗 Supply-Demand Mismatch
- Early mornings have high demand but few drivers  
  ➤ **Suggestion**: Offer driver bonuses for early shifts

### 🛫 Pickup Point Gap
- Airport has more failed trips  
  ➤ **Suggestion**: Station more drivers near airports during peak hours

### ⏱️ Efficient Hours
- Morning and evening have the most completed rides  
  ➤ **Suggestion**: Optimize pricing and driver distribution during these windows

---

## 🔮 Future Improvements

- Add weather, traffic, or pricing data for deeper analysis  
- Use forecasting tools for demand prediction  
- Include driver ratings and performance metrics  
- Create animated time-based visuals in Power BI

---

## 🙌 Author

**BIMAL KUMAR SAINI**  
Data Analyst Intern  
📧 bimalsaini333@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/bimalsaini333/) | [GitHub](https://github.com/SainiBimal)

![Visitor Count](https://komarev.com/ghpvc/?username=SainiBimal&style=flat-square)
