require(rCharts)
require(ggplot2)
shinyServer(function(input, output) {
  output$myChart <- renderChart({
    names(trees) = gsub("\\.", "", names(trees))
    p1 <- rPlot(input$x, input$y, data = trees, type = 'point')
    p1$addParams(dom = 'myChart')
    return(p1)
  })
})