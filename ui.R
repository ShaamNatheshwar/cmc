library(shiny)
library(shinythemes)
library(datasets)

shinyUI(fluidPage(
  theme=shinytheme("slate"),# returns URL of a shiny theme
  themeSelector(), ## not required but can be used to select the theme
  
  navbarPage(
    title="CHRISTIAN MEDICAL COLLEGE",
    id="nav",
    
    
    
    # START OF WELCOME TAB PANEL
    tabPanel("Welcome", value="Data",
             
             
             sidebarLayout(
                 selectInput("dataset","Language", choices=c("English" = "e", "French" = "f", "Arabic" = 'a', "Spanish" = "s")),
              
               
               
               
               mainPanel(
                # h3(textOutput("Hi this is shaam Natheshwar"))
               )
             ),
             sidebarLayout(
               
               sidebarPanel(
                
                 selectInput("Run Demo","Choose the app", choices=c("Demo1" = "e", "Demo2" = "f", "Demo3" = 'a', "Demo4" = "s")),
                 tags$hr(),
                 actionButton("button", "ActionButton"),
               ),
               
               
               mainPanel(
                 h1("Header 1"),
                 
                 h4("Output 1"),
                 verbatimTextOutput("txtout"),
                 
               )
             )
             
             ),
    
    
    #End of Welcome Tab panel
    tabPanel("Data Mangement", 
             h4("This is DataMangement")
    ),
    tabPanel("Overview", 
             h4("This is Overview")
    ),
    tabPanel("Follow up", 
             h4("This is followUp")
    ),
    tabPanel("HAI", 
             h4("This is HAI")
    ),
    tabPanel("Microbiology", 
             h4("This is Microbiology")
    ),
    tabPanel("AMR", 
             h4("This is AMR")
    ),
    
    tabPanel("FAQ/ CheatSheet", 
             h4("This is FAQ")
    ),
  )
  
))








## Use navbarmenu to get the tab with menu capabilities
#navbarMenu("Menu Options",
           #tabPanel("Menu item A - Summary stats", verbatimTextOutput("summary")),
           #tabPanel("Menu item B - Link to code",
                   # h4(HTML(paste("Thanks for watching the video. Reference code available at the following", a(href="https://github.com/aagarw30/R-Shinyapp-Tutorial/tree/master/shinylayouts/navbarpage%20demo", "link"), "."))),
                    #h4(HTML(paste("In case you have questions", a(href="mailto:aagarw30@gmail.com", "email me"), ".")))
                    
        #   ))