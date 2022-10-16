# head_s -----------------------------------------------------------------------
#' head() with commonly used number of observations(100, 1000, 10000)
#' @param obj data object
#' @export

head_s <- function(obj) {
  return(head(obj, n = 100))
}
