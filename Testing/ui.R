#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Landeplatz Nachhaltigkeitsscore"),

    # Sidebar with filter options for customers table
    sidebarLayout(
        sidebarPanel(
          h4("Filter der Kunden"),
            sliderInput("Alter",
                        "Alter",
                        min = 1,
                        max = 100,
                        value = c(10,80),
                        dragRange = TRUE)
        ),

        # Show the table of customers
        mainPanel(
          
          DT::dataTableOutput("customers")
            
        )
    )
))
