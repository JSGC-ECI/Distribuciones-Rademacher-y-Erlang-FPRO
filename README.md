# 📌 Distribuciones de Rademacher y Erlang

> ⚠️ Estado: **Finalizado** ✅

Presenta el análisis teórico y práctico de dos distribuciones de probabilidad: **Rademacher** (discreta) y **Erlang** (continua), incluyendo sus propiedades, aplicaciones, visualización, simulación en R y comparación entre teoría y datos generados aleatoriamente.

---

## 👥 Autores
ANA CAROLINA CABRERA BLANDON

- GABRIEL ALEJANDRO RODRIGUEZ PULIDO [gabriel.rodriguez-p@mail.escuelaing.edu.co](mailto:gabriel.rodriguez-p@mail.escuelaing.edu.co)
- NICOL SOFIA GUERRA LASSO [nicol.guerra@mail.escuelaing.edu.co](mailto:nicol.guerra@mail.escuelaing.edu.co)
- [JUAN SEBASTIÁN GUAYAZÁN CLAVIJO](https://github.com/JSGC-ECI) → [juan.guayazan-c@mail.escuelaing.edu.co](mailto:juan.guayazan-c@mail.escuelaing.edu.co)

Fundamentos de probabilidad (MATE FPRO-1)     
Coordinación Ingeniería Estadística     
Ingeniería Estadística    
Escuela Colombiana de Ingeniería Julio Garavito    
2025-1

---

## 🧠 Índice

- 📌 [Distribuciones de Rademacher y Erlang](#-distribuciones-de-rademacher-y-erlang)
- 🚀 [Características](#-características)
- ⚙️ [Tecnologías](#️-tecnologías)
- 📦 [Instalación y Requisitos](#-instalación-y-requisitos)
- ▶️ [Uso](#️-uso)
- 🧪 [Pruebas](#-pruebas)
- 📁 [Estructura del Proyecto](#-estructura-del-proyecto)
- 📌 [TODOs / Funcionalidades Futuras](#-todos--funcionalidades-futuras)
- 👥 [Autores](#-autores)
- 📄 [Licencia](#-licencia)

---

## 🚀 Características

- ✅ Análisis teórico de la distribución Rademacher y Erlang
- ✅ Gráficas de funciones de masa, densidad y distribución acumulada
- ✅ Simulación de datos aleatorios en R con `rbinom()` y `rexp()`/`rgamma()`
- ✅ Comparación entre teoría y simulación (medias, formas)
- ✅ Interfaz interactiva con `flexdashboard` y `Shiny`
- ✅ Enfoque académico para curso de Fundamentos de Probabilidad

---

## ⚙️ Tecnologías

- Lenguaje: `R`
- Herramientas: `RStudio`, `Shiny`, `flexdashboard`, `ggplot2`
- Dependencias:
  - `shiny`
  - `flexdashboard`
  - `ggplot2`
  - `dplyr`

---

## 📦 Instalación y Requisitos

### Clonar el repositorio

```bash
git clone https://github.com/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO.git
````

### Requisitos

* R (versión 4.1 o superior)
* RStudio
* Paquetes instalados: `shiny`, `flexdashboard`, `ggplot2`, `dplyr`

### Instalación

1. Abrir `distribuciones_dashboard.Rmd` en RStudio
2. Dar clic en **Run Document** o ejecutar directamente el entorno Shiny

---

## ▶️ Uso

> \[!NOTE]
> Este proyecto fue diseñado con fines académicos para ilustrar conceptos de distribuciones de probabilidad a través de teoría, ejemplos prácticos y simulaciones.

> \[!WARNING]
> Se recomienda ejecutar el `.Rmd` desde RStudio en modo `Shiny` para ver las visualizaciones interactivas correctamente.

### Incluye:

* Control deslizante para parámetros `λ` y `k` de Erlang
* Muestra generada de datos de ambas distribuciones
* Comparación entre media teórica y muestral
* Gráficas interactivas

---

## 🧪 Pruebas

El enfoque de validación fue empírico a través de:

* Comparación de la media teórica vs. media muestral
* Verificación visual de forma de distribución con histogramas
* Pruebas de diferentes parámetros (`λ`, `k`)

---

## 📁 Estructura del Proyecto

```bash
📦 Distribuciones-Rademacher-y-Erlang-FPRO
 ┣ 📂 Erlang
 ┃  ┣ 📜 Documento.Rmd
 ┃  ┣ 📜 Documento.html
 ┃  ┣ 📜 Erlang_app.R                  
 ┃  ┣ 📜 Erlang_preview.R
 ┃  ┣ 📜 Presentacion.Rmd
 ┃  ┗ 📜 Presentacion.html
 ┣ 📂 Rademacher
 ┃  ┣ 📜 Documento.Rmd
 ┃  ┣ 📜 Documento.html
 ┃  ┣ 📜 Presentacion.Rmd
 ┃  ┣ 📜 Presentacion.html
 ┃  ┣ 📜 rademacher_app.R               
 ┗  ┗ 📜 rademacher_preview.R
```

---

## 📌 TODOs / Funcionalidades Futuras

* [ ] Agregar distribución adicional como Poisson o Normal
* [ ] Permitir exportar gráficos como imagen desde la interfaz
* [ ] Incluir contraste estadístico (e.g. prueba de Kolmogorov–Smirnov)

---

## 📊 Estadísticas del Repositorio

![Lenguaje principal](https://img.shields.io/github/languages/top/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO?style=flat-square)
![Tamaño del repositorio](https://img.shields.io/github/repo-size/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO?style=flat-square)
![Stars](https://img.shields.io/github/stars/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO?style=flat-square)
![Forks](https://img.shields.io/github/forks/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO?style=flat-square)
![Issues abiertas](https://img.shields.io/github/issues/JSGC-ECI/Distribuciones-Rademacher-y-Erlang-FPRO?style=flat-square)

---
