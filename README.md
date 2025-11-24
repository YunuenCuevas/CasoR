# Análisis de base de datos de Población de Pingüinos

## Contexto
Este proyecto contiene el análisis de datos de una población de pingüinos, a través de R. La base contiene 344 registros en total, pero sin registros con datos nulos fue un total de: 333. Entre las variables podemos observar las siguientes: especies, isla, longitud del pico (mm), profundidad del pico (mm), longitud de la aleta (mm), masa corpora (g), sexo y año.


## Objetivo
El objetivo es entender la distribución de la población de pingüinos por sus diferentes variables como: especies, isla, longitud del pico (mm), profundidad del pico (mm), longitud de la aleta (mm), masa corpora (g), sexo y año.

## Contexto
- El catálogo consta de 344 registros, pero se eliminaron los datos nulos quedando 333 registros, de las especies: Adelie, Chinstrap y Gentoo.
- Distribuidos a lo largo de 3 islas: Biscoe, Dream y Torgersen.
- La mediana y media de longitud del pico (mm), profundidad del pico (mm), son muy similares.
- Son en total 165 hembras y 168 machos.
   
## Resultados

**1. Los pintüinos de la Isla Biscoe**
- El total de pingüinos de la Isla Biscoe es de: **163 (48.9%)**, siendo la Isla que más pinüinos tiene, le sigue: Dream con 123 (36.9%) y Torgersen 47 (14.1%).
- El 88.3% (144) cuenta con aletas mayores a 200mm de largo. El promedio del largo del total de población es de 201mm.
- La mediana del tamaño de las aletas de la población general de pingüinos es de 197, con valores de 172 a 231.

<img width="322" height="270" alt="image" src="https://github.com/user-attachments/assets/5f29e0c7-d37f-41ef-8223-c31ce40c7078" />


**2. Los pingüinos de la especie Gentoo**
  - El total de pingüinos de la especie Gentoo es de **119**, el 100% de ellos se consideran una especie grande, ya que pesan más de 3000g.
  - El promedio de su peso es de 5092g, con pesos en el primer cuartil de 4700g y 5500g en el tercer cuartil.
  - Los 119 (100%) pingüinos Gentoo habitan en la isla Biscoe.
  - El 48.7% (58) son hembras y 51.2% (61) machos.

<img width="881" height="585" alt="image" src="https://github.com/user-attachments/assets/bb0cd779-f858-43eb-992d-8b42286248c2" />


**3. Pingüinos especie Adelie**
  - La especie Adeline es la más grande con **146** pingüinos, representando el 43.8% de la población.
  - A diferencia de los pingüinos Gentoo, la especie Adelie se encuentra distribuidos en las 3 islas: Bisco 44, Dream 55 y Torgersen 47.
  - Su distribución por sexo es 50% tanto machos como hembras. 
  - Sin embargo son una especie más pequeña que la Gentoo. Su peso oscila entre los 2850g y 4775g, con un promedio de 3706g 

<img width="268" height="144" alt="image" src="https://github.com/user-attachments/assets/74f798b1-05af-453b-accb-160e4ea3e3d8" />



  - ## Contenido de archivos anexos (base datos y R)
  - Base de datos 
  - Exploración de datos mediante código R
  - Limpieza de datos por código R
  - Análisis de datos a través código R
  - Cuadros del análisis.
