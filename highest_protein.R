#' Find the highest protein item
#'
#' This function returns the menu item with the most protein.
#'
#' @param data A dataframe with nutrition info
#' @return A row showing the item with the highest protein
#' @export

highest_protein <- function(data) {
  data[which.max(data$protein), ]
}
