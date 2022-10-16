# trim_for_latex ---------------------------------------------------------------
#' Trim numeric digits for exporting & including in LaTex files.
#' @import magrittr
#' @import dplyr
#' @param pct T/F showing whether percentage outputs shoulds be exported
#' @param dg total number of digits to be exported
#' @export
trim_for_latex <- function(str, pct = FALSE, dg = 4) {
  str <-
    ifelse(pct,
           as.character(100 * round(as.numeric(str), dg - 1)),
           as.character(round(as.numeric(str), dg - 1))) %>%
    substr(1, dg) %>%
    gsub("\\.$", "", .)

  return(str)
}
