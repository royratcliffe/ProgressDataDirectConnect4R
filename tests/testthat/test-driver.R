test_that("driver loads", {
  expect_type(DBI::dbDriver("OpenEdge"), "S4")
})
