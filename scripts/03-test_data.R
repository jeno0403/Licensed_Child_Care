#### Preamble ####
# Purpose: Runs tests on the cleaned childcare dataset to check the validity
# of the entries.
# Author: Jinyan Wei
# Date: September 22, 2024
# Contact: jinyan.wei@mail.utoronto.ca
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".

#### Loading Packages ####

# install.packages("tidyverse")
library(tidyverse)

#### Testing the Cleaned Dataset ####

# Loading the cleaned dataset
childcare_cleaned_data <- read_csv("outputs/data/childcare_cleaned_data.csv")

# Running the tests on the cleaned dataset

# Checking the class of some of the columns

childcare_cleaned_data$AUSPICE |> class() == "character"
childcare_cleaned_data$LOC_NAME |> class() == "character"
childcare_cleaned_data$`Total Spaces` |> class() == "numeric"

# Checking that the minimum value in the LOC_ID column is at least 1
childcare_cleaned_data$LOC_ID |> min() >= 1

# Checking that the only management types (AUSPICE) present are Non Profit Agency, Commercial Agency, etc.
childcare_cleaned_data$AUSPICE |>
  unique() |>
  sort() == sort(c("Non Profit Agency", "Commercial Agency", "Public (City Operated) Agency"))

# Checking that only three auspice types are present
childcare_cleaned_data$AUSPICE |>
  unique() |>
  length() == 3

# Checking that the total spaces column has no negative values
childcare_cleaned_data$`Total Spaces` |> min() >= 0
