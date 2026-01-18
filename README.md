# Pima-Indians-Diabetes-Exploratory-Data-Analysis-in-R
This repository contains an exploratory analysis of the Pima Indians Diabetes dataset. The goal of this analysis is to understand data quality, explore variable distributions, and examine the relationship between BMI and fasting glucose.

# Data Import & Structure
The Kaggle export does not include column names, so the standard 9‑variable structure is assigned manually.
The dataset is inspected with head() and str() to confirm types and ranges and cross-checked with Kaggle.

# Data Quality Checks
Several variables in the Pima dataset contain structurally impossible or implausible values, which are identified and removed:

- BMI < 10 or > 60  
Implausible for adults; BMI = 0 indicates missing or miscoded height/weight. BMI > 60 - these can occur in cases of extreme obesity, but they’re rare enough that analysts inspect them manually in 'real-life' analysis

- Glucose = 0  
Not physiologically possible; treated as missing data.

Therefore, a cleaned dataset (Pima_clean) is created and used for all downstream analysis.

# Descriptive Statistics
Descriptive statistics are generated using a list() function , and include:

- Summary statistics using summary() function
- Standard deviation
- Variance
- Range
- Inter‑quartile range

These summaries are produced for both BMI and Glucose after cleaning i.e. using Pima-clean dataset.

# Visualisation
Basic visualisations are used to understand distributional shape:

- Histograms for BMI and Glucose
image here
- Scatterplot of Glucose vs BMI
image here
These plots help identify skewness, clustering, and potential outliers.

# Correlation Analysis
Both Pearson and Spearman correlations are calculated to assess the association between BMI and fasting glucose.
put here from R tomorrow
Findings:

A weak but statistically significant positive association

Pearson r ≈ 0.24

Spearman ρ ≈ 0.23

Large sample size makes even modest effects detectable

This suggests that higher BMI is associated with higher glucose, but BMI alone explains only a small portion of glucose variability.

# Key Takeaways
- Cleaning the dataset meaningfully improves the validity of the analysis.
- BMI and glucose show a real but modest relationship.
- The workflow is fully reproducible, transparent, and easy to extend.

This project demonstrates practical data‑cleaning decisions, clear documentation, and clinically informed reasoning.
