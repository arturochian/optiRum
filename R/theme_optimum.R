#' Produce an Optimum-standard base chart
#'
#' This theme no longer builds on the Stephen Few theme from ggthemes, but now produces a chart
#' without an enclosing box, to produce a good baseline for charting in R. 
#' Gets called as would any typical theme.
#'
#' @param base_size Anchor font size
#' @param base_family Font family to use
#' @param ... Allows additional parameters to be passed to further themes
#' 
#' @keywords ggplot2 theme
#' 
#' @export
#' 
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x=1:10,y=1:10),aes(x,y))+theme_optimum()+geom_line()
#' 

theme_optimum <- function(base_size = 14, base_family = "", ...) {
    modifyList(ggplot2::theme_minimal(base_size = base_size, base_family = base_family), list(panel.border = element_rect(fill = NA, colour = "grey50"), legend.position = "bottom", 
        axis.ticks = element_line(colour = "grey90"), panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank(), text = element_text(family = base_family, 
            face = "plain", colour = "grey30", size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 1)))
} 
