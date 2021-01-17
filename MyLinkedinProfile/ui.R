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
                                ))),
        
        infoBox(nrow(read.csv("/cloud/project/Data/Connections.csv", skip = 5)), "Total Connections", icon = icon('dashboard'), color = "green", width = 8)
    )
)
