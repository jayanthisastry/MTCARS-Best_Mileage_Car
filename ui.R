library(shiny)
require(markdown)

shinyUI(
  fluidPage(
    
    titlePanel("MTCARS-Best_Mileage_Car"),
    
    sidebarPanel(
      h4('Input cylinders & horse power'),
      radioButtons("am","Transmission Type",c("Automatic" = "0","Manual" = "1")),
      checkboxGroupInput('cyl', 'Number of cylinders:', c("4"=4, "6"=6, "8"=8), selected = c(4,6,8)),
      numericInput('hp','Horse power(50 - 250): ', 80,min = 50,max = 250,step = 10)
      ),
    
    mainPanel(
      h3("Miles Per gallon calculation based on HP and number of cylinders"),
      h4('Miles Per Gallon Summary:'),
      verbatimTextOutput("mpg_data")  
    )
  )
)