# DrugAnalysis_R

## Purpose
To determine if the effects of two drugs on patients have a significant difference. This was done to expand my R programming data analysis skills using data in the healthcare field.

## Libraries Required
```
library(readr)
library(tidyverse)
library(dplyr)
```

## Results

There was no statisitically significant difference (p = .13) between those who took Drug A and those who took Drug B after use of Welch's T-Test. Meaning, the effects of the two drugs were not that different from each other in terms of their effect.

## Limitations + Future Improvements

The dataset had patients with an dwithout a history of a theoretical illness, which impacts the validity of the results I got from my analysis. To resolve this, I shoudl rerun the analysis using subsets of data with and without the history of said illness.
