#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#' @import english
#'
#' @export



make_phrase <- function(num, item, verb, adjective, location){

  verb <- str_replace_na(verb, "")
  adjective <- str_replace_na(adjective, "")
  location <- str_replace_na(location, "")
  num <- english::english(num)

  glue_collapse(glue("{num} {adjective} {item} {verb} {location}."))
}

make_phrase(num = 10,
            item = "lords",
            verb = "a-leaping",
            adjective = "",
            location = "")



xmasphrase <- xmas %>%
  mutate(
    Full.Phrase = pmap(list(Day,Gift.Item,Verb,Adjective,Location),make_phrase)
  )

