# view_top ---------------------------------------------------------------------
#' Get only the most common occurrences and their frequencies
#'
#' @importFrom magrittr %>%
#' @import dplyr
#' @param vec vector of observations
#' @param num how many top results to see
#' @return Top \code{num} common occurrences among \code{vec}.
#'
#' If \code{num} is not present, then all results will be shown
#' @examples
#' view_top(c(1,1,2,2,2,3,3,3,3,4), 2)
#' @export
view_top <- function(vec, num) {
  temp <-
    vec %>%
    table %>%
    as.data.frame(stringsAsFactors = FALSE) %>%
    magrittr::set_colnames(c("val", "freq")) %>%
    arrange(desc(freq))
  if (missing(num)) {
    return(temp)
  } else {
    return(temp %>% head(n = num))
  }
}

# View_top ---------------------------------------------------------------------
#' View only the most common occurrences and their frequencies
#'
#' @describeIn view_top To directly "View" the resulting dataframe
#' @export
View_top <- function(vec, num) {
  temp <-
    vec %>%
    table %>%
    as.data.frame(stringsAsFactors = FALSE) %>%
    magrittr::set_colnames(c("val", "freq")) %>%
    arrange(desc(freq))
  if (!missing(num)) {
    temp <- temp %>% head(n = num)
  }
  View(temp)
}
