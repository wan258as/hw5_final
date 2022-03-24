#' Creating a correlation matrix for all numeric variables
#'
#' This function finds out the correlation matrix 
#' for all numeric variables in the data given the user input year.
#' 
#' @param The Year in which the user wants to find out
#' @return The correlation matrix for all numeric variables
#' @export


Continuous_cor = function(year) {
  chosen_year = dplyr::filter(df, Year == year)
  chosen_year_cont = chosen_year[,sapply(chosen_year,is.numeric)]
  return(cor(chosen_year_cont))
}
  