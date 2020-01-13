library(shiny)

ui <- fluidPage(
  fluidRow(splitLayout(cellWidths=c('50%','50%'),
  plotOutput("plot_a"),
  plotOutput("plot_b")
)))

server <- function(input, output, session) {
  output$plot_a <- renderPlot(plot(1:5))
  output$plot_b <- renderPlot(plot(1:5))
  
}

shinyApp(ui = ui, 
         server = server)