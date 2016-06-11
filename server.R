library(shiny)
library(datasets)
data(mtcars)

mpg_calc <- function(a,b) {
  car_data <- mtcars
  hpcyl_data <- car_data[car_data$cyl %in% a, ]
  hpcyl_data <- car_data[car_data$cyl %in% a & car_data$hp <= b, ]
  
  miles_per_gallon <- summary(hpcyl_data$mpg)
  return (miles_per_gallon)
}


shinyServer(
  function(input, output) {
    output$mpg_data <- renderPrint(mpg_calc(input$cyl, input$hp))
  }
) 