#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

bmifunc <- function(height, weight){
    bmi <- round((weight/(height/100)^2), digits = 1) 
}

bmifunc2 <- function(height, weight){
    bmi <- weight/(height/100)^2
    if(bmi < 18.5) "Underweight as the BMI is less than 18.5"
    else if(bmi >= 18.5 & bmi < 25) "Normal weight as the BMI falls between 18.5 and 25"
    else if(bmi >= 25 & bmi < 30) "Overweight as the BMI is more than 25, but less than 30"
    else "Obese as the BMI is more than 30"
}


shinyServer(
    function(input, output){
        output$bmi <- renderText({bmifunc(input$height, input$weight)})
        output$diagnostic <- renderText({bmifunc2(input$height, input$weight)})
    }
)