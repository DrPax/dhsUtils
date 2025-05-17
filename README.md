# dhsUtils

**Custom R tools for working with Demographic and Health Survey (DHS) data**
Developed by DrPax for use in research, teaching, and training.

---

## 📦 Overview

`dhsUtils` is a lightweight R package that simplifies the process of:
- Recoding DHS variables (e.g., sex, residence, religion)
- Displaying frequency tables in Stata-style format
- Preparing categorical variables for modeling
- Teaching descriptive statistics using labeled survey data

This package is designed for **researchers**, **educators**, and **students** working with DHS datasets in R.

---

## 🔧 Installation

You can install the latest development version directly from GitHub:

```r
# install.packages("devtools")  # if not already installed
devtools::install_github("DrPax/dhsUtils")

USAGE

library(dhsUtils)

# Recode key DHS variables
dhs_clean <- recode_dhs_vars(dhs_raw)

# View frequency distributions (Stata-style)
stata_fre_all(dhs_clean, c("sex", "v025", "v130"))

OUTPUT FORMAT

Variable: sex
Value  Label   Freq  Percent  CumPercent
1      Women   204855  55.71     55.71
2      Men     162862  44.29    100.00

🧰 Functions Included
Function	Description
stata_fre()	Frequency table for a single variable
stata_fre_all()	Batch frequency tables across variables
recode_dhs_vars()	Recodes sex, residence, religion as labeled factors

✨Coming Soon
Additional recoding functions (education, wealth, age groups)
Merge/import helpers for pooling DHS datasets
Survey-weighted analysis templates
Vignettes for teaching descriptive stats

🙌 Acknowledgments
This package draws inspiration from Stata’s fre command and was developed to support applied social science research and classroom instruction in public health and sociology.

📫 Feedback
Have a suggestion or want to contribute?
Open an issue or pull request here: https://github.com/DrPax/dhsUtils
