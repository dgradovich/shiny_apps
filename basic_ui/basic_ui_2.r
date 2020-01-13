library(shiny)

ui <- fluidPage(
  sliderInput(inputId='delivery_date',
              label='When should we deliver?',
              min = as.Date("2019-08-09","%Y-%m-%d"),
              max = as.Date("2019-08-16","%Y-%m-%d"),
              value=as.Date("2019-08-10"),
              timeFormat="%Y-%m-%d"))


server <- function(input, output, session) {

}

shinyApp(ui = ui, 
         server = server)