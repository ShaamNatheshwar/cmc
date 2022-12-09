library(shiny)
library(shinythemes)
library(datasets)

shinyUI(fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  ),
  theme=shinytheme("slate"),# returns URL of a shiny theme
  themeSelector(), ## not required but can be used to select the theme
  
  navbarPage(
    title="CHRISTIAN MEDICAL COLLEGE",
    id="nav",
    
    
    
    # START OF WELCOME TAB PANEL
    tabPanel("Welcome", value="Data",
             sidebarLayout(
               sidebarPanel(
                 selectInput("dataset","Language", choices=c("English" = "e", "French" = "f", "Arabic" = 'a', "Spanish" = "s")),
                 tags$hr(),
                 selectInput("Run Demo","Choose the app", choices=c("Demo1" = "e", "Demo2" = "f", "Demo3" = 'a', "Demo4" = "s")),
                 tags$hr(),
                 actionButton("Login", "ActionButton"),
               ),
               
               
               mainPanel(
                 tags$div(class="container",h2("Welcome!"),
                          
                          h2("What is ACORN?"),
                          p("ACORN is a Wellcome funded human health clinical antimicrobial resistance (AMR) surveillance project led by the Mahidol-Oxford Tropical Medicine Research Unit (MORU) and the Oxford University of Oxford Clinical Research Unit (OUCRU)."),
                          h2("Why is ACORN needed?"),
                          p("Existing AMR surveillance systems are based mostly on diagnostic microbiology laboratory antimicrobial susceptibility testing results alone, with minimal accompanying clinical information. Resulting data are of limited use for patient management and treatment guideline development, and do not allow for estimation of the clinically relevant impacts and burden of drug resistant infections (DRI). Tools to capture and analyse AMR data in low- and middle-income countries (LMIC) are scarce, which hinders local engagement with available data.

To fill these gaps, ACORN is the implementation of a comprehensive data capture system for patient-focused AMR surveillance in LMIC settings. Surveillance includes diagnostic stewardship activities, to improve collection of appropriate microbiology specimens in patients with suspected infection. Data collected via ACORN harmonises with and expands on the pathogen-focused WHO Global Antimicrobial Resistance Surveillance System, to enable accurate classification of infection syndromes and patient outcomes. These data are of critical importance for estimation of syndromic and/or pathogen outcomes and associated costs: i.e. how many people die from DRIs and what is the economic impact of AMR?"),
                          
                          verbatimTextOutput("txtout"),), #end of container tag
                 
                 tags$div(class="image", img(src='acorn.png', height=350, width=550),),
                 
               ),
               
               
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





#tags$img(src='acorn.png', height=350, width=550),


## Use navbarmenu to get the tab with menu capabilities
#navbarMenu("Menu Options",
           #tabPanel("Menu item A - Summary stats", verbatimTextOutput("summary")),
           #tabPanel("Menu item B - Link to code",
                   # h4(HTML(paste("Thanks for watching the video. Reference code available at the following", a(href="https://github.com/aagarw30/R-Shinyapp-Tutorial/tree/master/shinylayouts/navbarpage%20demo", "link"), "."))),
                    #h4(HTML(paste("In case you have questions", a(href="mailto:aagarw30@gmail.com", "email me"), ".")))
                    
        #   ))