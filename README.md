
# fastFoodStats in R

The goal of fastFoodStats is to provide simple tools for analyzing and
comparing nutrition data from popular fast food restaurants. It allows
users to explore calories, protein, sugar, fat, and sodium from
different menu items and restaurants.

## Features

- Compare fast food restaurants
- Find healthiest and least healthy options
- Analyze nutrition trends
- Visualize calorie differences

## Installation

You can install the development version of fastFoodStats like so:

``` r
# install.packages("devtools")
devtools::install_github("luisr193/fastFoodStats")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(fastFoodStats)

# view dataset
fastfood
#>    restaurant                   item calories protein sugar fat sodium
#> 1   McDonalds                Big Mac      550      25     9  30    950
#> 2   McDonalds                  Fries      340       4     0  16    270
#> 3   McDonalds              McChicken      400      14     5  20    800
#> 4 Chick-fil-A       Chicken Sandwich      420      28     6  18    700
#> 5 Chick-fil-A                Nuggets      260      19     1  12    650
#> 6   Taco Bell                Burrito      500      18     3  22   1100
#> 7   Taco Bell             Crunchwrap      540      12     6  30   1200
#> 8     Wendy's              Baconator      950      60     7  65   1500
#> 9     Wendy's Spicy Chicken Sandwich      500      28     4  25    900

# find highest calorie item
highest_calories(fastfood)
#>   restaurant      item calories protein sugar fat sodium
#> 8    Wendy's Baconator      950      60     7  65   1500

# find lowest sugar item
lowest_sugar(fastfood)
#>   restaurant  item calories protein sugar fat sodium
#> 2  McDonalds Fries      340       4     0  16    270

# compare restaurants
compare_restaurants(fastfood)
#>    restaurant calories
#> 1 Chick-fil-A      340
#> 2   McDonalds      430
#> 3   Taco Bell      520
#> 4     Wendy's      725

# summary statistics
restaurant_summary(fastfood)
#>    restaurant calories  protein    sugar fat    sodium
#> 1 Chick-fil-A      340 23.50000 3.500000  15  675.0000
#> 2   McDonalds      430 14.33333 4.666667  22  673.3333
#> 3   Taco Bell      520 15.00000 4.500000  26 1150.0000
#> 4     Wendy's      725 44.00000 5.500000  45 1200.0000
```

## Visualization

``` r
plot_calories(fastfood)
```

<img src="man/figures/README-plot-example-1.png" width="100%" />

``` r
summary(fastfood)
#>   restaurant            item              calories        protein     
#>  Length:9           Length:9           Min.   :260.0   Min.   : 4.00  
#>  Class :character   Class :character   1st Qu.:400.0   1st Qu.:14.00  
#>  Mode  :character   Mode  :character   Median :500.0   Median :19.00  
#>                                        Mean   :495.6   Mean   :23.11  
#>                                        3rd Qu.:540.0   3rd Qu.:28.00  
#>                                        Max.   :950.0   Max.   :60.00  
#>      sugar            fat            sodium      
#>  Min.   :0.000   Min.   :12.00   Min.   : 270.0  
#>  1st Qu.:3.000   1st Qu.:18.00   1st Qu.: 700.0  
#>  Median :5.000   Median :22.00   Median : 900.0  
#>  Mean   :4.556   Mean   :26.44   Mean   : 896.7  
#>  3rd Qu.:6.000   3rd Qu.:30.00   3rd Qu.:1100.0  
#>  Max.   :9.000   Max.   :65.00   Max.   :1500.0
```
