# -----------------------------------------------------------
# Simulación de la Distribución de Erlang
# -----------------------------------------------------------

# Cargar librería necesaria
if (!requireNamespace("stats", quietly = TRUE)) {
  install.packages("stats")
}
library(stats)

# 1. Generación de datos aleatorios
set.seed(123)  # Para reproducibilidad

n <- 1000  # Número de muestras
shape <- 3  # Forma (k)
rate <- 0.5  # Tasa (lambda)

# Generación de muestras Erlang
erlang_data <- rgamma(n, shape = shape, rate = rate)

# 2. Visualización

# Histograma
hist(erlang_data, 
     breaks = 30, 
     main = "Histograma: Distribución de Erlang", 
     xlab = "Valores", 
     ylab = "Frecuencia", 
     col = "skyblue", 
     border = "white")

# Gráfico de barras con frecuencia
tabla_frec <- table(cut(erlang_data, breaks = 10))
barplot(tabla_frec,
        main = "Frecuencia de Valores en la Distribución Erlang",
        col = "tomato",
        ylab = "Frecuencia")

# 3. Comparación teoría vs. simulación

# Media teórica y muestral
mean_theory <- shape / rate
mean_sim <- mean(erlang_data)

# Varianza teórica y muestral
var_theory <- shape / (rate^2)
var_sim <- var(erlang_data)

# Mostrar comparaciones
cat("---- Comparación teoría vs. simulación ----\n")
cat("Media teórica: ", mean_theory, "\n")
cat("Media muestral: ", mean_sim, "\n")
cat("Varianza teórica: ", var_theory, "\n")
cat("Varianza muestral: ", var_sim, "\n")
cat("-------------------------------------------\n")

# 4. (Opcional) Verificación de forma con distintos tamaños de muestra

n_values <- seq(10, 1000, by = 10)
means <- sapply(n_values, function(n) {
  sim <- rgamma(n, shape = shape, rate = rate)
  mean(sim)
})

plot(n_values, means, type = "l",
     main = "Convergencia de la Media Muestral - Distribución Erlang",
     xlab = "Tamaño de muestra", ylab = "Media",
     col = "darkgreen", lwd = 2)
abline(h = mean_theory, col = "red", lty = 2)
legend("topright", legend = c("Media muestral", "Media teórica"),
       col = c("darkgreen", "red"), lty = c(1, 2), bty = "n")
