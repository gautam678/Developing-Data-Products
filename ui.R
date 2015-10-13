require(rCharts)
shinyUI(pageWithSidebar(
  headerPanel("Comparing trees"),
  
  sidebarPanel(
    selectInput(inputId = "x",
                label = "Choose X",
                choices = c('Girth', 'Height', 'Volume'),
                selected = "Height"),
    selectInput(inputId = "y",
                label = "Choose Y",
                choices = c('Girth', 'Height', 'Volume'),
                selected = "Volume")

    
  ),
  mainPanel(
    h1('Graph to compare relation between different parameters'),
    p('The dataset taken in this case is the trees dataset which has the following parameters : Height, Volume and Girth. I have plotted a graph between any of the parameters. The graph is user controlled where the user can switch between any of the three parameters.'),
    showOutput("myChart", "polycharts")
  )
))
