# This function takes a dataframe with a variable called "place" and calculates points

calculate_points <- function(df, place) {
  tot <- df %>% 
    mutate(points = case_when(
      place == 1 ~ 32,
      place == 2 ~ 26,
      place == 3 ~ 21,
      place == 4 ~ 19,
      between(place, 5, 8) ~ 14,
      between(place, 9, 16) ~  8,
      between(place, 17, 32) ~ 4
    ))
}


