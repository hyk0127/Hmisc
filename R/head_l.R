# head_l -----------------------------------------------------------------------
#' head() with commonly used number of observations(100, 1000, 10000)
#'
#' @describeIn head_s head(n = 10000)
#' @export

head_l <- function(obj) {
  return(head(obj, n = 10000))
}
