#' @export
OpenEdge <- function(...)
  RJDBC::JDBC(driverClass = "com.ddtek.jdbc.openedge.OpenEdgeDriver",
              classPath = system.file(file.path("java", "openedgewp.jar"), package = packageName()),
              ...)
