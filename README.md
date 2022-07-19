
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Cloudera Machince Learning R Docker Image

Repo to provide a CML template to build images suitable to `R` users
when:

-   No `sudo` access is provided on CML for users to install `ubuntu`
    libs.
-   Ensure `libudunits2-dev` is part of the ubuntu install.
-   You want minimize setup time for advanced users with the following
    libraries pre-installed:

<!-- -->

    #>   [1] "anomalize"           "bizdays"             "bookdown"           
    #>   [4] "broom"               "broom.mixed"         "Cairo"              
    #>   [7] "caret"               "caTools"             "corrplot"           
    #>  [10] "corrr"               "curl"                "data.table"         
    #>  [13] "data.tree"           "desc"                "devtools"           
    #>  [16] "DiagrammeR"          "dials"               "doParallel"         
    #>  [19] "dplyr"               "e1071"               "factoextra"         
    #>  [22] "feasts"              "fGarch"              "filesstrings"       
    #>  [25] "fitdistrplus"        "flextable"           "fmsb"               
    #>  [28] "forcats"             "formatR"             "GGally"             
    #>  [31] "gganimate"           "gganimate"           "ggcorrplot"         
    #>  [34] "ggfortify"           "ggplot2"             "ggpubr"             
    #>  [37] "ggraph"              "ggridges"            "ggtext"             
    #>  [40] "ggthemes"            "gifski"              "glmnet"             
    #>  [43] "golem"               "googledrive"         "googlesheets4"      
    #>  [46] "googleVis"           "gridtext"            "gt"                 
    #>  [49] "here"                "Hmisc"               "htmltools"          
    #>  [52] "htmlwidgets"         "httr2"               "igraph"             
    #>  [55] "infer"               "janitor"             "jsonlite"           
    #>  [58] "kableExtra"          "knitr"               "leaflet"            
    #>  [61] "learnr"              "lexicon"             "lobstr"             
    #>  [64] "lpSolve"             "lpSolveAPI"          "lubridate"          
    #>  [67] "magick"              "magrittr"            "modeldata"          
    #>  [70] "modeldata"           "moments"             "mongolite"          
    #>  [73] "naivebayes"          "NLP"                 "optimx"             
    #>  [76] "pander"              "parsnip"             "patchwork"          
    #>  [79] "plotly"              "png"                 "prettydoc"          
    #>  [82] "prophet"             "purrr"               "randomForest"       
    #>  [85] "ranger"              "RCurl"               "readr"              
    #>  [88] "recipes"             "recipes"             "revealjs"           
    #>  [91] "rgdal"               "rhandsontable"       "riem"               
    #>  [94] "rjson"               "rlang"               "rmarkdown"          
    #>  [97] "robotstxt"           "rpart.plot"          "rsample"            
    #> [100] "RSelenium"           "rstanarm"            "rugarch"            
    #> [103] "rvest"               "scales"              "sde"                
    #> [106] "shinipsum"           "shiny"               "shinycustomloader"  
    #> [109] "skimr"               "slider"              "sp"                 
    #> [112] "splines2"            "stringi"             "stringr"            
    #> [115] "textdata"            "tibble"              "tidygeocoder"       
    #> [118] "tidyquant"           "tidyr"               "tidytext"           
    #> [121] "timetk"              "tint"                "tinytex"            
    #> [124] "tm"                  "tm.plugin.webmining" "tufte"              
    #> [127] "tufterhandout"       "tune"                "usethis"            
    #> [130] "vembedr"             "VennDiagram"         "wdman"              
    #> [133] "webshot2"            "widgetframe"         "widyr"              
    #> [136] "wordcloud2"          "workflows"           "workflowsets"       
    #> [139] "wrapr"               "XML"                 "yardstick"

# Building the image

In the same directory as the Dockerfile is:

``` r
docker build "Dockerfile" -f docker:latest "."
```
