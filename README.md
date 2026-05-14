# 🏀 Euroleague 2025-26 Data Analysis

A end-to-end data analysis project covering the 2025-26 Euroleague season, built to practice and demonstrate core data analyst skills: **SQL**, **Python**, and **Power BI**.

---

## 📌 Project Overview

This project answers 8 analytical questions about the 2025-26 Euroleague season using real statistics sourced from [basketball-reference.com](https://www.basketball-reference.com).

### Questions Answered
1. Which teams have the best offense and defense?
2. Is there a relationship between 3-point shooting and wins?
3. How can we group teams based on their playing style? *(K-Means Clustering)*
4. Which players are the most efficient? *(PIR metric)*
5. Which players are underrated? *(high non-scoring contribution, low scoring)*
6. Which players perform above expectations for their role? *(limited minutes)*
7. Which teams are most dependent on one player?
8. Does budget correlate with performance? *(payroll vs wins)*

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|------|-------|
| **SQLite** | Database setup, data exploration, analytical queries |
| **Python** | Data cleaning, analysis, visualization, ML clustering |
| **Power BI** | Interactive dashboard (3 pages) |

### Python Libraries
`pandas` · `matplotlib` · `seaborn` · `scikit-learn` · `adjustText` · `sqlite3`

---

## 📁 Project Structure

```
euroleague-analysis-2025-26/
├── data/
│   ├── euroleague_standings_2025_26.csv
│   ├── euroleague_team_stats_totals_2025_26.csv
│   ├── euroleague_team_stats_pergame_2025_26.csv
│   └── euroleague_player_stats_2025_26.csv
├── sql/
│   ├── setup.sql
│   ├── analysis_offense_defense.sql
│   ├── analysis_budget_vs_wins.sql
│   ├── analysis_player_efficiency.sql
│   ├── analysis_underrated_players.sql
│   └── analysis_team_dependency.sql
├── python/
│   └── euroleague_analysis.ipynb
├── dashboard/
│   └── euroleague_dashboard.pdf
└── README.md
```

---

## 📊 Dashboard Preview

The Power BI dashboard consists of 3 pages:

### Page 1 — Team Analysis
- KPIs: #1 Team, Best Offense, Best Defense, Best 3-Point Team
- Standings table
- Team Clustering scatter plot (K-Means, 4 clusters)
- Team Dependency on Top Scorer bar chart

### Page 2 — Player Analysis
- KPIs: Best PIR, Most Assists, Most Rebounds, Top Scorer
- Top 10 Efficiency Leaders (Avg PIR)
- Player Efficiency: PIR vs Points per Game scatter
- Underrated Players table

### Page 3 — Budget & Value
- KPIs: Best Value Team, Highest Payroll, Worst Value Team, Most Wins
- League Payroll Range gauge
- Payroll vs Wins scatter
- Team Value Rankings table (Wins per M€)

📄 [View Dashboard PDF](dashboard/euroleague_dashboard.pdf)

---

## 🔍 Key Findings

- **Olympiacos** finished #1 with 26W-12L despite not having the highest payroll
- **Valencia Basket** (€9.5M, 25W) and **Žalgiris** (€8.75M, 23W) showed the best value for money
- **Panathinaikos** (€26.75M) had the highest payroll but finished with only 22 wins
- **Aleksandar Vezenkov** was the most efficient player (PIR: 20.79)
- **Žalgiris** had the best 3P% (39.8%) but 3-point shooting alone does not predict wins
- **Paris Basketball** was the most dependent on one player (Nadir Hifi: 20.4% of team points)

---

## ▶️ How to Run

1. Clone the repository
2. Place the CSV files in the `data/` folder
3. Open `python/euroleague_analysis.ipynb` in Jupyter Notebook
4. Run all cells — Power BI CSVs will be exported automatically to `data/`
5. Open `euroleague_dashboard.pbix` in Power BI Desktop and refresh data

---

## 👤 Author

**Anastasis Goutas**  
[LinkedIn](https://www.linkedin.com/in/anastasis-gkoutas-20178b155) · [GitHub](https://github.com/gkoutas)
