#' Finding out oldest player
#'
#' This function finds out the older player given the user input year.
#' in the case of player with the same age found,
#' The player on the top of the filter result is going to be returned
#' @keywords HW5nba
#'
#' @param The Year in which the user wants to find out
#' @return The record of the oldest player in the given year
#' @export

oldest_player = function(year) {
  chosen_year = filter(df, Year == year)
  chosen_year_oldest = filter(chosen_year, Age == max(chosen_year$Age))
  return(top_n(chosen_year_oldest,1))
}

