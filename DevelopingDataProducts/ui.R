## Felipe Godoi Rosario
## 23/07/2014

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("1920's cars breaking distance vs. speed"),
  sidebarPanel(
    sliderInput('UIspeed', 'Set the speed', value = 15, min = 5, max = 25, step = 1,)
  ),
  mainPanel(
    plotOutput('newPlot')
  )
))
