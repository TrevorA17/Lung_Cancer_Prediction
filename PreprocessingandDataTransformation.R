# Load dataset
lung_cancer_data <- read.csv("data/lung_cancer.csv", colClasses = c(
  GENDER = "factor",
  AGE = "numeric",
  SMOKING = "factor",
  YELLOW_FINGERS = "factor",
  ANXIETY = "factor",
  PEER_PRESSURE = "factor",
  CHRONIC_DISEASE = "factor",
  FATIGUE = "factor",
  ALLERGY = "factor",
  WHEEZING = "factor",
  ALCOHOL_CONSUMING = "factor",
  COUGHING = "factor",
  SHORTNESS_OF_BREATH = "factor",
  SWALLOWING_DIFFICULTY = "factor",
  CHEST_PAIN = "factor",
  LUNG_CANCER = "factor"
))

# Display the structure of the dataset
str(lung_cancer_data)

# View the first few rows of the dataset
head(lung_cancer_data)

# View the dataset in a separate viewer window
View(lung_cancer_data)

# Summarize missing values for each variable
missing_values_summary <- sapply(lung_cancer_data, function(x) sum(is.na(x) | is.null(x)))
print("Summary of Missing Values:")
print(missing_values_summary)
