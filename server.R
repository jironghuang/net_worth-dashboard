library(shiny)
library(ggplot2)
library(ggrepel)

function(input, output) {
  
  dataset <- reactive({
    diamonds[sample(nrow(diamonds), input$sampleSize),]
  })
  
  output$plot <- renderPlot({
    
    data = read.csv("net_worth.csv",stringsAsFactors = FALSE) 

    #check the data
    # str(data)

    # convert date column to Date as it is currently a **factor**
    data$Date <- as.Date(data$Date,origin = "1899-12-30")


    if (input$radio == 3){
      #basic plot
      p = ggplot(data,aes(Date, Net_Worth_with_CPF)) + geom_line() + geom_point() + geom_text(aes(label = round(Net_Worth_with_CPF/1000,0)),vjust = -5)  + ylim(0,300000)   
    }else if (input$radio == 2){
      p = ggplot(data,aes(Date, Net_Worth)) + geom_line() + geom_point() + geom_text(aes(label = round(Net_Worth/1000,0)),vjust = -5)   + ylim (0,300000)         
    }else if (input$radio == 1){
      p = ggplot(data,aes(Date, Portfolio)) + geom_line() + geom_point() + geom_text(aes(label = round(Portfolio/1000,0)),vjust = -5)   + ylim (0,300000)         
    }  

    print(p)
    
  }, height=700)
  
}
