## Felipe Godoi Rosario
## 23/07/2014

library(shiny)
data(cars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      ## Render plot
      plot(cars, xlab = "Speed (mph)", ylab = "Stopping distance (ft)", 
           las = 1, xlim = c(0, 25))
      
      ## Set Linear Model
      fm <- lm(dist ~ speed, data = cars)
      
      ## Draw Linear Model
      abline(fm)
      
      ## Get input
      x <- input$UIspeed
      
      ## Calculate distance
      y <- predict(fm, data.frame(speed = x))
      
      ## Plot point and text
      text(4, 100, paste("Predicted distance = ", y, " ft"))
      points(x, y, pch=19, lwd = 5)
      
      })
    
  }
)
