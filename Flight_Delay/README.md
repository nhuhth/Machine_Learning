# Flight Delay Prediction

This project uses statistical programming in R to predict flight arrival delays. Leveraging a dataset with over 1.6 million observations, the model evaluates various features like scheduled times, weather conditions, and airline information for accurate delay predictions.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Dataset](#dataset)
- [Modeling Approach](#modeling-approach)
- [Installation](#installation)
- [Results](#results)
- [Challenges and Learnings](#challenges-and-learnings)
- [License](#license)

## Introduction
Flight delays inconvenience passengers and disrupt airline operations. This project aims to predict flight arrival delays using historical data. By efficiently processing large datasets and employing advanced statistical techniques, this model provides reliable predictions, potentially aiding airlines in optimizing schedules.

## Features
- Predicts flight arrival delays using historical data.
- Handles large datasets efficiently with over 1.6 million observations.
- Applies multiple regression models, including:
  - Ordinary Least Squares (OLS)
  - Ridge Regression
  - LASSO
  - Elastic Net
  - XGBoost for feature importance analysis.
- Cross-validation for robust model evaluation.

## Technologies Used
- **Programming Language:** R
- **Statistical Techniques:** Regression, Classification, Time Series Analysis
- **Machine Learning Models:** OLS, Ridge, LASSO, Elastic Net, XGBoost
- **Libraries:**
  - `tidyverse` for data manipulation and visualization
  - `caret` for machine learning workflows
  - `xgboost` for gradient boosting
  - `glmnet` for Ridge, LASSO, and Elastic Net models

## Dataset
- The dataset contains over 1.6 million flight records.
- **Key features include:**
  - Scheduled departure and arrival times
  - Weather conditions
  - Airline information
  - Delay duration (target variable)

## Modeling Approach
### Data Cleaning and Preprocessing:
- Handling missing values using imputation techniques.
- Filtering out outliers for more robust predictions.

### Feature Engineering:
- Extracting relevant time-based features (e.g., day of the week, hour of the day).
- Creating interaction terms to capture complex relationships.

### Model Building:
- Implementing multiple regression models:
  - OLS for baseline comparison.
  - Ridge and LASSO for regularization to reduce overfitting.
  - Elastic Net for a combination of Ridge and LASSO properties.
  - XGBoost for identifying the most influential factors.

### Model Evaluation:
- Performance measured using Mean Absolute Percentage Error (MAPE).
- Cross-validation for robust model evaluation.

## Installation
Clone this repository:
```bash
git clone https://github.com/nhuhth/Machine_Learning.git
cd Machine_Learning/Flight_Delay
```
## Results
- Achieved a prediction accuracy with Mean Absolute Percentage Error (MAPE) of approximately 20%.
- Identified the most influential factors contributing to flight delays using XGBoost.
- The model demonstrated robust performance through rigorous cross-validation.

## Challenges and Learnings
- **Handling Missing Values**: Addressed using imputation techniques.
- **Dealing with Outliers**: Applied data filtering to enhance model robustness.
- **Feature Selection**: Utilized XGBoost feature importance to select the most relevant features.
- **Model Evaluation**: Cross-validation was critical for reliable performance assessment.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
