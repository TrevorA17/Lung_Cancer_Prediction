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

# Set the seed for reproducibility
set.seed(123)

# Define the number of bootstrap samples
num_bootstrap_samples <- 1000

# Create an empty vector to store bootstrapped statistics
bootstrap_statistics <- numeric(num_bootstrap_samples)

# Perform bootstrapping
for (i in 1:num_bootstrap_samples) {
  # Generate a bootstrap sample by sampling with replacement from the original dataset
  bootstrap_sample <- lung_cancer_data[sample(nrow(lung_cancer_data), replace = TRUE), ]
  
  # Calculate the statistic of interest (e.g., mean, median, etc.) for the bootstrap sample
  # For example, let's calculate the mean of AGE
  bootstrap_statistics[i] <- mean(bootstrap_sample$AGE)
}

# Calculate the bootstrap estimate of the statistic (e.g., mean, median, etc.)
bootstrap_estimate <- mean(bootstrap_statistics)

# Calculate the standard error of the bootstrap estimate
bootstrap_standard_error <- sd(bootstrap_statistics)

# Print the bootstrap estimate and its standard error
print("Bootstrap Estimate of the Statistic (e.g., mean, median, etc.):")
print(bootstrap_estimate)
print("Standard Error of the Bootstrap Estimate:")
print(bootstrap_standard_error)

# Install caret if not already installed
if (!requireNamespace("caret", quietly = TRUE)) {
  install.packages("caret")
}

# Load the caret package
library(caret)

# Define the number of repeats for repeated cross-validation (e.g., 3 repeats)
num_folds <- 3
num_repeats <- 3

# Perform repeated cross-validation
cv_results_repeated <- train(
  LUNG_CANCER ~ ., 
  data = lung_cancer_data, 
  method = "glm",  
  trControl = trainControl(method = "repeatedcv", number = num_folds, repeats = num_repeats)
)

# Print the repeated cross-validation results
print(cv_results_repeated)

# Load the caret package
library(caret)

# Set the seed for reproducibility
set.seed(123)

# Define the training control
train_control <- trainControl(method = "cv", number = 10)  # 10-fold cross-validation

# Train the Generalized Linear Model (glm)
model_glm <- train(
  LUNG_CANCER ~ ., 
  data = lung_cancer_data, 
  method = "glm",
  trControl = train_control
)

# Train the Random Forest model (rf)
model_rf <- train(
  LUNG_CANCER ~ ., 
  data = lung_cancer_data, 
  method = "rf",
  trControl = train_control
)

# Train the Support Vector Machine model (svm)
model_svm <- train(
  LUNG_CANCER ~ ., 
  data = lung_cancer_data, 
  method = "svmLinear",
  trControl = train_control
)

# Print the models
print("Trained Models:")
print(model_glm)
print(model_rf)
print(model_svm)

# Load the caret package
library(caret)

# Define the models
models <- list(glm = model_glm, rf = model_rf, svm = model_svm)

# Compare model performance using resamples
model_resamples <- resamples(models)

# Summarize the results
summary(model_resamples)

