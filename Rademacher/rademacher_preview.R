# -----------------------------------------------------------
# Simulación de la Distribución de Rademacher en R
# -----------------------------------------------------------

# 1. Generación de datos aleatorios
set.seed(123)  # Para reproducibilidad
n <- 1000  # Número de muestras
rademacher_data <- sample(c(-1, 1), size = n, replace = TRUE)

# 2. Visualización

# Histograma
hist(rademacher_data, 
     breaks = seq(-1.5, 1.5, by = 1), 
     main = "Histograma: Distribución de Rademacher", 
     xlab = "Valores", 
     ylab = "Frecuencia", 
     col = "skyblue", 
     border = "white", 
     xaxt = "n")
axis(1, at = c(-1, 1))  # Ejes en -1 y 1

# Gráfico de barras con frecuencia
tabla_frec <- table(rademacher_data)
barplot(tabla_frec,
        main = "Frecuencia de Valores (-1, 1)",
        col = c("tomato", "steelblue"),
        names.arg = c("-1", "1"),
        ylab = "Frecuencia")

# 3. Comparación teoría vs. simulación

# Media teórica y muestral
mean_theory <- 0
mean_sim <- mean(rademacher_data)

# Varianza teórica y muestral
var_theory <- 1
var_sim <- var(rademacher_data)

# Mostrar comparaciones
cat("---- Comparación teoría vs. simulación ----\n")
cat("Media teórica: ", mean_theory, "\n")
cat("Media muestral: ", mean_sim, "\n")
cat("Varianza teórica: ", var_theory, "\n")
cat("Varianza muestral: ", var_sim, "\n")
cat("-------------------------------------------\n")

# 4. (Opcional) Verificación de forma con distintos tamaños de muestra
# Aquí usamos tamaños crecientes para observar convergencia

n_values <- seq(10, 1000, by = 10)
means <- sapply(n_values, function(n) {
  sim <- sample(c(-1, 1), size = n, replace = TRUE)
  mean(sim)
})

plot(n_values, means, type = "l",
     main = "Convergencia de la Media Muestral",
     xlab = "Tamaño de muestra", ylab = "Media",
     col = "darkgreen", lwd = 2)
abline(h = mean_theory, col = "red", lty = 2)
legend("topright", legend = c("Media muestral", "Media teórica"),
       col = c("darkgreen", "red"), lty = c(1, 2), bty = "n")

