## Taller: K-Means en R
## Dra. Nelva Nely Almanza Ortega
## Ladies R
## Cuernavaca, Morelos
## ======================================================================
## ======================================================================

## 1. Importar un conjunto de datos
dframe <- data.frame(age = c(18, 21, 22, 24, 26, 26, 27, 30, 31, 35, 39, 40, 41, 42, 44, 46, 47, 48, 49, 54),
                 spend = c(10, 11, 22, 15, 12, 13, 14, 33, 39, 37, 44, 27, 29, 20, 28, 21, 30, 31, 23, 24)
)

## ======================================================================
## ======================================================================

## 2. Análisis de la estaística básica del conjunto de datos
summary(dframe)

## ======================================================================
## ======================================================================

## 3. Análisis de la distribución del conjunto de datos
library(ggplot2)
ggplot(dframe, aes(x = age, y = spend)) + geom_point()

## ======================================================================
## ======================================================================

## 4. Generar particiones de datos con el algoritmo de agrupamiento K-Means

##arguments:
## función kmeans()
## -dframe: dataset used to run the algorithm
## -k: Number of clusters

k <- 3
out_kmeans <- kmeans(dframe, k)

## ======================================================================
## ======================================================================

## 5. Graficar las particiones de datos generadas con el algoritmo de agrupamiento K-Means

library(ggplot2)

dframe <- cbind(dframe,clusters=c(out_kmeans$cluster))

## Método 1
ggplot(data = dframe, aes(x = age, y = spend, color = factor(clusters))) + geom_point()

## Método 2
plot(dframe[1:2], col = dframe$clusters)
points(out_kmeans$centers, col = 1:5, pch = 8)

## ======================================================================
## ======================================================================

## 6. K-Means dinámico

set.seed(2345)
library(animation)
iris
kmeans.ani(iris[2:3], 4)

## ======================================================================
## ======================================================================

## 7. Ejercicios con benckmark

## ------------------------------------
## REPOSITORIO
## https://cs.joensuu.fi/sipu/datasets/
## ------------------------------------

# 1. Cargar un conjunto de datos
# variable <- read.csv("Nombre_del_archivo.csv")

# 2. Particionar el conjunto de datos con el algoritmo K-Means

# 3. Visualizar el resultado de las particiones