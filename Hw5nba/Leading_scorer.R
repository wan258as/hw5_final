#' Finding out highest scoring player
#'
#' This function finds out the highest scoring player given the user input year.
#'
#' @param The Year in which the user wants to find out
#' @keywords HW5nba
#' @return The record of the highest scoring player in the given year
#' @export

leading_scorer = function(year) {
  Seasons_Stats_NBA = dplyr::as_tibble(Seasons_Stats_NBA)
  chosen_year = dplyr::filter(Seasons_Stats_NBA)
  return(dplyr::filter(chosen_year, PTS == max(chosen_year$PTS)))
}
