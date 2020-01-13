library(shiny)

ui <- fluidPage(
  sliderInput(inputId='animated_slidert',
              label='',
              min = 0,
              max = 100,
              value= 0,
              step=5,
              animate=animationOptions(loop = TRUE)))


server <- function(input, output, session) {

}

shinyApp(ui = ui, 
         server = server)