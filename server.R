#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$norm <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    numPoints <- input$number
    numBin <- input$bin
    miu <- input$miu
    var <- input$var
    showx <- ifelse(input$showx,"Value","")
    showy <- ifelse(input$showy,"Frequency","")
    showt <- ifelse(input$showt,"Histogram for Normal Distribution","")
    
    
    
    # draw the histogram with the specified number of bins
    hist(rnorm(numPoints,miu,var),density = T, xlab = showx, ylab = showy, main = showt, breaks = numBin)
    
  })
  
})
