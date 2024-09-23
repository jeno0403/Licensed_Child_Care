#### Preamble ####
# Purpose: Generates a simulated version of the Toronto childcare spaces dataset
# and uses tests to ensure that the simulated data is reasonable and realistic.
# Author: Jinyan Wei
# Date: September 22,2024
# Contact: jinyan.wei@mail.utoronto.ca
# Pre-requisites: Install the tidyverse package.

#### Loading Packages ####

# install.packages("tidyverse")
library(tidyverse)

#### Loading the Original Data ####

# Load the dataset (make sure the path is correct)
childcare_data <- read.csv("outputs/data/childcare.csv")

#### Data Simulation ####

set.seed(345)

# Simulating 1000 childcare data points
simulated_childcare_data <-
  tibble(
    # ID for each childcare center
    "ID" = 1:1000,
    
    # Randomly choosing a type of management (Auspice) for 1000 centers
    "Auspice" = sample(
      x = unique(childcare_data$AUSPICE),
      size = 1000,
      replace = TRUE),
    
    # Randomly choosing the ward for each center
    "Ward" = sample(
      x = unique(childcare_data$ward),
      size = 1000,
      replace = TRUE),
    
    # Randomly choosing the total spaces for each center
    "Total Spaces" = sample(
      x = unique(childcare_data$TOTSPACE),
      size = 1000,
      replace = TRUE),
    
    # Randomly assigning subsidy status (Y/N)
    "Subsidy" = sample(
      x = unique(childcare_data$subsidy),
      size = 1000,
      replace = TRUE)
  )

#### Testing the Simulated Dataset ####

# Checking that the only management types (Auspice) present match the original dataset
sort(unique(simulated_childcare_data$Auspice)) == sort(unique(childcare_data$AUSPICE))

# Checking that only the correct number of Auspice types are present
unique(simulated_childcare_data$Auspice) |> length() == length(unique(childcare_data$AUSPICE))

# Checking that the only valid wards are present
all(simulated_childcare_data$Ward %in% unique(childcare_data$ward))

# Checking that the correct number of wards are present
unique(simulated_childcare_data$Ward) |> length() == length(unique(childcare_data$ward))

# Checking that the only valid subsidy statuses (Y/N) are present
sort(unique(simulated_childcare_data$Subsidy)) == sort(c("Y", "N"))

# Checking that the total number of spaces is within a valid range (no negatives, etc.)
min(simulated_childcare_data$`Total Spaces`) >= 0

#### End of Simulation and Testing ####

