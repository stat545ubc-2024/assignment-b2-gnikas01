# Test 1: Vector of length 0
test_that("calculate_mean function works correctly",
          expect_equal(calculate_mean(numeric(0)), NaN))

# Test 2: Error for invalid rounding parameter using round_to = -1
test_results <- test_that("calculate_mean function works correctly",
                          expect_error(calculate_mean(c(1, 2, 3), round_to = -1), "round_to must be a non-negative number"))

# Test 3: Error for non-numeric input
test_results <- test_that("calculate_mean function works correctly",
                          expect_error(calculate_mean(c("a", "b", "c")), "Input must be a numeric vector"))
