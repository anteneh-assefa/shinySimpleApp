library(shiny)

oC <- function(obs) (obs-32) / 1.8
#oF <- 1.8*obs + 32
    
shinyServer(function(input, output) {
    
    output$obs <- renderText({paste(round(input$obs,0),"degree fahrenheit")})
    output$evaluated <- renderText({paste(round(oC(input$obs),0),"degree celsius")})
})