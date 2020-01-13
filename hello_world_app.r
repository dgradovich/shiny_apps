library('shiny')

ui <- fluidPage(
  'Shiny App'
)

server <- function(input, output, session){}

shinyApp(ui = ui,  server = server)
