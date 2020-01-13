library(shiny)

ui <- fluidPage(
  textInput(inputId = 'name',
            label = '',
            placeholder = 'Your name')
)

server <- function(input, output, session) {

}

shinyApp(ui = ui, 
         server = server)