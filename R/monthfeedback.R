#Month feedback

monthFeedbackUI <- function(id){
  textOutput(NS(id, "feedback"))
}

monthFeedbackServer <- function(id, month){
  stopifnot(is.reactive(month))
  
  moduleServer(id, function(input, output, session){
    output$feedback <- renderText({
      if (month() == "October"){
        "Yes, you picked a great month!"
      }else{
        "Eh, you could do better"
      }
    })
  })
  
}