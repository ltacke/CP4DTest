yAxisChoices <- colnames(mtcars)
xAxisChoices <- colnames(mtcars)

ui <- navbarPage("Meaningful title",
           tabPanel("Inputs",
                    selectInput("xSelector", label = "X-Achse wählen:", choices = xAxisChoices),
                    selectInput("ySelector", label = "Y-Achse wählen:", choices = yAxisChoices),
                    sliderInput("cylSelector",
                                "Anzahl Zylinder:",
                                min = min(mtcars$cyl),
                                step = 2,
                                max = max(mtcars$cyl),
                                value = 4),
                    actionButton("refreshPlot", label = "Aktualisieren")
                    ),
            navbarMenu("Outputs",
                       tabPanel("Plot",
                                plotOutput("p1")
                                ),
                       tabPanel("Data",
                                DTOutput("d1")
                                )
                       )
          )

# ui <- fluidPage(
  
#  titlePanel("Meaningful title goes here"),
  
  
#  sidebarLayout(
#    sidebarPanel(
#      selectInput("xSelector", label = "X-Achse wählen:", choices = xAxisChoices),
#      selectInput("ySelector", label = "Y-Achse wählen:", choices = yAxisChoices),
#      sliderInput("cylSelector",
#                  "Anzahl Zylinder:",
#                  min = min(mtcars$cyl),
#                  step = 2,
#                  max = max(mtcars$cyl),
#                  value = 4),
#      actionButton("refreshPlot", label = "Aktualisieren")
#    ),
#    
#    # Show a plot of the generated distribution
#    mainPanel(
#      tabsetPanel(
#        tabPanel("Plot", plotOutput("p1")),
#        tabPanel("Data", dataTableOutput("d1"))
#      )
#      
#    )
#  )
#)