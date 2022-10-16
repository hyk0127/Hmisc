# loadRData ====================================================================
#' load data with a given name
#' Credit to the original author of the function:
#' https://stackoverflow.com/a/25455968/10214507
#' @param fileName directory and name of file
#' @return Load a data to a given name
#' @examples
#' dataA <- loadRData("./data/tempdata.Rda")
#' @export
loadRData <- function(fileName){
  load(fileName)
  get(ls()[ls() != "fileName"])
}
