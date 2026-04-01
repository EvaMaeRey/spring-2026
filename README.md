
<!-- README.md is generated from README.Rmd. Please edit that file -->

# This repo is for our Spring 2026 stuff…

<!-- badges: start -->

<!-- badges: end -->

The goal of spring-2026 is to hold our stuff.

1.  [hello_world.html](https://evamaerey.github.io/spring-2026/hello_world.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/hello_world.Rmd)**
2.  [2026-03-31-reproducibility/reproducibility.html](https://evamaerey.github.io/spring-2026/2026-03-31-reproducibility/reproducibility.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/2026-03-31-reproducibility/reproducibility.Rmd)**
3.  [2026-03-31-r_basics/r_basics.html](https://evamaerey.github.io/spring-2026/2026-03-31-r_basics/r_basics.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/2026-03-31-r_basics/r_basics.Rmd)**
4.  [2026-03-29-introduction/introduction.html](https://evamaerey.github.io/spring-2026/2026-03-29-introduction/introduction.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/2026-03-29-introduction/introduction.Rmd)**
5.  [0000-00-00-templates/xaringan_template.html](https://evamaerey.github.io/spring-2026/0000-00-00-templates/xaringan_template.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/0000-00-00-templates/xaringan_template.Rmd)**
6.  [0000-00-00-templates/quarto_template.html](https://evamaerey.github.io/spring-2026/0000-00-00-templates/quarto_template.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/0000-00-00-templates/quarto_template.Rmd)**

``` r
new_document <- function(name, type = "xaringan"){
  
  dir <- paste0(Sys.Date(), "-", name)
  
  if(!exists(dir)){dir.create(dir, recursive = F)}
  
  extension = if(type == "xaringan"){".Rmd"}else{".qmd"}
  
  filepath <- paste0(dir, "/", name, extension)
  
  if(type == "xaringan"){template <- "0000-00-00-templates/xaringan_template.Rmd"}
  if(type == "quarto"){template <- "0000-00-00-templates/quarto_template.qmd"}
  
  if(!exists(filepath)){
  readLines(template) |> 
    writeLines(filepath)
  }
    
  rstudioapi::documentOpen(filepath)
  
}   

new_xaringan <- function(...){new_document(..., type = "xaringan")}
new_quarto <- function(...){new_document(..., type = "quarto")}


new_quarto(name = "r_basics")
```

-End-
