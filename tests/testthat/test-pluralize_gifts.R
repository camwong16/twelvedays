library(testthat)
library(twelvedays)

test_check("twelvedays")

testthat::test_that("pluralize_gift will pluralize special cases", {
  testthat::expect_equal(pluralize_gift("cow"), "cows")
  testthat::expect_equal(pluralize_gift("canary"), "canaries")
  testthat::expect_equal(pluralize_gift("runners"), "runners")
})
