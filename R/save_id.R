# save_id ---------------------------------------------------------------------
#' Automate saving with appropriate id code
#'
#' @importFrom magrittr %>%
#' @import dplyr
#' @param obj object to save
#' @param file directory into which I wish to save
#' @param id identification of the code that I am using ("107", etc.)
#' @param nm name of the file
#' @return No return, simply the object gets saved to the desired directory
#' @examples
#' save_id(obj, file = "./data/", id = "107", "data_df.Rda")
#' Alternatively, save_id(obj) works, as long as saveid is already defined,
#' name of the obj is data_df, and desired dir is "./data/".
#' @export

save_id <- function(obj, file = "./data/", no, id = saveid) {
  if (missing(file)) {file <- "./data/"}
  file_nm <-
    ifelse(missing(no),
           paste0(deparse(substitute(obj)), ".Rda"),
           paste0(deparse(substitute(obj)), "_", no, ".Rda"))
  save(obj, file = paste0(file, id, "_", file_nm))
}
