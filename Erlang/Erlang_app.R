# app.R

# Cargar librerías necesarias
library(shiny)
library(ggplot2)

# Interfaz de usuario
ui <- fluidPage(
  titlePanel("Análisis del tiempo de atención con la Distribución Erlang"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("k", "Número de etapas del servicio (k):", min = 1, max = 10, value = 3),
      sliderInput("lambda", "Tasa de atención por etapa (λ):", min = 0.1, max = 5, value = 1, step = 0.1)
    ),
    mainPanel(
      plotOutput("erlangPlot"),
      br(),
      textOutput("interpretacion")
    )
  )
)

# Lógica del servidor
server <- function(input, output) {
  
  output$erlangPlot <- renderPlot({
    x <- seq(0, 10, length.out = 500)
    k <- input$k
    lambda <- input$lambda
    y <- (lambda^k * x^(k - 1) * exp(-lambda * x)) / factorial(k - 1)
    
    df <- data.frame(x = x, y = y)
    
    ggplot(df, aes(x, y)) +
      geom_line(color = "darkred", size = 1.2) +
      labs(title = paste("Distribución Erlang (k =", k, ", λ =", lambda, ")"),
           x = "Tiempo total de atención",
           y = "Densidad de probabilidad") +
      theme_minimal()
  })
  
  output$interpretacion <- renderText({
    paste0("Con k = ", input$k, " etapas y una tasa λ = ", input$lambda,
           ", el gráfico representa la probabilidad del tiempo total que un paciente pasa en el sistema de atención.\n\n",
           "Esto ayuda a estimar cuánto tiempo debe esperarse si un paciente necesita pasar por ", input$k,
           " etapas de servicio (como registro, consulta, pruebas, etc.).")
  })
}

# Ejecutar la aplicación
shinyApp(ui = ui, server = server)