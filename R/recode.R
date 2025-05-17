
#' Recode key DHS categorical variables
#'
#' This function recodes common DHS variables (sex, residence, religion) into labeled factors.
#'
#' @param df A data.frame containing DHS variables.
#' @return A data.frame with recoded variables.
#' @export
recode_dhs_vars <- function(df) {
  df %>%
    mutate(
      sex = factor(sex, levels = c(1, 2), labels = c("Women", "Men")),
      v025 = factor(v025, levels = c(1, 2), labels = c("urban", "rural")),
      v130 = factor(v130, levels = c(1:9, 96),
                    labels = c("catholic", "methodist", "assembly of god",
                               "universal", "jehovah's witnesses", "protestant",
                               "islamic", "animist", "no religion", "other"))
    )
}
