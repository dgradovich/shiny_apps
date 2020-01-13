library('shiny')

ui <- fluidPage(
  sliderInput('integer_x', 'If x is', min=0, max=50, value = 0),
  sliderInput('integer_y', 'and y is', min=0, max=50, value = 0),
  textOutput('multiplied_integer')
)

server <- function(input, output, session){
  
  compute_integer <- reactive({
    as.numeric(input$integer_x) * as.numeric(input$integer_y)
  })
  output$multiplied_integer <- renderText({
    paste0(
      'then, x multiplied by y is ',
      compute_integer()
    )
  })
}

shinyApp(ui = ui,  server = server)
