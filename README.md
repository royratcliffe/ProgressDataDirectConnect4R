
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ProgressDataDirectConnect4R

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/ProgressDataDirectConnect4R)](https://CRAN.R-project.org/package=ProgressDataDirectConnect4R)

<!-- badges: end -->

Package has three main goals.

-   Provide an OpenEdge DBI driver for R.

-   Support `dbplyr` generics.

-   Allow for future expansion using other DataDirect Connect Java
    connectors.

## Installation

You can install the released version of ProgressDataDirectConnect4R from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ProgressDataDirectConnect4R")
```

Install the development branch using

``` r
remotes::install_github("data-science-r/ProgressDataDirectConnect4R@develop")
```

Once loaded, you can load the OpenEdge JDBC driver using

``` r
ProgressDataDirectConnect4R::OpenEdge()
```

or alternatively

``` r
DBI::dbDriver("OpenEdge")
```

for indirectly finding the driver using `DBI`. Both return a
`JDBCDriver`, an S4 wrapper for the underlying Java driver that can
serve as a driver argument for DBI connections.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ProgressDataDirectConnect4R)
#> Loading required package: RJDBC
#> Loading required package: DBI
#> Loading required package: rJava
## basic example code
```

## Requirements

Needs Java and for Windows you also need `JAVA_HOME`. On Windows you can
use Chocolatey to install AdoptOpenJDK 11, or some later version. You
might see messages such as the error below.

    error: JAVA_HOME cannot be determined from the Registry

You can set up the environment variable directly from R on Windows using

``` r
Sys.setenv(JAVA_HOME = "C:/Program Files/AdoptOpenJDK/jdk-11.0.11.9-hotspot")
```

## Dependencies

Depends on `RJDBC` which itself depends on `DBI` and `rJava` packages.
It appears in the package description under `Depends` rather than
`Imports`. Loading this package loads `RJDBC` as a pre-requisite.

## Downloads

Downloads the evaluation
[Jar](https://media.datadirect.com/download/files/evals/JDBC/PROGRESS_DATADIRECT_JDBC_OE_ALL.jar)
from Progress. Temporarily unpacks the resources.

The underlying Java JAR comes from Progress.

Progress supply the drivers under 15-day evaluation. However, the JAR
continues to work after 15 days without trouble. It was originally
downloaded in June 2021 as the DataDirect Connect for JDBC 5.1 SP4. So
far, so good.

## Continuous Integration

Uses `rocker/ml-verse` for testing and coverage. This image incorporates
the `rJava` package and the Java Run-time Environment. The image has a
disadvantage: the size is big, around six and a half gigabytes. Pulling
it slows down integration steps.

Note that package checking requires no errors *and* no warnings for
success. Job success allows for only “notes.”
