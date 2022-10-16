# load_id ---------------------------------------------------------------------
#' Automate loading with appropriate id code -- mirror of save_id
#'
#' @importFrom magrittr %>%
#' @import dplyr
#  @param obj object to save
#' @param file directory into which I wish to load from
#' @param id identification of the code that I am using ("107", etc.)
#' @param nm name of the file
#' @examples
#' @export

load_id <- function(file = "./data/", no, id = saveid) {
  if (missing(file)) {file <- "./data/"}
  file_nm <-
    ifelse(missing(no),
           paste0(deparse(substitute(obj)), ".Rda"),
           paste0(deparse(substitute(obj)), "_", no, ".Rda"))
  load(paste0(file, id, "_", file_nm))
  rm(file_nm, file, no, id)
  get(ls()[ls() != "fileName"])
}

