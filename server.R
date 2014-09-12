library(shiny)
library(datasets)

shinyServer(function(input,output){
  
  output$plot <- renderPlot({
    
    x <- USArrests$UrbanPop
    y <- USArrests[,c(input$checks)]
    reg <- lm(y~x)
    
    plot(x, y, 
         xlab = "% of Population in Urban Areas",
         ylab = "Arrests per 100,000 population", 
         main = paste("R^2 = ", round(summary(reg)$r.squared,3),
                      "\nSlope = ", round(summary(reg)$coefficients["x", "Estimate"],3)))
    abline(reg)
  })

}
)