#' Base de índice de marginación a nivel AGEB Urbana, 2020
#'
#' Base de datos del índice de marginación a nivel AGEB Urbana, 2020. Esta base contiene a la población total, indicadores
#' sociodemográficos, índice y grado de marginación.
#' \url{https://datos.gob.mx/busca/dataset/indice-de-marginacion-carencias-poblacionales-por-localidad-municipio-y-entidad}
#'
#' @section Variables:
#'
#' \itemize{
#' \item{\code{CVE_AGEB}}{- Clave geográfica de la AGEB}
#' \item{\code{ENT}}{- Clave de la entidad}
#' \item{\code{NOM_ENT}}{- Nombre de la entidad}
#' \item{\code{MUN}}{- Clave del municipio}
#' \item{\code{NOM_ENT}}{- Nombre del municipio}
#' \item{\code{LOC}}{- Clave de la localidad}
#' \item{\code{NOM_LOC}}{- Nombre de la localidad}
#' \item{\code{AGEB}}{- Clave de la AGEB}
#' \item{\code{POB_TOT}}{- Población total 2020}
#' \item{\code{P6A14NAE}}{- Porcentaje de población de 6 a 14 años que no asiste a la escuela}
#' \item{\code{SBASC}}{- Porcentaje de población de 15 años o mas sin educación básica}
#' \item{\code{PSDSS}}{- Porcentaje de población sin derechohabiencia a los servicios de salud}
#' \item{\code{OVSDE}}{- Porcentaje de ocupantes en viviendas particulares habitadas sin drenaje ni excusado}
#' \item{\code{OVSEE}}{- Porcentaje de ocupantes en viviendas particulares habitadas sin agua entubada}
#' \item{\code{OVSAE}}{- Porcentaje de ocupantes en viviendas particulares habitadas con piso de tierra}
#' \item{\code{OVPT}}{- Porcentaje de ocupantes en viviendas particulares habitadas con piso de tierra}
#' \item{\code{OVHAC}}{- Porcentaje de ocupantes en viviendas particulares habitadas con hacinamiento}
#' \item{\code{OVSREF}}{-Porcentaje de ocupantes en viviendas particulares habitadas sin refrigerador}
#' \item{\code{OVSINT}}{-Porcentaje de ocupantes en viviendas particulares habitadas sin internet}
#' \item{\code{OVSCEL}}{-Porcentaje de ocupantes en viviendas particulares habitadas sin celular}
#' \item{\code{IM_2020}}{- Índice de marginación, 2020}
#' \item{\code{GM_2020}}{- Grado de marginación, 2020}
#' \item{\code{IMN_2020}}{- Índice de marginación normalizado, 2020}
#' }
#' @docType data
#' @name IMU_2020
#' @usage IMU_2020
#' @format A data frame with 50790 observations on the following 23 variables.
#' @examples
#' head(IMU_2020)

load('inst/IMU_2020.RData')
