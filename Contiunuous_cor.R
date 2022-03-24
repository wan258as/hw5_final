#' Creating a correlation matrix for all numeric variables
#'
#' This function finds out the correlation matrix
#' for all numeric variables in the data given the user input year.
#'
#' @param The Year in which the user wants to find out
#' @return The correlation matrix for all numeric variables
#' @export


Continuous_cor = function(year) {
  Seasons_Stats_NBA = dplyr::as_tibble(Seasons_Stats_NBA)
  chosen_year = dplyr::filter(Seasons_Stats_NBA, Year == year)
  chosen_year_cont = chosen_year[,sapply(chosen_year,is.numeric)]
  return(cor(chosen_year_cont))
}
