#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param numwords_col The variable name of the column in the dataset that contains
#' ordinal numbers in a string
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#'
#' @export
sing_day <- function(dataset, numwords_col, line, phrase_col){

    numwords <- dataset %>% 
      pull({{numwords_col}})
    
    numwords <- numwords[line]
  firstline <- glue("On the {numwords} day of Christmas, my true love gave to me")
  
    phrases <- dataset %>% 
      pull({{phrase_col}})
    
  lyrics <- map_chr(line:1, ~glue("{phrases[.x]}")) %>%
    str_remove("\\.")
    
  
  
  fullyrics <- append(lyrics, firstline , 0)

  glue_collapse(fullyrics, sep = ", ", last=", and ")
 
  
}
