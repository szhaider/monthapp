


monthApp <- function(...){
  
  # stones<- read.csv("birthstone.csv")
  
months <- c(
  "January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
)


ui <- navbarPage("Sample App",
                 tabPanel("Pick a Month",
                          selectInput("month", "MONTHS", choices = months)
                          ),
                 tabPanel("Feedback",
                          monthFeedbackUI("tag1")
                          )
                 )


server <- function(input, output, session){
  
  monthFeedbackServer("tag1", reactive(input$month))
  
}

shinyApp(ui, server, ...)
}


