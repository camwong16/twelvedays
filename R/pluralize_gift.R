#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#'
#' @export
pluralize_gift <- function(gift){

gift <- gift %>%
  str_replace("y$", "ies") %>% 
  str_replace("oo", "ee") %>% 
  str_replace("(?<!s)$", "s")
return(gift)

}
