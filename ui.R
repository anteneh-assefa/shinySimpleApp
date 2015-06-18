library(shiny)

shinyUI(pageWithSidebar(
   
    headerPanel("Fahrenheit to Celsius convertor"),
    
    sidebarPanel(
        
        paste("This program convertes a temprature in degree Farenheit to degree Celcius. Please enter a temprature, select unit and press 'convert'. The result will be displayed in the right side panel."),
        
        numericInput(
            "obs", h3("Enter temprature to convert:"), 0),
        selectInput(
            "unit", h3("Unit"),
            choices = c(paste('oF'))),
        submitButton("convert")  ),
    
    mainPanel(
        img(src="logo.png"),
        h4("You entered:"),
        verbatimTextOutput("obs"),
        h4("which is equivalent to:"),
        verbatimTextOutput("evaluated")  )
))