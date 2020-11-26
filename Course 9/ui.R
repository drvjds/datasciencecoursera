#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Calculator for Body Mass Index (BMI)"),
    sidebarPanel(
        h5("BMI is a measure of body fat based on your height and weight that applies to adult men and women."),
        numericInput("height", "Input your height (cm)", value = 160),
        numericInput("weight", "Input your weight (kg)", value = 75),
        submitButton("Calculate")
    ),
    mainPanel(
        h3("Results:"),
        p("Your BMI:"),
        verbatimTextOutput("bmi"),
        p("This is considered:"),
        verbatimTextOutput("diagnostic")
    )
))

