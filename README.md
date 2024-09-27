# Trends in Toronto's Licensed Childcare Centres: Analyzing Age Group Capacity and Availability Disparities

## Overview

This GitHub Repository contains all files used to generate the paper "Trends in Toronto's Licensed Childcare Centres: Analyzing Age Group Capacity and Availability Disparities."

Some of the R code used to create this work was adapted from Cleveland (2018) and Alexander (2023). The dataset uses geographic coordinates (latitude and longitude) based on the NAD27 datum (North American Datum of 1927), a geodetic reference system primarily used in North America. This system ensures precise location data for each child care center, facilitating accurate mapping and spatial analysis across Toronto.

The R code was checked for style and syntax using the lintr and styler packages to ensure code quality and readability.

## File Structure

The repo is structured as:

- `inputs/data` includes the raw data used in this investigation on childcare spaces in Toronto.
- `inputs/literature` includes copies of references used in this analysis, particularly on urban childcare disparities and policy.
- `outputs/data` includes the cleaned data used in this paper.
- `outputs/graph` includes generated graph using the cleaned data.
- `outputs/paper` includes a PDF version of the final paper, the Quarto file used to create the PDF, and a file containing the references for the paper.
- `scripts` includes R scripts for data simulation, downloading, cleaning, and analysis.
- `other/llm` includes a record of LLM usage in the text format.
- `other/sketches` includes drafts of graphs and summaries used in this report.

## Statement on LLM usage

Aspects of this work were created with the help of LLM tools. The paper's abstract and introduction were written with the assistance of ChatGPT-4, and other parts of the process (e.g., discussions and clarifications) were supported by LLM. A record of LLM usage can be found in the file located at other/llm/usage.txt.
