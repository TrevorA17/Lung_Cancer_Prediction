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

# Measures of Central Tendency

# Calculate mean, median, and mode for AGE
age_mean <- mean(lung_cancer_data$AGE)
age_median <- median(lung_cancer_data$AGE)
age_mode <- as.numeric(names(sort(-table(lung_cancer_data$AGE))[1]))

print("Measures of Central Tendency for Age:")
print(paste("Mean:", age_mean))
print(paste("Median:", age_median))
print(paste("Mode:", age_mode))

# For categorical variables, we can only calculate mode
# Calculate mode for other variables

# Function to calculate mode
calculate_mode <- function(x) {
  tbl <- table(x)
  mode_value <- as.numeric(names(tbl)[which.max(tbl)])
  return(mode_value)
}

# Calculate mode for other variables
mode_smoking <- calculate_mode(lung_cancer_data$SMOKING)
mode_yellow_fingers <- calculate_mode(lung_cancer_data$YELLOW_FINGERS)
mode_anxiety <- calculate_mode(lung_cancer_data$ANXIETY)
mode_peer_pressure <- calculate_mode(lung_cancer_data$PEER_PRESSURE)
mode_chronic_disease <- calculate_mode(lung_cancer_data$CHRONIC_DISEASE)
mode_fatigue <- calculate_mode(lung_cancer_data$FATIGUE)
mode_allergy <- calculate_mode(lung_cancer_data$ALLERGY)
mode_wheezing <- calculate_mode(lung_cancer_data$WHEEZING)
mode_alcohol_consuming <- calculate_mode(lung_cancer_data$ALCOHOL_CONSUMING)
mode_coughing <- calculate_mode(lung_cancer_data$COUGHING)
mode_shortness_of_breath <- calculate_mode(lung_cancer_data$SHORTNESS_OF_BREATH)
mode_swallowing_difficulty <- calculate_mode(lung_cancer_data$SWALLOWING_DIFFICULTY)
mode_chest_pain <- calculate_mode(lung_cancer_data$CHEST_PAIN)

# Print the calculated modes
print("Mode for Smoking:")
print(mode_smoking)

print("Mode for Yellow Fingers:")
print(mode_yellow_fingers)

print("Mode for Anxiety:")
print(mode_anxiety)

print("Mode for Peer Pressure:")
print(mode_peer_pressure)

print("Mode for Chronic Disease:")
print(mode_chronic_disease)

print("Mode for Fatigue:")
print(mode_fatigue)

print("Mode for Allergy:")
print(mode_allergy)

print("Mode for Wheezing:")
print(mode_wheezing)

print("Mode for Alcohol Consuming:")
print(mode_alcohol_consuming)

print("Mode for Coughing:")
print(mode_coughing)

print("Mode for Shortness of Breath:")
print(mode_shortness_of_breath)

print("Mode for Swallowing Difficulty:")
print(mode_swallowing_difficulty)

print("Mode for Chest Pain:")
print(mode_chest_pain)

# Measures of Distribution

# Frequency distribution for categorical variables
# Function to calculate frequency distribution
calculate_frequency_distribution <- function(x) {
  tbl <- table(x)
  freq_dist <- data.frame(Level = as.numeric(names(tbl)), Frequency = as.numeric(tbl))
  return(freq_dist)
}

# Calculate frequency distribution for categorical variables
freq_dist_gender <- calculate_frequency_distribution(lung_cancer_data$GENDER)
freq_dist_smoking <- calculate_frequency_distribution(lung_cancer_data$SMOKING)
freq_dist_yellow_fingers <- calculate_frequency_distribution(lung_cancer_data$YELLOW_FINGERS)
freq_dist_anxiety <- calculate_frequency_distribution(lung_cancer_data$ANXIETY)
freq_dist_peer_pressure <- calculate_frequency_distribution(lung_cancer_data$PEER_PRESSURE)
freq_dist_chronic_disease <- calculate_frequency_distribution(lung_cancer_data$CHRONIC_DISEASE)
freq_dist_fatigue <- calculate_frequency_distribution(lung_cancer_data$FATIGUE)
freq_dist_allergy <- calculate_frequency_distribution(lung_cancer_data$ALLERGY)
freq_dist_wheezing <- calculate_frequency_distribution(lung_cancer_data$WHEEZING)
freq_dist_alcohol_consuming <- calculate_frequency_distribution(lung_cancer_data$ALCOHOL_CONSUMING)
freq_dist_coughing <- calculate_frequency_distribution(lung_cancer_data$COUGHING)
freq_dist_shortness_of_breath <- calculate_frequency_distribution(lung_cancer_data$SHORTNESS_OF_BREATH)
freq_dist_swallowing_difficulty <- calculate_frequency_distribution(lung_cancer_data$SWALLOWING_DIFFICULTY)
freq_dist_chest_pain <- calculate_frequency_distribution(lung_cancer_data$CHEST_PAIN)
freq_dist_lung_cancer <- calculate_frequency_distribution(lung_cancer_data$LUNG_CANCER)

# Print the frequency distribution for each categorical variable
print("Frequency Distribution for Gender:")
print(freq_dist_gender)

print("Frequency Distribution for Smoking:")
print(freq_dist_smoking)

print("Frequency Distribution for Yellow Fingers:")
print(freq_dist_yellow_fingers)

print("Frequency Distribution for Anxiety:")
print(freq_dist_anxiety)

print("Frequency Distribution for Peer Pressure:")
print(freq_dist_peer_pressure)

print("Frequency Distribution for Chronic Disease:")
print(freq_dist_chronic_disease)

print("Frequency Distribution for Fatigue:")
print(freq_dist_fatigue)

print("Frequency Distribution for Allergy:")
print(freq_dist_allergy)

print("Frequency Distribution for Wheezing:")
print(freq_dist_wheezing)

print("Frequency Distribution for Alcohol Consuming:")
print(freq_dist_alcohol_consuming)

print("Frequency Distribution for Coughing:")
print(freq_dist_coughing)

print("Frequency Distribution for Shortness of Breath:")
print(freq_dist_shortness_of_breath)

print("Frequency Distribution for Swallowing Difficulty:")
print(freq_dist_swallowing_difficulty)

print("Frequency Distribution for Chest Pain:")
print(freq_dist_chest_pain)

print("Frequency Distribution for Lung Cancer:")
print(freq_dist_lung_cancer)

# Contingency table and chi-square test for Gender and Lung Cancer
gender_lung_contingency <- table(lung_cancer_data$GENDER, lung_cancer_data$LUNG_CANCER)
print("Contingency Table for Gender and Lung Cancer:")
print(gender_lung_contingency)

chi_square_gender_lung <- chisq.test(gender_lung_contingency)
print("Chi-square Test for Gender and Lung Cancer:")
print(chi_square_gender_lung)

# Correlation matrix for numerical variables
numerical_variables <- lung_cancer_data[, c("SMOKING")]

correlation_matrix <- cor(numerical_variables)
print("Correlation Matrix for Numerical Variables:")
print(correlation_matrix)

# ANOVA for Gender and Age
anova_gender_age <- aov(AGE ~ GENDER, data = lung_cancer_data)
print("ANOVA for Gender and Age:")
print(summary(anova_gender_age))




