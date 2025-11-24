# EJERCICIO 5
library(palmerpenguins)
library(tidyverse)
data(penguins)
library(conflicted)
library(dplyr)


# Recuerda que es tu decisión si quieres remover los nulos del data frame
penguins <- drop_na(penguins)

# Resumen
str(penguins)
summary(penguins)
view(penguins)


# PARTE 1
# 1. Selecciona las columnas species, island, y flipper_length_mm.
pen1 <- select(penguins, species, island, flipper_length_mm)
head (pen1)
view (pen1)

# 2. Filtra los pingüinos de la isla "Biscoe".
pen1_filter <- dplyr::filter(pen1, island == "Biscoe")
view (pen1_filter)

# 3. Filtra para obtener solo aquellos con un largo de aleta mayor a 200 mm.
pen1_filter2 <- dplyr::filter(pen1, flipper_length_mm > 200)
view (pen1_filter2)

# 4. Muestra los primeros 10 resultados.
head (pen1_filter2, 10)


# PARTE 2
# 1. Crea una nueva columna llamada "mass_category" que clasifique a los pingüinos
#    como "small" si pesan menos de 3000 gramos, y "large" si pesan 3000 gramos o más.
pen2 <- penguins %>% 
  mutate(
    mass_category = if_else(body_mass_g < 3000, "small", "large")
  )
view (pen2)

# 2. Filtra para incluir solo aquellos pingüinos que son de la especie "Gentoo".
pen2_filter <- dplyr::filter(pen2, species == "Gentoo")
view (pen2_filter)

# 3. Selecciona las columnas species, body_mass_g, y mass_category.
pen2_filter2 <- select(pen2_filter, species, body_mass_g, mass_category)
head (pen2_filter2)
view (pen2_filter2)

# 4. Ordena los resultados por peso corporal en orden ascendente.
pen2_arrange <- arrange(pen2_filter2, body_mass_g)
head (pen2_arrange)
view (pen2_arrange)

summary(pen2_filter)

# PARTE 3
# 1. Filtra los datos para obtener solo los pingüinos de la especie "Adelie".
pen3_filter <- dplyr::filter(penguins, species == "Adelie")
head (pen3_filter)
view (pen3_filter)

summary(pen3_filter)

# 2. Dentro de los pingüinos "Adelie", filtra aquellos que pesan más de 3500 gramos.
pen3_filter2 <- dplyr::filter(pen3_filter, body_mass_g > 3500)
head (pen3_filter2)
view (pen3_filter2)

# 3. Selecciona las columnas species, island, body_mass_g y sex.
pen3_filter3 <- select(pen3_filter2, species, island, body_mass_g, sex)
head (pen3_filter3)
view (pen3_filter3)

# 4. Obtén el promedio del peso corporal por isla y sexo.
summary(pen3_filter3)
pen3_filter4 <- pen3_filter3 %>%
  group_by(island, sex) %>%
  summarise(
    mean_body_mass = mean(body_mass_g)
  )
head(pen3_filter4)

# 5. Ordena el resultado por el peso promedio en orden descendente.
pen3_arrange <- arrange(pen3_filter4, desc (mean_body_mass))
head (pen3_arrange)
view (pen3_arrange)


# PARTE 4
# 1. Crea una nueva variable "bill_ratio" que sea la división entre la longitud del pico (bill_length_mm)
#    y la profundidad del pico (bill_depth_mm).
pen4 <- mutate(penguins, bill_ratio = bill_length_mm/bill_depth_mm)
view (pen4)

# 2. Filtra los datos para incluir solo los pingüinos con una "bill_ratio" mayor a 2.
pen4_filter <- dplyr::filter(pen4, bill_ratio > 2)
head (pen4_filter)
view (pen4_filter)

# 3. Agrupa los datos por species y sex.
pen4_filter2 <- pen4_filter %>%
  group_by(species, sex)
  )
head(pen4_filter2)

# 4. Calcula la mediana de "bill_ratio" y el número de muestras para cada grupo.
pen4_filter3 <- pen4_filter %>%
  group_by(species, sex) %>%
  summarise(
    med_bill_ratio = median(bill_ratio),
    count = n()
  )
head(pen4_filter3)
view(pen4_filter3)

# 5. Muestra solo las especies y sexos con al menos 10 observaciones en el grupo
pen4_filter4 <- pen4 %>%
  group_by(species, sex) %>%
  summarise(count = n()) %>%
  dplyr::filter(count >= 10)
head(pen4_filter4)
view(pen4_filter4)



