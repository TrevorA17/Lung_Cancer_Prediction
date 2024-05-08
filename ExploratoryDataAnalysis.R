# Load dataset
lung_cancer_data <- read.csv("data/lung_cancer.csv", colClasses = c(
  GENDER = "factor",
  AGE = "integer",
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

# Measures of Frequency

# Count of observations for each level of GENDER
gender_freq <- table(lung_cancer_data$GENDER)
print("Frequency of Gender:")
print(gender_freq)

# Count of observations for each level of SMOKING
smoking_freq <- table(lung_cancer_data$SMOKING)
print("Frequency of Smoking:")
print(smoking_freq)

# Count of observations for each level of YELLOW_FINGERS
yellow_fingers_freq <- table(lung_cancer_data$YELLOW_FINGERS)
print("Frequency of Yellow Fingers:")
print(yellow_fingers_freq)

# Count of observations for each level of ANXIETY
anxiety_freq <- table(lung_cancer_data$ANXIETY)
print("Frequency of Anxiety:")
print(anxiety_freq)

# Count of observations for each level of PEER_PRESSURE
peer_pressure_freq <- table(lung_cancer_data$PEER_PRESSURE)
print("Frequency of Peer Pressure:")
print(peer_pressure_freq)

# Count of observations for each level of CHRONIC_DISEASE
chronic_disease_freq <- table(lung_cancer_data$CHRONIC_DISEASE)
print("Frequency of Chronic Disease:")
print(chronic_disease_freq)

# Count of observations for each level of FATIGUE
fatigue_freq <- table(lung_cancer_data$FATIGUE)
print("Frequency of Fatigue:")
print(fatigue_freq)

# Count of observations for each level of ALLERGY
allergy_freq <- table(lung_cancer_data$ALLERGY)
print("Frequency of Allergy:")
print(allergy_freq)

# Count of observations for each level of WHEEZING
wheezing_freq <- table(lung_cancer_data$WHEEZING)
print("Frequency of Wheezing:")
print(wheezing_freq)

# Count of observations for each level of ALCOHOL_CONSUMING
alcohol_consuming_freq <- table(lung_cancer_data$ALCOHOL_CONSUMING)
print("Frequency of Alcohol Consuming:")
print(alcohol_consuming_freq)

# Count of observations for each level of COUGHING
coughing_freq <- table(lung_cancer_data$COUGHING)
print("Frequency of Coughing:")
print(coughing_freq)

# Count of observations for each level of SHORTNESS_OF_BREATH
shortness_of_breath_freq <- table(lung_cancer_data$SHORTNESS_OF_BREATH)
print("Frequency of Shortness of Breath:")
print(shortness_of_breath_freq)

# Count of observations for each level of SWALLOWING_DIFFICULTY
swallowing_difficulty_freq <- table(lung_cancer_data$SWALLOWING_DIFFICULTY)
print("Frequency of Swallowing Difficulty:")
print(swallowing_difficulty_freq)

# Count of observations for each level of CHEST_PAIN
chest_pain_freq <- table(lung_cancer_data$CHEST_PAIN)
print("Frequency of Chest Pain:")
print(chest_pain_freq)

# Count of observations for each level of LUNG_CANCER
lung_cancer_freq <- table(lung_cancer_data$LUNG_CANCER)
print("Frequency of Lung Cancer:")
print(lung_cancer_freq)

