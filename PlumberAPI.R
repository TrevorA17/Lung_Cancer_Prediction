# Load the saved glm model
loaded_glm_model <- readRDS("./models/glm_model.rds")

#* @apiTitle Lung Cancer Risk Prediction Model API
#* @apiDescription Used to predict lung cancer risk.

#* @param GENDER Gender of the patient
#* @param AGE Age of the patient
#* @param SMOKING Smoking status (1 = Yes, 2 = No)
#* @param YELLOW_FINGERS Presence of yellow fingers (1 = Yes, 2 = No)
#* @param ANXIETY Presence of anxiety (1 = Yes, 2 = No)
#* @param PEER_PRESSURE Peer pressure (1 = Yes, 2 = No)
#* @param CHRONIC_DISEASE Presence of chronic disease (1 = Yes, 2 = No)
#* @param FATIGUE Presence of fatigue (1 = Yes, 2 = No)
#* @param ALLERGY Presence of allergy (1 = Yes, 2 = No)
#* @param WHEEZING Presence of wheezing (1 = Yes, 2 = No)
#* @param ALCOHOL_CONSUMING Alcohol consumption status (1 = Yes, 2 = No)
#* @param COUGHING Presence of coughing (1 = Yes, 2 = No)
#* @param SHORTNESS_OF_BREATH Presence of shortness of breath (1 = Yes, 2 = No)
#* @param SWALLOWING_DIFFICULTY Difficulty in swallowing (1 = Yes, 2 = No)
#* @param CHEST_PAIN Presence of chest pain (1 = Yes, 2 = No)

#* @post /predict_lung_cancer

predict_lung_cancer <- function(GENDER, AGE, SMOKING, YELLOW_FINGERS, ANXIETY, PEER_PRESSURE,
                                CHRONIC_DISEASE, FATIGUE, ALLERGY, WHEEZING, ALCOHOL_CONSUMING,
                                COUGHING, SHORTNESS_OF_BREATH, SWALLOWING_DIFFICULTY, CHEST_PAIN) {
  # Prepare new data for prediction
  new_data <- data.frame(
    GENDER = factor(GENDER, levels = levels(lung_cancer_data$GENDER)),
    AGE = as.integer(AGE),
    SMOKING = factor(SMOKING, levels = levels(lung_cancer_data$SMOKING)),
    YELLOW_FINGERS = factor(YELLOW_FINGERS, levels = levels(lung_cancer_data$YELLOW_FINGERS)),
    ANXIETY = factor(ANXIETY, levels = levels(lung_cancer_data$ANXIETY)),
    PEER_PRESSURE = factor(PEER_PRESSURE, levels = levels(lung_cancer_data$PEER_PRESSURE)),
    CHRONIC_DISEASE = factor(CHRONIC_DISEASE, levels = levels(lung_cancer_data$CHRONIC_DISEASE)),
    FATIGUE = factor(FATIGUE, levels = levels(lung_cancer_data$FATIGUE)),
    ALLERGY = factor(ALLERGY, levels = levels(lung_cancer_data$ALLERGY)),
    WHEEZING = factor(WHEEZING, levels = levels(lung_cancer_data$WHEEZING)),
    ALCOHOL_CONSUMING = factor(ALCOHOL_CONSUMING, levels = levels(lung_cancer_data$ALCOHOL_CONSUMING)),
    COUGHING = factor(COUGHING, levels = levels(lung_cancer_data$COUGHING)),
    SHORTNESS_OF_BREATH = factor(SHORTNESS_OF_BREATH, levels = levels(lung_cancer_data$SHORTNESS_OF_BREATH)),
    SWALLOWING_DIFFICULTY = factor(SWALLOWING_DIFFICULTY, levels = levels(lung_cancer_data$SWALLOWING_DIFFICULTY)),
    CHEST_PAIN = factor(CHEST_PAIN, levels = levels(lung_cancer_data$CHEST_PAIN))
  )
  
  # Use the loaded model to make predictions
  prediction <- predict(loaded_glm_model, newdata = new_data)
  
  # Return the prediction
  return(prediction)
}
