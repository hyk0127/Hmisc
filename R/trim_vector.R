# trim_vector ------------------------------------------------------------------
#' Trim a vector below A percent & above B percent.
#' Note that the function allows either the bottom or the ceiling to be missing.
#' @importFrom magrittr %>%
#' @import dplyr
#' @export
trim_vector <- function(vec, lowpct, uppct) {
  lowpct <- if (missing(lowpct)) {0} else {lowpct/100}
  uppct  <- if (missing(uppct))  {1} else {uppct/100}

  vec <-
    vec[and(vec >= quantile(vec, lowpct, na.rm = TRUE),
            vec <= quantile(vec, uppct, na.rm = TRUE))]

  return(vec)
}
