#' Find the lowest sugar item
#'
#' This function returns the item with the least sugar.
#'
#' @param data A dataframe
#' @return A row with the lowest sugar item
#' @export

lowest_sugar <- function(data) {
  data[which.min(data$sugar), ]
}
