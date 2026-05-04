#' Find the lowest calorie item
#'
#' This function returns the item with the least calories.
#'
#' @param data A dataframe
#' @return A row with the lowest calorie item
#' @export
lowest_calories <- function(data) {
  data[which.min(data$calories), ]
}

