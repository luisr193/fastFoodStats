fastfood <- data.frame(
  restaurant = c(
    "McDonalds", "McDonalds", "McDonalds",
    "Chick-fil-A", "Chick-fil-A",
    "Taco Bell", "Taco Bell",
    "Wendy's", "Wendy's"
  ),
  item = c(
    "Big Mac", "Fries", "McChicken",
    "Chicken Sandwich", "Nuggets",
    "Burrito", "Crunchwrap",
    "Baconator", "Spicy Chicken Sandwich"
  ),
  calories = c(
    550, 340, 400,
    420, 260,
    500, 540,
    950, 500
  ),
  protein = c(
    25, 4, 14,
    28, 19,
    18, 12,
    60, 28
  ),
  sugar = c(
    9, 0, 5,
    6, 1,
    3, 6,
    7, 4
  ),
  fat = c(
    30, 16, 20,
    18, 12,
    22, 30,
    65, 25
  ),
  sodium = c(
    950, 270, 800,
    700, 650,
    1100, 1200,
    1500, 900
  )
)

usethis::use_data(fastfood, overwrite = TRUE)

