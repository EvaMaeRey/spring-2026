
<!-- README.md is generated from README.Rmd. Please edit that file -->

# This repo is for our Spring 2026 stuff…

<!-- badges: start -->

<!-- badges: end -->

The goal of spring-2026 is to hold our stuff.

1.  [2026-03-29-introduction/introduction.html](https://evamaerey.github.io/spring-2026/2026-03-29-introduction/introduction.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/2026-03-29-introduction/introduction.Rmd)**
2.  [0000-00-00-templates/xaringan_template.html](https://evamaerey.github.io/spring-2026/0000-00-00-templates/xaringan_template.html)
    **[source](https://github.com/evamaerey/spring-2026/blob/master/0000-00-00-templates/xaringan_template.Rmd)**

``` r
new_xaringan <- function(name){
  
  dir <- paste0(Sys.Date(), "-", name)
  
  dir.create(dir, recursive = F)
  
  filepath <- paste0(dir, "/", name, ".Rmd")
  
  readLines("0000-00-00-templates/xaringan_template.Rmd") |> 
    writeLines(filepath)

  rstudioapi::documentOpen(filepath)
  
}   

new_xaringan(name = "introduction")
```
