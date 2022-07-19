p <- c("rmarkdown","bizdays","bookdown","learnr","caTools","corrr","corrplot","curl","RCurl","data.table","data.tree","devtools","doParallel","DiagrammeR","factoextra","rugarch","fGarch","fmsb","filesstrings","here","kableExtra","formatR","patchwork","gt","ggthemes","ggtext","gganimate","ggridges","scales","ggraph","igraph","gridtext","ggpubr","tufte","VennDiagram","desc","usethis","gifski","googleVis","googlesheets4","googledrive","flextable","Hmisc","caret","parsnip","glmnet","janitor","recipes","ranger","randomForest","anomalize","rpart.plot","htmltools","htmlwidgets","httr2","jsonlite","magrittr","vembedr","XML","webshot2","png","Cairo","widgetframe","magick","mongolite" ,"rhandsontable","shinycustomloader","wrapr","leaflet","tidygeocoder","rgdal","sp","lpSolve","lpSolveAPI","optimx","knitr","shiny","lubridate","moments","fitdistrplus","plotly","prettydoc","GGally","ggcorrplot","ggfortify","gganimate","prophet","e1071","naivebayes","splines2","revealjs","rstanarm","rjson","rvest","RSelenium","wdman","stringi","NLP","tidytext","textdata","lexicon","wordcloud2","robotstxt","tm","tm.plugin.webmining","widyr","riem","rlang","lobstr","sde","skimr","golem","shinipsum","slider","tidyquant","feasts","timetk","broom","broom.mixed","dials","infer","modeldata","modeldata","recipes","rsample","tune","workflows","workflowsets","yardstick","tint","tinytex","tufterhandout","pander","dplyr","tidyr","ggplot2","tibble","readr","purrr","stringr","forcats")

for (i in p) {
  usethis::use_package(i, type = "Imports", min_version = NULL)

}

golem::add_dockerfile(expand = FALSE)

