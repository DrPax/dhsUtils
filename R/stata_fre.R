
#' Stata-style frequency table
#'
#' Displays frequency, percent, and cumulative percent for a factor variable.
#'
#' @param var A factor variable.
#' @param useNA Logical. Whether to include NA values.
#' @return A printed data frame.
#' @export
stata_fre <- function(var, useNA = FALSE) {
  if (!is.factor(var)) {
    warning("Input variable is not a factor. Attempting to convert.")
    var <- as.factor(var)
  }

  if (!useNA) {
    var <- droplevels(var[!is.na(var)])
  }

  tab <- table(var)
  perc <- prop.table(tab) * 100
  cum_perc <- cumsum(perc)

  df <- data.frame(
    Value = as.numeric(tab),
    Label = names(tab),
    Freq = as.vector(tab),
    Percent = round(perc, 2),
    CumPercent = round(cum_perc, 2)
  )

  print(df, row.names = FALSE)
  invisible(df)
}

#' Stata-style frequency tables for multiple variables
#'
#' Applies stata_fre to each variable in a given list.
#'
#' @param data A data frame.
#' @param vars A character vector of variable names.
#' @export
stata_fre_all <- function(data, vars) {
  for (v in vars) {
    cat("\n\nVariable:", v, "\n")
    stata_fre(data[[v]])
  }
}
