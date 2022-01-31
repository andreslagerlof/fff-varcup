# This function takes a dataframe with a variable called "place" and calculates points

calculate_points <- function(df, place) {
  tot <- df %>% 
    mutate(points = case_when(
      place == 1 ~ 32,
      place == 2 ~ 26,
      place == 3 ~ 21,
      place == 4 ~ 19,
      place => 5 ~ 14,
      place => 9 ~  8,
      place => 17 ~ 4
    ))
}


