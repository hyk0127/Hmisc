# view_m -----------------------------------------------------------------------
#' view() with commonly used number of observations(100, 1000, 10000)
#'
#' @describeIn view_s To directly "View" the resulting dataframe
#' @export

view_m <- function(obj) {
  return(View(head(obj, n = 1000)))
}
