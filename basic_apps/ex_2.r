library('shiny')

ui <- fluidPage(
  sliderInput('integer', 'If x is', min=0, max=50, value = 0),
  textOutput('multiplied_integer')
)

server <- function(input, output, session){
  
  compute_integer <- reactive({
    as.numeric(input$integer) * 5
  })
  output$multiplied_integer <- renderText({
    paste0(
      'then, x multiplied by 5 is ',
      compute_integer()
    )
  })
}

shinyApp(ui = ui,  server = server)
