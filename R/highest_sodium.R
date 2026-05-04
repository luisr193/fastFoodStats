#' Find the highest sodium item
#'
#' This function returns the item with the most sodium.
#'
#' @param data A dataframe
#' @return A row with the highest sodium value
#' @export

highest_sodium <- function(data) {
  data[which.max(data$sodium), ]
}
