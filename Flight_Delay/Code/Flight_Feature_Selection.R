# Load necessary libraries
check_and_install <- function(packages) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg, dependencies = TRUE)
      library(pkg, character.only = TRUE)
    }
  }
}

required_packages <- c("xgboost")
check_and_install(required_packages)

# Load data
load("~/Desktop/ML_project/flight_train_test.RData")

# Remove non-numeric columns if any
numeric_cols <- sapply(flight_train, is.numeric)
flight_train_numeric <- flight_train[, numeric_cols]

# Convert to matrix
train_matrix <- as.matrix(flight_train_numeric)

# Create DMatrix
dtrain <- xgb.DMatrix(data = train_matrix, label = flight_train$Arrival_Delay)


# Train XGBoost model
xgb_model <- xgboost(data = dtrain, nrounds = 100, objective = "reg:squarederror", verbose = FALSE)
# Calculate permutation importance
importance <- xgb.importance(model = xgb_model)

# Plot permutation importance
xgb.plot.importance(importance_matrix = importance)


important_features <- importance$Feature[1:15]

flight_train_selected <- flight_train[, important_features]
flight_test_selected <- flight_test[, important_features]

save(flight_train_selected, flight_test_selected, file = "~/Desktop/ML_project/flight_train_test_selected.RData")

