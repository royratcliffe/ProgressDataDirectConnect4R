skip_if_not(requireNamespace("dbplyr", quietly = TRUE), "dbplyr required but is not installed")

test_that("lazy frame works", {
  lf <- dbplyr::lazy_frame(con = simulate_openedge())
  expect_snapshot(lf %>% dplyr::filter(is.na(x)))
})

test_that("analyses in-schema", {
  expect_snapshot(dbplyr::sql_table_analyze(simulate_openedge(), dbplyr::in_schema("schema", "table")))
})

test_that("head translates to TOP", {
  lf <- dbplyr::lazy_frame(con = simulate_openedge())
  expect_snapshot(lf %>% head() %>% dbplyr::sql_render())
})
