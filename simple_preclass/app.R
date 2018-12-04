#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Simple Shiny App"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        ?numericInput(inputId="scoreInput", label="Z Score", value=0)
      ),
      
      # Show a plot of the generated distribution
      mainPanel( "P value",
         return("PVal")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$PVal<-2*pnorm(-abs(input$scoreInput))
}

# Run the application 
shinyApp(ui = ui, server = server)

