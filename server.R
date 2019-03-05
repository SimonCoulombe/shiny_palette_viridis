library(shiny)
library(scales)
library(viridis)
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  # Expression that generates a plot of the distribution. The expression
  # is wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
  output$distPlot <- renderPlot({
    
    # generate an rnorm distribution and plot it
    (scales::show_col(viridis::viridis_pal(option = "viridis")(input$obs)))
  })
  
  
  output$distTable <- renderTable({
    
    # generate an rnorm distribution and plot it
    (t(col2rgb(viridis::viridis_pal()(input$obs) )))
  })
  
  
  
})
