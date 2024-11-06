
<!-- README.md is generated from README.Rmd. Please edit that file -->

# advancedmeancalculator

<!-- badges: start -->
<!-- badges: end -->

The goal of `advancedmeancalculator` package is to provide a simple and
flexible function `calculate_mean` for calculating the mean of numeric
vectors, with optional rounding capabilities. It handles NA values and
allows users to specify the number of decimal places for rounding.

## Installation

To use the `advancedmeancalculator` package, first install and load the
package `devtools`.

``` r
#install and load devtools
install.packages("devtools")
#> Installing package into '/private/var/folders/xf/82fyddy11915wxhsf7l0gh_h0000gn/T/Rtmp6hCj4N/temp_libpath110842890e16'
#> (as 'lib' is unspecified)
#> 
#> The downloaded binary packages are in
#>  /var/folders/xf/82fyddy11915wxhsf7l0gh_h0000gn/T//RtmpXyFGYM/downloaded_packages
library(devtools)
#> Loading required package: usethis
#> Warning: package 'usethis' was built under R version 4.3.3
```

Next, install `advancedmeancalculator` from GitHub.

``` r
install_github("stat545ubc-2024/assignment-b2-gnikas01/advancedmeancalculator")
#> Using GitHub PAT from the git credential store.
#> Downloading GitHub repo stat545ubc-2024/assignment-b2-gnikas01@HEAD
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/private/var/folders/xf/82fyddy11915wxhsf7l0gh_h0000gn/T/RtmpXyFGYM/remotes121e12745ac/stat545ubc-2024-assignment-b2-gnikas01-7f36f1c7ede7d6c9e47b212794b8ca63bcf8d886/advancedmeancalculator/DESCRIPTION’ ... OK
#> * preparing ‘advancedmeancalculator’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> Omitted ‘LazyData’ from DESCRIPTION
#> * building ‘advancedmeancalculator_0.1.0.tar.gz’
#> Installing package into '/private/var/folders/xf/82fyddy11915wxhsf7l0gh_h0000gn/T/Rtmp6hCj4N/temp_libpath110842890e16'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# Load the package
library(advancedmeancalculator)

# Generate a numerical vector with an NA value
vector_NA <- c(1, 2, 3, NA, 5)

# Usage of calculate_mean function with a vector containing an NA value
example_result <- calculate_mean(vector_NA)
print(paste("Mean of vector_NA:", example_result))
#> [1] "Mean of vector_NA: 2.75"
```
