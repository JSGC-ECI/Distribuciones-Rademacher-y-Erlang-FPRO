# DISTRIBUCION RADEMACHER


# **Generación de Datos**
# Número de muestras
n <- 1000

# Generar datos de la distribución de Rademacher
set.seed(123)  # Para reproducibilidad
rademacher_data <- sample(c(-1, 1), size = n, replace = TRUE)

# **Visualización**
# Ver las primeras observaciones generadas
head(rademacher_data)

# Histograma
hist(rademacher_data, breaks = 20, main = "Histograma de la Distribución de Rademacher", 
     xlab = "Valor", ylab = "Frecuencia", col = "skyblue", border = "white")

# Gráfico de densidad
plot(density(rademacher_data), main = "Gráfico de Densidad de la Distribución de Rademacher", 
     xlab = "Valor", ylab = "Densidad", col = "red", lwd = 2)

# Media muestral
mean_sim <- mean(rademacher_data)
mean_sim

# Media teórica
mean_theory <- 0

# Comparación de la media teórica con la muestral
cat("Media teórica: ", mean_theory, "\n")
cat("Media muestral: ", mean_sim, "\n")

# Frecuencia de los valores
table(rademacher_data)