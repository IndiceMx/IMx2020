
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Indice de Marginación, 2020

<!-- badges: start -->

[![Coveralls test
coverage](https://coveralls.io/repos/github/IndiceMx/IMx2020/badge.svg)](https://coveralls.io/r/IndiceMx/IMx2020?branch=main)
[![Codecov test
coverage](https://codecov.io/gh/IndiceMx/IMx2020/branch/main/graph/badge.svg)](https://app.codecov.io/gh/IndiceMx/IMx2020?branch=main)
[![R-CMD-check](https://github.com/IndiceMx/IMx2020/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/IndiceMx/IMx2020/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

El Índice de Marginación es una herramienta desarrollada por el Consejo
Nacional de Población (`CONAPO`) en México, que tiene como objetivo
medir los niveles de marginación en diferentes áreas geográficas. Este
índice es fundamental para identificar las disparidades socioeconómicas
entre regiones y para orientar la asignación de recursos y políticas
públicas de manera equitativa y efectiva.

El CONAPO ha cambio la metodología utilizada para calcular el índice de
marginación, y una de las más recientes es la Metodología de Distancias
$DP_2$. Esta metodología busca medir la marginación considerando
factores multidimensionales, tales como educación, vivienda, ingresos,
acceso a servicios de salud, entre otros. Lo cual es una mejora respecto
a sus predecesoras, ya que integra diferentes indicadores
socioeconómicos en un índice cardinal y, además permite la comparación
entre unidades geográficas e intertemporales.

La desagregación se refiere a la subdivisión de los datos en niveles más
pequeños y específicos. En el contexto del índice de marginación, esto
implica analizar la marginación en diferentes niveles geográficos, como:

🔹 `Estados`,  
🔹 `Municipios`,  
🔹 `Localidades`,  
🔹 `Áreas Geoestadística Básicas (AGEB)`, y  
🔹 `Colonias`.

## Instalación

Puede instalar la versión de desarrollo de IM2020 desde
[GitHub](https://github.com/) con:

``` r
# install.packages("devtools")
devtools::install_github("IndiceMx/IMx2020")
```

## Ejemplo

Este es un ejemplo básico que muestra cómo leer los datos:

``` r
library(IM2020)
## basic example code
```

Ejemplo:

``` r
summary(IME_2020)
#>    CVE_ENT            NOM_ENT             POB_TOT             ANALF       
#>  Length:32          Length:32          Min.   :  731391   Min.   : 1.430  
#>  Class :character   Class :character   1st Qu.: 1851651   1st Qu.: 2.617  
#>  Mode  :character   Mode  :character   Median : 3054892   Median : 3.517  
#>                                        Mean   : 3937938   Mean   : 4.703  
#>                                        3rd Qu.: 4947592   3rd Qu.: 5.896  
#>                                        Max.   :16992418   Max.   :13.701  
#>      SBASC           OVSDE             OVSEE             OVSAE        
#>  Min.   :17.64   Min.   :0.05195   Min.   :0.05182   Min.   : 0.5527  
#>  1st Qu.:24.51   1st Qu.:0.53088   1st Qu.:0.36369   1st Qu.: 1.2841  
#>  Median :28.34   Median :1.31248   Median :0.53806   Median : 2.2198  
#>  Mean   :29.53   Mean   :1.68018   Mean   :0.76724   Mean   : 3.4750  
#>  3rd Qu.:31.74   3rd Qu.:1.93124   3rd Qu.:1.05095   3rd Qu.: 4.3318  
#>  Max.   :48.12   Max.   :9.38376   Max.   :2.12630   Max.   :11.5493  
#>       OVPT              VHAC          PL.5000           PO2SM      
#>  Min.   : 0.6336   Min.   :13.13   Min.   : 1.008   Min.   :45.49  
#>  1st Qu.: 1.7624   1st Qu.:15.26   1st Qu.:14.164   1st Qu.:59.96  
#>  Median : 2.4238   Median :18.26   Median :29.044   Median :68.17  
#>  Mean   : 3.7708   Mean   :19.92   Mean   :28.165   Mean   :67.21  
#>  3rd Qu.: 4.4346   3rd Qu.:23.70   3rd Qu.:36.735   3rd Qu.:73.68  
#>  Max.   :15.2670   Max.   :36.09   Max.   :59.401   Max.   :85.57  
#>     IM_2020        GM_2020             IMN_2020     
#>  Min.   :10.99   Length:32          Min.   :0.4043  
#>  1st Qu.:17.99   Class :character   1st Qu.:0.6619  
#>  Median :19.84   Mode  :character   Median :0.7300  
#>  Mean   :19.26                      Mean   :0.7086  
#>  3rd Qu.:21.39                      3rd Qu.:0.7868  
#>  Max.   :23.44                      Max.   :0.8625
```

Las primeras observaciones de la base de localidades, 2020.

``` r
head(IML_2020)
#>     CVE_LOC ENT        NOM_ENT MUN        NOM_MUN  LOC
#> 1 010010001  01 Aguascalientes 001 Aguascalientes 0001
#> 2 010010096  01 Aguascalientes 001 Aguascalientes 0096
#> 3 010010106  01 Aguascalientes 001 Aguascalientes 0106
#> 4 010010112  01 Aguascalientes 001 Aguascalientes 0112
#> 5 010010120  01 Aguascalientes 001 Aguascalientes 0120
#> 6 010010121  01 Aguascalientes 001 Aguascalientes 0121
#>                            NOM_LOC POB_TOT     ANALF    SBASC      OVSDE
#> 1                   Aguascalientes  863893  1.429924 19.16482 0.01418722
#> 2                        Agua Azul      41  6.451613 51.61290 7.31707317
#> 3                         Arellano    1169  7.076566 39.09513 0.85543199
#> 4                Bajío los Vázquez      41 10.344828 65.51724 0.00000000
#> 5           Buenavista de Peñuelas    1054  6.420765 35.65574 0.47528517
#> 6 Cabecita 3 Marías (Rancho Nuevo)     192  6.521739 41.30435 0.00000000
#>        OVSEE      OVSAE      OVPT   OVSREF    OVHAC  IM_2020  GM_2020  IMN_2020
#> 1 0.07942461  0.1291966 0.4532170 3.531760 14.46777 24.96229 Muy bajo 0.9534348
#> 2 0.00000000 29.2682927 0.0000000 4.878049 14.63415 22.65490     Bajo 0.8653040
#> 3 0.00000000  0.5988024 0.7698888 7.869974 26.00513 23.53770 Muy bajo 0.8990224
#> 4 0.00000000  0.0000000 0.0000000 0.000000 12.19512 23.29153 Muy bajo 0.8896201
#> 5 0.09505703  0.3802281 0.3802281 5.038023 26.42586 23.77643 Muy bajo 0.9081409
#> 6 0.00000000  0.0000000 2.6041667 0.000000 24.47917 23.77971 Muy bajo 0.9082660
```
