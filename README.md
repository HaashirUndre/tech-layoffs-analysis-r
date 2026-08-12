# Tech Layoffs & Hiring Trends Analysis

An exploratory data analysis project using **R** to investigate technology-sector layoffs, hiring trends, AI adoption, and AI replacement risk.

The project uses **R, RStudio, ggplot2, and dplyr** to clean, summarize, analyze, and visualize the dataset.

---

## Tools & Technologies

- R
- RStudio
- ggplot2
- dplyr
- Data Visualization
- Exploratory Data Analysis (EDA)

---

## Project Objectives

This project explores:

The relationship between AI adoption and AI replacement risk
The relationship between layoffs and open job roles
Which industries experienced the highest total layoffs
How different hiring trends relate to average layoffs
Overall patterns in the technology employment market

---

## Key Findings
1. AI Adoption vs AI Replacement Risk

The analysis found a positive relationship between AI adoption and AI replacement risk.

The correlation coefficient was approximately:

r = 0.647

This indicates a moderately strong positive relationship in this dataset.

In simple terms, companies with higher reported levels of AI adoption also tended to have higher AI replacement-risk scores.

" Correlation does not necessarily mean that AI adoption directly causes job replacement. It only indicates an association within this dataset."

Visualization
ai_adoption_vs_replacement_risk.png

2. Layoffs vs Open Roles

The analysis found a negative relationship between layoffs and open roles.

The correlation coefficient was approximately:

r = -0.282

This suggests that records with higher numbers of layoffs generally tended to have fewer open roles.

However, the relationship is relatively weak compared with the AI adoption/replacement-risk relationship, meaning other factors are likely influencing hiring activity.

Visualization
layoffs_vs_open_roles.png

3. Layoffs by Hiring Trend

Average layoffs varied considerably across different hiring trends.

Hiring Trend	Average Layoffs per Record
Downsizing	~9,926
Hiring Freeze	~5,628
Moderate Hiring	~2,873
Aggressive Hiring	~2,518

The Downsizing category had the highest average layoffs per record, while Aggressive Hiring had the lowest.

This highlights a clear difference between companies reducing their workforce and companies actively expanding their workforce.

Visualization
layoffs_by_hiring_trend.png

4. Layoffs by Industry

The analysis compared total layoffs across seven technology-related industries.

Industry	Total Layoffs
Social Media	9,012,817
AI	8,751,526
E-Commerce	8,618,351
Cybersecurity	8,569,627
Gaming	8,552,964
FinTech	8,406,741
Cloud	8,202,839

Based on the dataset, Social Media recorded the highest total layoffs, while Cloud recorded the lowest among the industries analyzed.

The differences are relatively close, suggesting that layoffs were widespread across the industries represented in the dataset.

Visualization
layoffs_by_industry.png

---
 
## Yearly Layoff Overview

The analysis also examined total layoffs by year.

Year	Total Layoffs
2024	20,307,870
2025	19,761,032
2026	20,045,963

The total layoffs remained relatively high across all three years, with 2024 recording the highest total among the years analyzed.

---

## Analysis Summary

The analysis reveals several interesting patterns:

AI adoption and AI replacement risk show a positive correlation (r ≈ 0.647).
Layoffs and open roles show a negative correlation (r ≈ -0.282).
Companies categorized under Downsizing had the highest average layoffs.
Social Media had the highest total layoffs among the industries analyzed.
Layoff levels remained high across 2024–2026 in the dataset.

These findings provide a snapshot of how workforce reductions, hiring activity, and AI-related factors appear to interact within the dataset.

---

## 📊 Visualizations
AI Adoption vs AI Replacement Risk
ai_adoption_vs_replacement_risk.png

Layoffs vs Open Roles
layoffs_vs_open_roles.png

Average Layoffs by Hiring Trend
layoffs_by_hiring_trend.png

Tech Layoffs by Industry
layoffs_by_industry.png

---

## R Analysis

The analysis was performed using R and includes:

Frequency tables
Correlation analysis
Grouped summaries
Average calculations
Data aggregation
Scatter plots
Regression trend lines
Bar charts
Exploratory visualization

The complete R analysis is available in:

tech_layoffs_analysis.R

---

## Dataset

The dataset used for this project was obtained from Kaggle.

The dataset contains information including:

Company
Industry
Country
Company size
Month and year
Layoff count
Layoff percentage
Reason for layoffs
AI automation impact
AI replacement risk
Open roles
Hiring trend
Remote jobs percentage
Stock growth
Revenue growth
Salary budget changes
AI adoption level
Employee sentiment
Job security score
Market condition

---

## Disclaimer

This project is intended for educational and exploratory purposes.

The findings represent patterns observed in the provided dataset and should not be interpreted as definitive evidence of real-world causal relationships.

In particular, correlation between variables does not establish causation.

---

## Author

Haashir Undre
This project was created as part of my learning journey in R, data analysis, and data visualization.
