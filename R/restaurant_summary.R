#' Get a summary of each restaurant
#'
#' This function gives the average calories, protein, sugar,
#' fat, and sodium for each restaurant.
#'
#' @param data A dataframe
#' @return A summary table by restaurant
#' @export

restaurant_summary <- function(data) {
  stats::aggregate(
    cbind(calories, protein, sugar, fat, sodium) ~ restaurant,
    data = data,
    FUN = mean
  )
}

