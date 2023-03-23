library(shiny)
library(DT)
library(ggplot2)

## Data Loads go here

data("mtcars")



customers <- read.csv(file = 'data/fake_customer.csv')

## Source any other files

source(server.R, local=TRUE)
source(ui.R, local=TRUE)

## Variable definitions

## Function definitions


# Run the application 
shinyApp(ui = ui, server = server)
