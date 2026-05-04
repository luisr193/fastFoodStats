#' Plot calories for each item
#'
#' This function creates a simple bar chart of calories
#' for each menu item.
#'
#' @param data A dataframe
#' @export

plot_calories <- function(data) {
  ggplot2::ggplot(data, ggplot2::aes(x = item, y = calories, fill = restaurant)) +
    ggplot2::geom_col() +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = "Calories by Menu Item",
      x = "Item",
      y = "Calories"
    )
}
