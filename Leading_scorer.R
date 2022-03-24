#' Finding out highest scoring player
#'
#' This function finds out the highest scoring player given the user input year.
#' 
#' @param The Year in which the user wants to find out
#' @return The record of the highest scoring player in the given year
#' @export

leading_scorer = function(year) {
  chosen_year = dplyr::filter(df, Year == year)
  return(dplyr::filter(chosen_year, PTS == max(chosen_year$PTS)))
}
