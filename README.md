
# labPlots

This repo contains the functions of the `labPlots` package, which, once
installed locally, provides useful functions for creating graphics made
in ggplot2 in the Collins Lab style. The package and this doc borrows
(steals) heavily from the `bbplots` package and makes use of the
`ggPrism` code for adding P values to plots (as an aside, if you want
your plots to look like they were made in GraphPad prism, the `ggprism`
package is for you!).

## Installation

You can install the development version of `labPlots` like so:

``` r
# install.packages("devtools")
devtools::install_github("JT-Collins/labPlots")

library('labPlots')
```

## How does the labPlot package work?

The package has three functions,`lab_fonts()`, `lab_style()`, and
`add_pvalue()`.

`lab_fonts()`: Sets fonts to Gotham Book - you need to have this
installed on your computer. Run it once at the start of a session.

`lab_style()`: Has no arguments and is added to the ggplot ‘chain’ after
you have created a plot. It generally makes text size, font and colour,
axis lines, axis text, margins, and many other standard chart components
into Lab style.

Note that colours for lines in the case of a line chart or bars for a
bar chart, are based on the UofL colour scheme but can be set to other
colours where needed.

`add_pvalue()` can add the p values to a plot. These need to be
calculated first using any suitable method; see
[Here](https://csdaw.github.io/ggprism/articles/pvalues.html) for
details. If you want to use an R package that will output your P-value
in the correct format, then `rstatix` is very useful. See
[Here](https://github.com/kassambara/rstatix) for in-depth info.

An example of the labplots can be found at
`system.file("Cookbook.html", package = "labPlots")` once installed. You
can open the file from R by running
`browseURL(system.file("Cookbook.html", package = "labPlots"))`
