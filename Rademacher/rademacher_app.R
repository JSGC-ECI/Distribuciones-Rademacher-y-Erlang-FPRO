# app.R
library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Simulación con distribución de Rademacher"),
  
  fluidRow(
    column(12,
           h4("Enunciado"),
           p("Un grupo de estudiantes realiza una prueba, sorpresivamente todos la aprobaron . El grupo se
             dividio en 2; una parte que utilizo un metodo tradicional(+1) y otra que uso  un metodo alternativo(-1), se calcula el promedio
             de ambos grupos y la diferencia sera el valor real a tener en cuenta.\n
             Se usa una simulación rademacher para ver si la diferencia de ambos promedios significa realmente que un 
             metodo es mejor que otro."),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("n", "Cantidad de estudiantes por grupo:", value = 30, min = 5),
      sliderInput("diferencia_real", "Diferencia observada entre grupos:",
                  min = -5, max = 5, value = 1.2, step = 0.1),
      numericInput("sim", "Número de simulaciones:", value = 1000, min = 100),
      actionButton("simular", "Ejecutar simulación")
    ),
    
    mainPanel(
      plotOutput("histograma"),
      verbatimTextOutput("resultado")
    )
    )
  )
  )
)

server <- function(input, output) {
  
  observeEvent(input$simular, {
    
    n <- input$n
    diferencia_observada <- input$diferencia_real
    nsim <- input$sim
    
    # Simulaciones con Rademacher
    simulaciones <- replicate(nsim, {
      signos <- sample(c(-1, 1), size = n, replace = TRUE)
      datos <- rnorm(n, mean = 0, sd = 1)
      mean(signos * datos)
    })
    
    output$histograma <- renderPlot({
      hist(simulaciones, breaks = 30, col = "lightblue",
           main = "Simulaciones con valores Rademacher",
           xlab = "Diferencia simulada")
      abline(v = diferencia_observada, col = "red", lwd = 2)
      legend("topright", legend = paste("Diferencia real =", diferencia_observada),
             col = "red", lwd = 2)
    })
    
    output$resultado <- renderText({
      pbbVreal <- mean(abs(simulaciones) >= abs(diferencia_observada))
      
      resultado <- if (pbbVreal < 0.05) {
        "La diferencia observada es significativa: probablemente no es casual."
      } else {
        "La diferencia observada podría explicarse por azar."
      }
      
      paste0("pbbVreal: ", round(pbbVreal, 5), "\n\n", resultado)
    })
  })
}

shinyApp(ui = ui, server = server)
