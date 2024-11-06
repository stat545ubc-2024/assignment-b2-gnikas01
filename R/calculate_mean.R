#' Calculate Mean with Optional Rounding
#'
#' This function calculates the mean of a numeric vector, excluding NA values,
#' and allows for optional rounding of the result.
#'
#' @param x A numeric vector. This parameter is named 'x' as it is a common convention in statistics to denote a variable or dataset.
#' @param round_to Number of decimal places to round the result to (default is NULL, meaning no rounding). The name 'round_to' clearly indicates its purpose of specifying how many decimal places the output should be rounded to.
#'
#' @return The mean of the input vector, optionally rounded to the specified number of decimal places. If no rounding is specified, it returns the mean as a numeric value.
#' @examples
#' calculate_mean(c(1, 2, 3, 4, 5))
#' calculate_mean(c(1, 2, 3, NA, 5))
#' calculate_mean(c(1.11, 2.22, 3.33, NA, 5.55), round_to = 1)
#'
#' @export

calculate_mean <- function(x, round_to = NULL) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector")
  }

  mean_value <- mean(x, na.rm = TRUE)

  if (!is.null(round_to)) {
    if (!is.numeric(round_to) || round_to < 0) {
      stop("round_to must be a non-negative number")
    }
    mean_value <- round(mean_value, digits = round_to)
  }

  return(mean_value)
}
