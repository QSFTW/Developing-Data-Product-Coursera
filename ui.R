#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal Distribution Simulation"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       numericInput("number", "Number of points:", 
                    value = 500, min=1, max= 1000, step = 1),
       
       numericInput("miu", "Population mean:",
                   min = -100, max = 100, value = 0),
       
       numericInput("var", "Population variance:", 
                   min=-100, max = 100, value = 1),
       
       numericInput("bin","Number of bins:", 
                    min = 5, max = 100, value =30, step = 1),
       
       checkboxInput("showx", "Show/Hide X label", value = T),
       checkboxInput("showy", "Show/Hide Y label", value = T),
       checkboxInput("showt", "Show/Hide Title")
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("norm")
    )
  )
))
