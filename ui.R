library(shiny)

shinyUI(fluidPage(
  
    titlePanel("Compare Urban Population Rate to Total Arrest by Type in 1973"),
    
    sidebarLayout(
      sidebarPanel(
        radioButtons(inputId = "checks", label = "", 
                     choices=colnames(USArrests)[colnames(USArrests) != "UrbanPop"]),
        hr(),
        helpText(paste("Select an arrest type to see a scatter plot of the arrest rate per 100,000 population agains the percentage of urban population by state, a linear regression line, and the R^2 and slope of the regression.\n",
                       "\nAll data is for 1973 from the USArrests R data set."))
        ),
      mainPanel(
        plotOutput("plot")
      )
    )
))