#### Preamble ####
# Purpose: Downloads the Licensed Child Care Centres dataset from the Open Data Toronto portal
# and saves the dataset for use in the main paper.
# Author: Jinyan Wei
# Date: September 22,2024
# Contact: jinyan.wei@mail.utoronto.ca
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.

# Install necessary packages (if not installed)
install.packages("opendatatoronto")
# install.packages("tidyverse")
install.packages("tidyverse")

library(opendatatoronto)
library(tidyverse)

# Retrieve a list of all available data packages from the OpenDataToronto portal
packages <- list_packages(120)
# Display the list of available packages
packages

# Search for a specific package on OpenDataToronto by keyword ("Licensed Child Care Centres")
childcare_licence_packages <- search_packages("Licensed Child Care Centres")
childcare_licence_packages
# Retrieve a list of all resources (datasets) available within the found package
childcare_licence_resources <- childcare_licence_packages %>%
  list_package_resources()
# Display the list of resources available in the "Marriage Licence Statistics" package
childcare_licence_resources

# Download the .csv dataset
childcare_licence_statistics <- childcare_licence_resources[3, ] %>%
  get_resource()
childcare_licence_statistics
# Save the file in the home directory to check if it's a directory permission issue
write_csv(childcare_licence_statistics, "childcare_raw_data.csv")
# Save the dataset again to the correct directory
write_csv(childcare_licence_statistics, "inputs/data/raw_data/childcare_raw_data.csv")
