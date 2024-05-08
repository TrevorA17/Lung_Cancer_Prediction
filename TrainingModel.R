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

# Load the caret package for data splitting
library(caret)

# Set the seed for reproducibility
set.seed(123)

# Define the percentage of data to be used for training (e.g., 80%)
train_percentage <- 0.8

# Split the data into training and testing sets
train_index <- createDataPartition(lung_cancer_data$LUNG_CANCER, p = train_percentage, list = FALSE)
lung_cancer_train <- lung_cancer_data[train_index, ]
lung_cancer_test <- lung_cancer_data[-train_index, ]

# Print the dimensions of the training and testing sets
print("Dimensions of the Training Set:")
print(dim(lung_cancer_train))
print("Dimensions of the Testing Set:")
print(dim(lung_cancer_test))
