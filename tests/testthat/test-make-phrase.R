library(testthat)
library(twelvedays)

test_check("twelvedays")


testthat::test_that("make_phrase can handle any combination of words" , {
  testthat::expect_equal(make_phrase(item = "cars", num = 3, adjective = "blue"), "three blue cars")
  testthat::expect_equal(make_phrase(item = "cars", num = 3, verb = "running", adjective = "blue", location = ""), c("three blue cars running"))
  testthat::expect_equal(make_phrase(item = "cars", num = 3, verb = "running", adjective = "blue", location = ""), glue::glue("three blue cars running"))
})


# The function shows that there are no defaults for the arguments used in `make_phrase()`. We must at least have closed
# paraenthesis with nothing so r can read interpret the value as NA which it knows what to do with.

# Another thing to note is the object type that us returned. The class is glue/character with a sub class of character vector.
# Since it wasn't specified as a class glue there was an error.

# Lastly, there are spaces we should expect where there are missing values along with a period at the end of each phrase.

