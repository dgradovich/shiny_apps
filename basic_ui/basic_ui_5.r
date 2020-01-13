library(shiny)

ui <- fluidPage(
  numericInput("number", "Select a value", value = 150, min = 0, max = 1000, step = 50))

server <- function(input, output, session) {

}

shinyApp(ui = ui, 
         server = server)