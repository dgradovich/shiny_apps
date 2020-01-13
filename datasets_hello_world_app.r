library('shiny')

ui <- fluidPage(
  selectInput('dataset', label = 'Dataset', choices = ls('package:datasets')),
  verbatimTextOutput('summary'),
  tableOutput('table')
)

server <- function(input, output, session){
  
  # retrieve a dataset reactively
  retrieve_dataset <- reactive({
    get(input$dataset, 'package:datasets')
  })
  
  output$summary <- renderPrint({
    dataset <- retrieve_dataset()
    summary(dataset)
  })
  
  output$table <- renderTable({
    dataset <- retrieve_dataset()
  })
}

shinyApp(ui = ui,  server = server)
