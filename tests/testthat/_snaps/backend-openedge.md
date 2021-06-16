# lazy frame works

    Code
      lf %>% dplyr::filter(is.na(x))
    Output
      <SQL>
      SELECT *
      FROM `df`
      WHERE (((`x`) IS NULL))

# analyses in-schema

    Code
      dbplyr::sql_table_analyze(simulate_openedge(), dbplyr::in_schema("schema",
        "table"))
    Output
      <SQL> UPDATE STATISTICS `schema`.`table`

# head translates to TOP

    Code
      lf %>% head() %>% dbplyr::sql_render()
    Output
      <SQL> SELECT TOP 6 *
      FROM `df`

