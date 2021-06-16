#' Backend: OpenEdge
#'
#' Based on Microsoft SQL Server implementation. Subclasses the simulated DBI
#' for Microsoft SQL.
#' * `SELECT` uses `TOP` not `LIMIT`
#' * Analysis uses `UPDATE STATISTICS` rather than `ANALYZE`
#'
#' @name backend-openedge
NULL

#' @export
simulate_openedge <- function()
  dbplyr::simulate_dbi(c("OpenEdge", "Microsoft SQL Server"),
                       version = numeric_version("15.0"))
