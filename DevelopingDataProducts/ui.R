## Felipe Godoi Rosario
## 23/07/2014

library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("1920's cars breaking distance vs. speed"),
  sidebarPanel(
    sliderInput('UIspeed', 'Set the speed', value = 15, min = 5, max = 25, step = 1,)
  ),
  mainPanel(
    plotOutput('newPlot'),
    helpText("The data give the speed of cars and the distances taken to stop and were recorded in the 1920s. It's a data frame with 50 observations on 2 variables."),
    helpText("The line represents a linear model that's used to predict the braking distance of a car according to its speed."),
    helpText("Use the slider to set the desired speed and the application returns the predicted braking distance as a black point in the graph and as text.")
  )
))
