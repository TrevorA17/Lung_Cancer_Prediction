# Save the glm model
dir.create("./models", showWarnings = FALSE)  # Create the directory if it doesn't exist
saveRDS(model_glm, "./models/glm_model.rds")  # Save the model



# Load the saved model
loaded_glm_model <- readRDS("./models/glm_model.rds")

# Prepare new data for prediction
new_data <- data.frame(
  GENDER = factor("M", levels = levels(lung_cancer_data$GENDER)),  # Ensure factor levels match training data
  AGE = 40,
  SMOKING = factor(1, levels = levels(lung_cancer_data$SMOKING)),  # Ensure factor levels match training data
  YELLOW_FINGERS = factor(2, levels = levels(lung_cancer_data$YELLOW_FINGERS)),  # Ensure factor levels match training data
  ANXIETY = factor(1, levels = levels(lung_cancer_data$ANXIETY)),  # Ensure factor levels match training data
  PEER_PRESSURE = factor(2, levels = levels(lung_cancer_data$PEER_PRESSURE)),  # Ensure factor levels match training data
  CHRONIC_DISEASE = factor(1, levels = levels(lung_cancer_data$CHRONIC_DISEASE)),  # Ensure factor levels match training data
  FATIGUE = factor(1, levels = levels(lung_cancer_data$FATIGUE)),  # Ensure factor levels match training data
  ALLERGY = factor(2, levels = levels(lung_cancer_data$ALLERGY)),  # Ensure factor levels match training data
  WHEEZING = factor(2, levels = levels(lung_cancer_data$WHEEZING)),  # Ensure factor levels match training data
  ALCOHOL_CONSUMING = factor(2, levels = levels(lung_cancer_data$ALCOHOL_CONSUMING)),  # Ensure factor levels match training data
  COUGHING = factor(1, levels = levels(lung_cancer_data$COUGHING)),  # Ensure factor levels match training data
  SHORTNESS_OF_BREATH = factor(2, levels = levels(lung_cancer_data$SHORTNESS_OF_BREATH)),  # Ensure factor levels match training data
  SWALLOWING_DIFFICULTY = factor(2, levels = levels(lung_cancer_data$SWALLOWING_DIFFICULTY)),  # Ensure factor levels match training data
  CHEST_PAIN = factor(2, levels = levels(lung_cancer_data$CHEST_PAIN))  # Ensure factor levels match training data
)

# Use the loaded model to make predictions
predictions_loaded_model <- predict(loaded_glm_model, newdata = new_data)

# Print predictions
print(predictions_loaded_model)
