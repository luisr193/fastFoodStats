#' Find the highest calorie item
#'
#' This function returns the menu item with the most calories.
#'
#' @param data A dataframe with fast food nutrition info
#' @return A row showing the item with the highest calories
#' @export

highest_calories <- function(data) {
  data[which.max(data$calories), ]
}
