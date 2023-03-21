#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

#tabledata <- read.csv("/userfs/assets/data_asset/fake_customer_csv_shaped-jy3F")
tabledataFull <- read.csv("/userfs/assets/data_asset/fake_customer.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$customers <- DT::renderDataTable({
    tabledataFull
  })
    
})
