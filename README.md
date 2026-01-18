# Pima-Indians-Diabetes-Exploratory-Data-Analysis-in-R
This repository contains an exploratory analysis of the Pima Indians Diabetes dataset. The goal of this analysis is to understand data quality, explore variable distributions, and examine the relationship between BMI and fasting glucose.

# Data Import & Structure
The Kaggle export did not include column names, so the standard 9‑variable structure was assigned manually.
The dataset was inspected with head() and str() to confirm types and ranges and cross-checked with Kaggle.

# Data Quality Checks
Several variables in the Pima dataset contained structurally impossible or implausible values. They were identified and removed:

- BMI < 10 or > 60  
Implausible for adults; BMI = 0 indicates missing or miscoded height/weight. BMI > 60 - these can occur in cases of extreme obesity, but they’re rare enough that analysts inspect them manually in 'real-life' analysis

- Glucose = 0  
Not physiologically possible; treated as missing data.

Therefore, a cleaned dataset (Pima_clean) was created and used for all downstream analysis.

# Descriptive Statistics
Descriptive statistics were generated using a list() function , and included:

- Summary statistics using summary() function
- Standard deviation
- Variance
- Range
- Inter‑quartile range

These summaries were produced for both BMI and Glucose after cleaning i.e. using Pima-clean dataset.
<img width="513" height="385" alt="image" src="https://github.com/user-attachments/assets/75467015-b90c-4a80-854d-76bf6487be4a" />
<img width="522" height="382" alt="image" src="https://github.com/user-attachments/assets/6130fee4-232e-4a32-bce3-0c3497cf0ea2" />

# Visualisation
Basic visualisations were used to understand distributional shape:

- Histograms for BMI and Glucose
<img width="782" height="557" alt="image" src="https://github.com/user-attachments/assets/734b843e-0b0e-4ad8-95e4-646dd824b299" />
<img width="787" height="558" alt="image" src="https://github.com/user-attachments/assets/bce70a4a-83e7-474b-b824-70701c890b68" />

- Scatterplot of Glucose vs BMI
<img width="808" height="507" alt="image" src="https://github.com/user-attachments/assets/2f2dbe9d-17c2-4dea-8354-2cf048e4e292" />

These plots help identify skewness, clustering, and potential outliers.

# Correlation Analysis
Both Pearson and Spearman correlations were calculated to assess the association between BMI and fasting glucose.
<img width="610" height="288" alt="image" src="https://github.com/user-attachments/assets/264a8652-3322-4dc1-89f1-ef8820944b20" />
<img width="527" height="237" alt="image" src="https://github.com/user-attachments/assets/6519c286-35ad-48e7-ae23-21c058bb2c48" />

Findings:
- A weak but statistically significant positive association
- Pearson r ≈ 0.24
- Spearman ρ ≈ 0.23
- Large sample size makes even modest effects detectable
- This suggests that higher BMI is associated with higher glucose, but BMI alone explains only a small portion of glucose variability.

# Key Takeaways
- Cleaning the dataset improved the validity of the analysis.
- BMI and glucose show a real but modest relationship.
- The workflow is fully reproducible, transparent, and easy to extend.

This project demonstrates practical data‑cleaning decisions, clear documentation, and clinically informed reasoning.

Resources:
Kaggle Dataset
Kaggle. (Kumar) Pima Indians Diabetes Database. Available at: https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database (Accessed: 17 January 2026).

RStudio
Posit.(2023) RStudio: Integrated Development Environment for R. Available at: https://posit.co/products/open-source/rstudio/ (Accessed: 17 January 2026).
