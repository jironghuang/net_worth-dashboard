library(shiny)
library(ggplot2)

dataset <- diamonds

fluidPage(
  
  titlePanel("Feedback loop machines"),
  
  sidebarPanel(
    
    radioButtons("radio", label = h3("Radio buttons"),
                 choices = list("Net Worth Including CPF" = 3, "Net Worth excluding CPF" = 2, "Portfolio" = 1), 
                 selected = 1),
    
    hr(),
    fluidRow(column(2, verbatimTextOutput("value")))  
    
  ),
  
  mainPanel(
    plotOutput('plot')
  )
)