# trim_filter ------------------------------------------------------------------
#' From a dataframe, filter out obs with 'varname' below A & above B percent
#' Note that the function allows either the bottom or the ceiling to be missing.
#' @importFrom magrittr %>%
#' @import dplyr
#' @export
trim_filter <- function(df, varname, lowpct, uppct) {
  if (missing(varname)) {print("ERROR")}
  lowpct <- if (missing(lowpct)) {0} else {lowpct/100}
  uppct  <- if (missing(uppct))  {1} else {uppct/100}

  varnm <- enquo(varname)
  df <-
    df %>%
    filter(and(!!varnm >= quantile(!!varnm, lowpct, na.rm = TRUE),
               !!varnm <= quantile(!!varnm, uppct, na.rm = TRUE)))
  return(df)
}
