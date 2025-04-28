# Semilla para reproducibilidad
set.seed(123)

# Número de simulaciones
n_sim <- 1000

# Número de pasos
n_steps <- 10

# Simulaciones
resultados <- replicate(n_sim, sum(sample(c(-1, 1), n_steps, replace = TRUE)))

# Mostrar media y varianza simuladas
media_simulada <- mean(resultados)
varianza_simulada <- var(resultados)

# Mostrar resultados
cat("Media simulada:", media_simulada, "\n")
cat("Varianza simulada:", varianza_simulada, "\n")

# Histograma para ver la distribución
hist(resultados, breaks = 20, main = "Distribución de la posición final del robot", xlab = "Posición final")
