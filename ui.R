library(shiny)

# Define UI for application that plots random distributions 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Allo!"),
  
  # Sidebar with a slider input for number of observations
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", 
                  "Nombre de catégories:", 
                  min = 2, 
                  max = 20, 
                  value = 4)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      plotOutput("distPlot"),
      tableOutput("distTable")
      
    )
  )
))
