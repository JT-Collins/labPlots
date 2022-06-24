#' Add lab theme to ggplot chart
#'
#' This function allows you to add the lab theme to your ggplotgraphics.
#' @keywords lab_style
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' lab_style()


# Set font options --------------------------------------------------------

sysfonts::font_add(family = "assistant",
         regular = "~/Box/Lab Docs/R projects/aesthetics/fonts/Assistant-Regular.otf",
         italic = "~/Box/Lab Docs/R projects/aesthetics/fonts/SourceSansPro-Italic.ttf",
         bold = "~/Box/Lab Docs/R projects/aesthetics/fonts/Assistant-SemiBold.otf")

showtext::showtext_auto(enable = TRUE)


# Set colour options ------------------------------------------------------

uofl_col <- c("#8B9DA1", "#AD0000", "#004E74", "#FEBE10" ,"#00A89D","#7A6C53",  "#AAB43A", "#D9C982")

opts <- options()  # save old options


# Modify ggplot theme -----------------------------------------------------

lab_style <- function() {
  options(ggplot2.continuous.colour="viridis")
  options(ggplot2.continuous.fill = "viridis")
  options(ggplot2.discrete.colour = uofl_col )
  options(ggplot2.discrete.fill = uofl_col )
  font <- "assistant"
  showtext::showtext_opts(dpi = 96)

  ggplot2::theme(

    # Text format:
    text = ggplot2::element_text(family = "assistant", size = 12, color = "#2b2b2b", lineheight = 0.8),
    # This sets the font, size, type and colour of text for the chart's title
    plot.title = ggplot2::element_text(
      family = font,
      size = 20,
      face = "bold",
      color = "#222222",
      margin = ggplot2::margin(0, 0, 7.5, 0, unit = "pt")
    ),
    # This sets the font, size, type and colour of text for the chart's subtitle, as well as setting
    # a margin between the title and the subtitle

    plot.subtitle = ggplot2::element_text(
      family = font,
      size = 12,
      margin = ggplot2::margin(0, 0, 15, 0)
    ),
    plot.caption = ggplot2::element_text(
      family = "assistant", size = 12, hjust = 1,
      vjust = 1, margin = ggplot2::margin(5, 0, 5, 0, unit = "points")
    ),

    # Legend format
    # This sets the position and alignment of the legend, removes background for it and sets the
    # requirements for any text within the legend. The legend may often need some more manual
    # tweaking when it comes to its exact position based on the plot coordinates.

    legend.position = "right",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(
      family = font,
      size = 12,
      color = "#222222"
    ),

    # Axis format
    # This sets the text font, size and colour for the axis text, as well as setting the margins
    # and removes lines and ticks. In some cases, axis lines and axis ticks are things we would
    # want to have in the chart - the cookbook shows examples of how to do so.

    axis.text = ggplot2::element_text(
      family = font,
      size = 12,
      color = "#222222"
    ),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.title.y = ggplot2::element_text(family = "assistant",
                                         size = 12,
                                         hjust = 1,
                                         angle = 90,
                                         margin = ggplot2::margin(0, 5, 10, 0, unit = "pt")),
    axis.title.y.right = ggplot2::element_text(family = "assistant",
                                               size = 12,
                                               hjust = 1,
                                               angle = 90,
                                               margin = ggplot2::margin(0, 0, 0, 3, unit = "pt")),
    axis.title.x = ggplot2::element_text(family = "assistant",
                                         size = 12,
                                         hjust = 1,
                                         margin = ggplot2::margin(5, 0, 0, 0, unit = "pt")),
    axis.title.x.top = ggplot2::element_text(family = "assistant",
                                             margin = ggplot2::margin(0, 0, 3, 0, unit = "pt")),
    axis.line = ggplot2::element_line(size = 0.8, color = "grey30"),

    # Grid lines
    # This removes all gridlines. In some cases you will want to change this. The cookbook shows
    # you examples for doing so

    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_blank(),

    # Blank background
    # This sets the panel background as blank, removing the standard grey ggplot background colour
    # from the plot

    panel.background = ggplot2::element_blank(),

    # Strip background (#This sets the panel background for facet-wrapped plots to white, removing
    # the standard grey ggplot background colour and sets the title size of the facet-wrap title
    # to font size 12)

    strip.background = ggplot2::element_blank(),
    strip.text = ggplot2::element_text(
      size = 12, hjust = 0, colour = "grey10", face = "plain",
      margin = ggplot2::margin(4.6, 4.6, 4.6, 4.6, unit = "pt")
    ),
  )
}
