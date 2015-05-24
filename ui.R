library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Number of poor houses in Brazil"),
    
    sidebarPanel(
        sliderInput('year', 'Select bottom year',value=1990, min=1976 ,max=2009 , step=1),
        br(),
        helpText("In this graphic is plot the number of poor houses
                  since 1976 to 2013 and red line is the linear regression line. 
                  You can download the data from:"),
        a("IPEA Site", href = "http://www.ipeadata.gov.br/ExibeSerieR.aspx?oper=exportCSVBr&serid=1422364812&MINDATA=1976&MAXDATA=2013&TNIVID=0&TPAID=1")
        ),
    mainPanel(
        plotOutput('newGraph')
        )
))