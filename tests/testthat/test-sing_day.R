library(testthat)
library(twelvedays)

test_check("twelvedays")



testthat::test_that("sing_day requires a dataset as an input", {
  testthat::expect_error(sing_day(line = 1, numwords_col = "first", phrase_col = "a bottleneck on the freeway"))
})

