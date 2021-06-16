unzip.Resource1.zip <- function(exdir = tempdir()) {
  jar <- tempfile(fileext = ".jar")
  download.file("https://media.datadirect.com/download/files/evals/JDBC/PROGRESS_DATADIRECT_JDBC_OE_ALL.jar", jar)
  Resource1.zip <- file.path("Disk1", "InstData", "Resource1.zip")
  unzip(jar, files = Resource1.zip, exdir = exdir)
  file.path(exdir, Resource1.zip)
}

#' Downloads and unzips DataDirect Connect for JDBC from Progress
#'
#' Downloads the 45-megabyte DataDirect JDBC evaluation. Skips the name and
#' e-mail requirement.
#'
#' @param exdir Directory to extract Jar files to; created if necessary.
#' @export
unzip.jars <- function(exdir = tempdir()) {
  unzip(unzip.Resource1.zip(), exdir = exdir)
  files <- list.files(file.path(exdir, "$IA_PROJECT_DIR$", "lib"), "*.jar", full.names = TRUE)
  file.copy(files, file.path(getwd(), "inst", "java"))
  invisible()
}
