library(shiny)
library(shinydashboard)

ui <- dashboardPage(skin =  "purple",
    dashboardHeader(title = "Linkedin Dashboard"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Dashboard", tabName = 'dashboard', icon = icon('dashboard'), badgeLabel = "new", badgeColor = "green"),
            menuItem("Data", tabName = 'data', icon = icon('archive'))
        )
    ),
    
    
    dashboardBody(
        tags$head(tags$style(HTML('
                                
                                /* body */
                                .content-wrapper, .right-side {
                                background-color: #ffffff;
                                }'
                                )))
    )
)
