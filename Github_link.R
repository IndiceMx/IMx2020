usethis::create_from_github(
  "https://github.com/IndiceMx/IMx2020.git",
  destdir = here::here()
)

# Para crear el link 
pkgdown::build_site_github_pages()
pkgdown::build_site()
usethis::use_build_ignore("Github_link.R")


# Crear NAMESPACE y evitar errores
devtools::document()

## usethis::use_github_action() 
roxygen2::roxygenize()

# Para crear los archivos para github pages 
#usethis::use_pkgdown_github_pages()
# Te reescribre tu _pkgdown.yml

## Evitar problemas con el archuvo inst/doc
#https://community.rstudio.com/t/browsevignettes-mypackage-saying-no-vignettes-found/68656/7
tools::buildVignettes(dir = ".", tangle=TRUE)
dir.create("inst/doc")
file.copy(dir("vignettes", full.names=TRUE), "inst/doc", overwrite=TRUE)
## Se realiza un check pero con la función 
devtools::check(".", vignettes=FALSE) 


# Correr todas las bases de datos
devtools::load_all()

## Para cambiar las bases de datos .rda 
#https://community.rstudio.com/t/how-to-store-and-document-data-to-be-used-within-package/4359/4
#https://www.crumplab.com/vertical/articles/vertical.html
usethis::use_data(IMC_2020)
