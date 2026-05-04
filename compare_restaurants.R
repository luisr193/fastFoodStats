#' Compare restaurants by average calories
#'
#' This function calculates the average calories for each restaurant.
#'
#' @param data A dataframe
#' @return A table showing average calories by restaurant
#' @export

compare_restaurants <- function(data) {
  stats::aggregate(calories ~ restaurant, data = data, mean)
}
