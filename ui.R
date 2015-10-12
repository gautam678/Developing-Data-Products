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
    showOutput("myChart", "polycharts")
  )
))