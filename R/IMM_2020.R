#' Base de índice de marginación a nivel municipal, 2020
#'
#' Base de datos del índice de marginación a nivel municipal, 2020. Esta base contiene a la población total, indicadores
#' sociodemográficos, índice y grado de marginación.
#' \url{https://datos.gob.mx/busca/dataset/indice-de-marginacion-carencias-poblacionales-por-localidad-municipio-y-entidad}
#'
#' @section Variables:
#'
#' \itemize{
#' \item{\code{CVE_ENT}}{- Clave de la entidad}
#' \item{\code{NOM_ENT}}{- Nombre de la entidad}
#' \item{\code{CVE_MUN}}{- Clave del municipio}
#' \item{\code{NOM_ENT}}{- Nombre del municipio}
#' \item{\code{POB_TOT}}{- Población total 2020}
#' \item{\code{ANALF}}{- Porcentaje de población analfabeta de 15 años o más}
#' \item{\code{SBASC}}{- Porcentaje de población de 15 años o mas sin educación básica}
#' \item{\code{OVSDE}}{- Porcentaje de ocupantes en viviendas particulares habitadas sin drenaje ni excusado}
#' \item{\code{OVSEE}}{- Porcentaje de ocupantes en viviendas particulares habitadas sin agua entubada}
#' \item{\code{OVSAE}}{- Porcentaje de ocupantes en viviendas particulares habitadas con piso de tierra}
#' \item{\code{OVPT}}{- Porcentaje de ocupantes en viviendas particulares habitadas con piso de tierra}
#' \item{\code{VHAC}}{- Porcentaje de viviendas particulares habitadas con hacinamiento}
#' \item{\code{PL.5000}}{- Porcentaje de población que vive en localidades menores a 5 000 habitantes}
#' \item{\code{PO2SM}}{- Porcentaje de población ocupadacon ingresos menores a 2 salarios mínimos}
#' \item{\code{IM_2020}}{- Índice de marginación, 2020}
#' \item{\code{GM_2020}}{- Grado de marginación, 2020}
#' \item{\code{IMN_2020}}{- Índice de marginación normalizado, 2020}
#' }
#' @docType data
#' @name IMM_2020
#' @usage IMM_2020
#' @format A data frame with 2469 observations on the following 17 variables.
#' @examples
#' head(IMM_2020)

load('data/IMM_2020.RData')
