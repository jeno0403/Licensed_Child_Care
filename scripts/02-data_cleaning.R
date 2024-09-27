#### Preamble ####
# Purpose: Cleans the raw childcare data recorded across various centers in Toronto
# Author: Jinyan Wei
# Date: 24 September 2024
# Contact: jinyan.wei@mail.utoronto.ca
# License: MIT
# Pre-requisites: The dataset used for cleaning and filtering must be in the correct format
# (CSV file with columns such as 'LOC_ID', 'LOC_NAME', 'AUSPICE', and various space types like 'IGSPACE').
# Any other information needed? Make sure that the tidyverse package is installed.


# Uncomment the line below if you haven't installed tidyverse
# install.packages("tidyverse")
library(tidyverse)

#### Loading the Dataset ####
childcare_raw_data <- read_csv("inputs/data/raw_data/childcare_raw_data.csv")

#### Cleaning the Dataset ####
childcare_cleaned_data <-
  childcare_raw_data |>
  # Select the columns of interest (add more columns if needed)
  select(LOC_ID, LOC_NAME, AUSPICE, IGSPACE, TGSPACE, PGSPACE, KGSPACE, SGSPACE) |>
  # Rename the space columns to more descriptive names
  rename(
    InfantSpace = IGSPACE,
    ToddlerSpace = TGSPACE,
    PreschoolSpace = PGSPACE,
    KindergartenSpace = KGSPACE,
    SchoolAgeSpace = SGSPACE
  ) |>
  # Example of additional transformation if needed
  mutate(
    AUSPICE = case_when(
      AUSPICE == "Non Profit Agency" ~ "Non-Profit",
      AUSPICE == "Commercial Agency" ~ "Commercial",
      TRUE ~ AUSPICE
    )
  )

#### Saving the Cleaned Dataset ####
write_csv(childcare_cleaned_data, "outputs/data/childcare_cleaned_data.csv")
