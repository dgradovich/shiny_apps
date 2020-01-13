library('shiny')

ui <- fluidPage(
  textInput('name', 'What is your name?'),
  textOutput('greeting')
)

server <- function(input, output, session){
  output$greeting <- renderText({
    paste0('Hello ', input$name)
  })
}

shinyApp(ui = ui,  server = server)
  