# view_s -----------------------------------------------------------------------
#' view() with commonly used number of observations(100, 1000, 10000)
#' @param obj data object
#' @export

view_s <- function(obj) {
  return(View(head(obj, n = 100)))
}
