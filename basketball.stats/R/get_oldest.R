#' get_oldest
#'
#' @param df
#' @param year
#'
#' @return oldest player in that year. Note ties are broken by alphebatical order.
#' @export
#'
#' @examples
function(df, year){
  factor(df$Player)
  oldest <- df %>% filter(Year == 2012) %>%
    arrange(Age) %>% filter(Age == max(Age)) %>%
    pull(Player)
  as.list(oldest)
  print(oldest[[1]])
}
