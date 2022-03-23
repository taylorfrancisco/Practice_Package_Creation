#' get_stat
#'
#' @param df
#' @param year
#' @param player
#' @param position
#'
#' @return the particular statistic for that player in the specified year
#' @export
#'
#' @examples
function(df, year, player, position) {
  df %>% filter(Year == year, Player == player) %>%
    select(position)
}
