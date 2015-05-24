library(shiny)
library(rCharts)

data <- read.csv("data.csv",sep = ";")

shinyServer(
    function(input, output) {
        
        output$newGraph <- renderPlot({
            data2 <- data
            year <- input$year
            
            data2 <- subset(data2[data2$Date >= year,])
            plot(data2$Date ,data2$Number.of.poor.houses/1000000 ,type = "l", xlab="YEAR", ylab="NUMBER OF HOUSES (MILLIONS)")
            regline <- lm(data2$Number.of.poor.houses/1000000 ~ data2$Date, data=data)
            abline(regline, col="red")
        })  
        
    }
)