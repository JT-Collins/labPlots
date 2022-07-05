

data <- c("C:/Users/jtcoll06/Box/Lab Docs/R projects/aesthetics/labPlots/Mouse_Experiment_2022-07-05.xlsx")
mouseNum <- 15


rmarkdown::render(input = "C:/Users/jtcoll06/Box/Lab Docs/R projects/aesthetics/labPlots/R/mouseReport.Rmd",
                      output_file = "test_out.html",
                      params = list(data = data,
                                    mouseNum = mouseNum))

