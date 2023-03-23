

server <- function(input, output) {
  
  filterData <- reactive({
    
    filteredData <- mtcars[mtcars$cyl == input$cylSelector,]
    
    return(filteredData)
  })
  
  output$p1 <- renderPlot({
    
    ggplot2::ggplot(data = filterData(), aes_string(x= input$xSelector, y = input$ySelector)) + geom_point()
  
  })
  
  output$d1 <- renderDataTable({
    
    datatable(filterData(), options = list(pageLength = 5,
                                     lengthMenu = c(5, 10, 15, 20)
                                    )
    )
    
  })
}