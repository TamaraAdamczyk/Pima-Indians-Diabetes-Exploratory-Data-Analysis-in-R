# Import and read data - Kaggle exported without the header row. The Pima Indians Diabetes dataset always uses the same standard 9-column structure so I'm asssigning them manually.
Pima <- read.csv("C:/Users/tamci/OneDrive/Desktop/R projects/PIMA Indians/pima-indians-diabetes.csv", header = FALSE)

colnames(Pima) <- c(
  "Pregnancies",
  "Glucose",
  "BloodPressure",
  "SkinThickness",
  "Insulin",
  "BMI",
  "DiabetesPedigreeFunction",
  "Age",
  "Outcome"
)

head(Pima)
str(Pima)

# Using a histogram to view the data distribution (BMI)
hist(Pima$BMI, main="Histogram of BMI", xlab="BMI")

# Using the subset() function to check for extreme BMI values (>60) to assess potential outliers or data entry issues
subset(Pima, BMI > 60)

# Using the subset function to look at BMI values outside a plausible range (<10 or >60) for data quality review
subset(Pima, BMI > 60 | BMI < 10)
# Identify extreme or implausible BMI values (>60 or <10) for data quality checks
# BMI of 0 indicates missing or miscoded height/weight, not a real value

# Define a plausible adult BMI range (10–60); values outside this range are
# considered implausible or extreme and are removed for data quality purposes
Pima_clean <- subset(Pima, BMI >= 10 & BMI <= 60)

# Descriptive statistics for BMI in the Pima dataset
list(
  "Summary" = summary(Pima_clean$BMI),
  "SD" = sd(Pima_clean$BMI, na.rm = TRUE),
  "Variance" = var(Pima_clean$BMI, na.rm = TRUE),
  "Range" = range(Pima_clean$BMI, na.rm = TRUE),
  "Inter-Quartile Range" = IQR(Pima_clean$BMI, na.rm = TRUE)
)

# Using a histogram to view the data distribution (Glucose)
hist(Pima_clean$Glucose, main = "Histogram of glucose", xlab = "Glucose")

# Remove impossible glucose values (0 indicates missing or miscoded data)
Pima_clean <- subset(Pima_clean, Glucose != 0)

# Descriptive statistics for Glucose
list(
  "Summary" = summary(Pima_clean$Glucose),
  "SD" = sd(Pima_clean$Glucose, na.rm = TRUE),
  "Variance" = var(Pima_clean$Glucose, na.rm = TRUE),
  "Range" = range(Pima_clean$Glucose, na.rm = TRUE),
  "Inter-Quartile Range" = IQR(Pima_clean$Glucose, na.rm = TRUE)
)

# Calculating the correlation coefficient and creating the scatterplot of the two variables.
# Plotting scatterplot
plot(Pima_clean$Glucose,Pima_clean$BMI, xlab="Glucose", ylab="BMI")

# Calculating the Pearson’s correlation coefficient to assess a linear association between the two variables
cor.test(Pima_clean$Glucose,Pima_clean$BMI, use = "complete.obs", method = "pearson")

# Looking at the Spearman's for comparison
cor.test(Pima_clean$Glucose,Pima_clean$BMI, use = "complete.obs", method = "spearman")

suppressWarnings(
  cor.test(Pima_clean$Glucose,Pima_clean$BMI, use = "complete.obs", method = "spearman")
  )
