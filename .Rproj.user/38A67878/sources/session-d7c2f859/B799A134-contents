# duplicated_all ---------------------------------------------------------------
#' Mark locations of elements within a vector with duplicated entries.
#' Essentially the same function as duplicated, but marks ALL duplications
#' @import magrittr
#' @import dplyr
#' @export
duplicated_all <- function(vec) {
  vec <-
    (duplicated(vec, fromLast = TRUE) | duplicated(vec, fromLast = FALSE))
  return(vec)
}
