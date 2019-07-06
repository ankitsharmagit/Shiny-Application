
library(shiny)


# Load Data

urlfile<-'https://raw.github.com/vibhutesh/dataproducts/master/forestarea.csv'

area <- read.csv(url(urlfile))


# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("Forest Area Cover sq-meter"), 
  
  # Generate a row with a sidebar 
  sidebarLayout( 
    sidebarPanel(
                 selectInput("Region", "Region:",  
                             choices=colnames(area)), 
                 hr(), 
                 helpText("Forest Area Cover") 
    ), 
    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("areaforest")   
    ) 
    
  ) 
) 