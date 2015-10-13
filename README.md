# Developing-Data-Products Course Project
## Agenda
1. Background
2. Code for plots
3. Guidelines to run the app

#Background 
The dataset taken in this case is the trees dataset which has the following parameters : Height, Volume and Girth.
I have plotted a graph between any of the parameters. The graph is user controlled where the user can switch between any
of the three parameters. 


Code can be found in : [Github repo] (https://github.com/gautam678/Developing-Data-Products)  
App can be found in  : [App link] (https://gautam678.shinyapps.io/APPNAME)  


#Code for plots
```{r}
output$myChart <- renderChart({
    names(trees) = gsub("\\.", "", names(trees))
    p1 <- rPlot(input$x, input$y, data = trees, type = 'point')
    p1$addParams(dom = 'myChart')
    return(p1)
```

#Guidelines to run the app:

1. To run this app locally, fork this repository
2. Set the path of your compiler to the forked repository
3. Then run the code using the command 'runApp()'
