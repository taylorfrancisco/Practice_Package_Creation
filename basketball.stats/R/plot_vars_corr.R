#' plot_vars_corr
#'
#' @param df
#' @param year
#'
#' @return a correlogram plot of all numeric variables for specified year.
#' @export
#'
#' @examples
function(df, year){
  numeric_only <- df %>% filter(Year == year) %>%
    keep(is.numeric)
  cormat <- round(cor(numeric_only),2)
  melted_cormat <- melt(cormat)
  head(melted_cormat)
  ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) +
    geom_tile()+
    scale_fill_gradient2(low = "blue", high = "red", mid = "white",
                         midpoint = 0, limit = c(-1,1), space = "Lab",
                         name="Pearson\nCorrelation") +
    theme_minimal()+
    theme(axis.text = element_text(angle = 45, vjust = 1,
                                   size = 5, hjust = 1))+
    coord_fixed()
}
