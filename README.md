# Trends in Toronto's Licensed Childcare Centres: Analyzing Age Group Capacity and Availability Disparities

## Overview

This GitHub Repository contains all files used to generate the paper "Trends in Toronto's Licensed Childcare Centres: Analyzing Age Group Capacity and Availability Disparities." It analyzes childcare availability across age groups and wards using geographic data based on the NAD27 datum for accurate spatial analysis. Some R scripts were adapted from Cleveland (2018) and Alexander (2023). The project uses linting and styling tools to ensure code quality.

# How to Run

1. `scripts/00-simulate_data.R` - (If necessary) Simulate data for the project.
2. `scripts/01-download_data.R` - Download the required datasets from Open Data Toronto.
3. `scripts/02-data_cleaning.R` - Clean and prepare the downloaded data for analysis.
4. `scripts/03-test_data.R` - Test the cleaned data for consistency and accuracy.
5. `outputs/paper.qmd` - Render the final paper into PDF format using Quarto.


## File Structure

The repo is structured as:

- `inputs/data` : Raw data on childcare spaces
- `inputs/literature` : References on childcare disparities and policy.
- `outputs/data` :Cleaned data.
- `outputs/graph`: Generated graphs from the data.
- `outputs/paper`: Final paper (PDF, Quarto file, references).
- `scripts`: R scripts for data simulation, download, cleaning, and analysis.
- `other/llm`: Record of LLM usage.
- `other/sketches`: Sketch of graphs and summaries.

## Statement on LLM usage

Aspects of this work were created with the help of LLM tools. The paper's abstract and introduction were written with the assistance of ChatGPT-4, and other parts of the process (e.g., discussions and clarifications) were supported by LLM. A record of LLM usage can be found in the file located at other/llm/usage.txt.
