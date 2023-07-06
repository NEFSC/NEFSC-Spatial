
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("NEFSCspatial Explorer"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
          checkboxGroupInput("dat", label = "Select Data to Explore", 
                             choices = list("epu_sf" = "epu_sf",
                                            "Shellfish_Strata" = "Shellfish_Strata"),
                             selected = NULL)
        ),

        # Show a plot of the generated distribution
        mainPanel(
          leaflet::leafletOutput("mapPlot"),
           tableOutput("summaryTable")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
      
      library(magrittr)
      crs <- "+proj=longlat +lat_1=35 +lat_2=45 +lat_0=40 +lon_0=-77 +x_0=0 +y_0=0 +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"
      
      xmin = -12
      xmax = 15
      ymin = 30
      ymax = 50
      xlims <- c(xmin, xmax)
      ylims <- c(ymin, ymax)
      
      coast <- rnaturalearth::ne_countries(scale = 10,
                                           continent = "North America",
                                           returnclass = "sf") %>%
        sf::st_transform(crs = crs)
      
      plt<- ggplot2::ggplot() +
        ggplot2::geom_sf(data = coast) +
        ggplot2::coord_sf(crs = crs, xlim = xlims, ylim = ylims) +
        ggplot2::ggtitle("") +
        ggplot2::xlab(ggplot2::element_blank()) +
        ggplot2::ylab(ggplot2::element_blank()) 
      
      
      eventReactive(input$dat,{
        if (input$dat %in% "epu_sf" ){ 
          plt <- plt +
            ggplot2::geom_sf(data = NEFSCspatial::epu_sf)
        }
        
      output$mapPlot <- renderPlot({
        plt
        })
        
        })
      
    output$summaryTable<- renderText({
      
    #   eventReactive(input$dat,{
    #   if (input$dat == "epu_sf" ){ 
    #     head(NEFSCspatial::epu_sf)
    #   }
    # 
    #   })
     })
      
}

# Run the application 
shinyApp(ui = ui, server = server)
