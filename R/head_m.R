# head_m -----------------------------------------------------------------------
#' head() with commonly used number of observations(100, 1000, 10000)
#'
#' @describeIn head_s head(n = 1000)
#' @export

head_m <- function(obj) {
  return(head(obj, n = 1000))
}
