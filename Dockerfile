FROM rocker/r-ver:4.2.0
RUN apt-get update && apt-get install -y  cargo cmake default-jre-headless gdal-bin git-core imagemagick libcairo2-dev libcurl4-openssl-dev libgdal-dev libgeos-dev libgeos++-dev libgit2-dev libglpk-dev libgmp-dev libicu-dev libmagic-dev libmagick++-dev libpng-dev libproj-dev libsasl2-dev libssl-dev libxml2-dev make pandoc pandoc-citeproc zlib1g-dev && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 4)" >> /usr/local/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_cran("rlang",upgrade="always", version = "1.0.2")'
RUN Rscript -e 'remotes::install_cran("magrittr",upgrade="always", version = "2.0.3")'
RUN Rscript -e 'remotes::install_cran("stringi",upgrade="always", version = "1.7.6")'
RUN Rscript -e 'remotes::install_cran("formatR",upgrade="always", version = "1.12")'
RUN Rscript -e 'remotes::install_cran("curl",upgrade="always", version = "4.3.2")'
RUN Rscript -e 'remotes::install_cran("jsonlite",upgrade="always", version = "1.8.0")'
RUN Rscript -e 'remotes::install_cran("httr",upgrade="always", version = "1.4.3")'
RUN Rscript -e 'remotes::install_cran("NLP",upgrade="always", version = "0.2-1")'
RUN Rscript -e 'remotes::install_cran("htmltools",upgrade="always", version = "0.5.2")'
RUN Rscript -e 'remotes::install_cran("scales",upgrade="always", version = "1.2.0")'
RUN Rscript -e 'remotes::install_cran("RCurl",upgrade="always", version = "1.98-1.6")'
RUN Rscript -e 'remotes::install_cran("desc",upgrade="always", version = "1.4.1")'
RUN Rscript -e 'remotes::install_cran("igraph",upgrade="always", version = "NA")'
RUN Rscript -e 'remotes::install_cran("htmlwidgets",upgrade="always", version = "1.5.4")'
RUN Rscript -e 'remotes::install_cran("ggridges",upgrade="always", version = "0.5.3")'
RUN Rscript -e 'remotes::install_cran("shiny",upgrade="always", version = "1.7.1")'
RUN Rscript -e 'remotes::install_cran("data.table",upgrade="always", version = "1.14.2")'
RUN Rscript -e 'remotes::install_cran("sp",upgrade="always", version = "1.5-0")'
RUN Rscript -e 'remotes::install_cran("knitr",upgrade="always", version = "1.39")'
RUN Rscript -e 'remotes::install_cran("png",upgrade="always", version = "0.1-7")'
RUN Rscript -e 'remotes::install_cran("corrplot",upgrade="always", version = "0.92")'
RUN Rscript -e 'remotes::install_cran("broom",upgrade="always", version = "0.8.0")'
RUN Rscript -e 'remotes::install_cran("lubridate",upgrade="always", version = "1.8.0")'
RUN Rscript -e 'remotes::install_cran("plotly",upgrade="always", version = "4.10.0")'
RUN Rscript -e 'remotes::install_cran("recipes",upgrade="always", version = "0.2.0")'
RUN Rscript -e 'remotes::install_cran("tidytext",upgrade="always", version = "0.3.3")'
RUN Rscript -e 'remotes::install_cran("rjson",upgrade="always", version = "0.2.21")'
RUN Rscript -e 'remotes::install_cran("rmarkdown",upgrade="always", version = "2.14")'
RUN Rscript -e 'remotes::install_cran("XML",upgrade="always", version = "3.99-0.9")'
RUN Rscript -e 'remotes::install_cran("tm",upgrade="always", version = "0.7-8")'
RUN Rscript -e 'remotes::install_cran("webshot",upgrade="always", version = "0.5.3")'
RUN Rscript -e 'remotes::install_cran("rvest",upgrade="always", version = "1.0.2")'
RUN Rscript -e 'remotes::install_cran("usethis",upgrade="always", version = "2.1.6")'
RUN Rscript -e 'remotes::install_cran("here",upgrade="always", version = "1.0.1")'
RUN Rscript -e 'remotes::install_cran("config",upgrade="always", version = "0.3.1")'
RUN Rscript -e 'remotes::install_cran("gridtext",upgrade="always", version = "0.1.4")'
RUN Rscript -e 'remotes::install_cran("e1071",upgrade="always", version = "1.7-11")'
RUN Rscript -e 'remotes::install_cran("wrapr",upgrade="always", version = "2.0.9")'
RUN Rscript -e 'remotes::install_cran("wordcloud2",upgrade="always", version = "0.2.1")'
RUN Rscript -e 'remotes::install_cran("widyr",upgrade="always", version = "0.1.4")'
RUN Rscript -e 'remotes::install_cran("widgetframe",upgrade="always", version = "0.3.1")'
RUN Rscript -e 'remotes::install_cran("VennDiagram",upgrade="always", version = "1.7.3")'
RUN Rscript -e 'remotes::install_cran("vembedr",upgrade="always", version = "0.1.5")'
RUN Rscript -e 'remotes::install_cran("twitteR",upgrade="always", version = "1.1.9")'
RUN Rscript -e 'remotes::install_cran("tufte",upgrade="always", version = "0.12")'
RUN Rscript -e 'remotes::install_cran("tm.plugin.webmining",upgrade="always", version = "1.3")'
RUN Rscript -e 'remotes::install_cran("tidygeocoder",upgrade="always", version = "1.0.5")'
RUN Rscript -e 'remotes::install_cran("textdata",upgrade="always", version = "0.4.2")'
RUN Rscript -e 'remotes::install_cran("splines2",upgrade="always", version = "0.4.5")'
RUN Rscript -e 'remotes::install_cran("skimr",upgrade="always", version = "2.1.4")'
RUN Rscript -e 'remotes::install_cran("shinycustomloader",upgrade="always", version = "0.9.0")'
RUN Rscript -e 'remotes::install_cran("sde",upgrade="always", version = "2.0.15")'
RUN Rscript -e 'remotes::install_cran("rugarch",upgrade="always", version = "1.4-8")'
RUN Rscript -e 'remotes::install_cran("rtweet",upgrade="always", version = "0.7.0")'
RUN Rscript -e 'remotes::install_cran("rstanarm",upgrade="always", version = "2.21.3")'
RUN Rscript -e 'remotes::install_cran("rpart.plot",upgrade="always", version = "3.1.1")'
RUN Rscript -e 'remotes::install_cran("robotstxt",upgrade="always", version = "0.7.13")'
RUN Rscript -e 'remotes::install_cran("riem",upgrade="always", version = "0.3.0")'
RUN Rscript -e 'remotes::install_cran("rhandsontable",upgrade="always", version = "0.3.8")'
RUN Rscript -e 'remotes::install_cran("rgdal",upgrade="always", version = "1.5-31")'
RUN Rscript -e 'remotes::install_cran("revealjs",upgrade="always", version = "0.9")'
RUN Rscript -e 'remotes::install_cran("ranger",upgrade="always", version = "0.13.1")'
RUN Rscript -e 'remotes::install_cran("randomForest",upgrade="always", version = "4.7-1.1")'
RUN Rscript -e 'remotes::install_cran("prophet",upgrade="always", version = "1.0")'
RUN Rscript -e 'remotes::install_cran("prettydoc",upgrade="always", version = "0.4.1")'
RUN Rscript -e 'remotes::install_cran("patchwork",upgrade="always", version = "1.1.1")'
RUN Rscript -e 'remotes::install_cran("parsnip",upgrade="always", version = "0.2.1")'
RUN Rscript -e 'remotes::install_cran("optimx",upgrade="always", version = "2022-4.30")'
RUN Rscript -e 'remotes::install_cran("openxlsx",upgrade="always", version = "4.2.5")'
RUN Rscript -e 'remotes::install_cran("naivebayes",upgrade="always", version = "0.9.7")'
RUN Rscript -e 'remotes::install_cran("mongolite",upgrade="always", version = "2.6.1")'
RUN Rscript -e 'remotes::install_cran("moments",upgrade="always", version = "0.14.1")'
RUN Rscript -e 'remotes::install_cran("magick",upgrade="always", version = "2.7.3")'
RUN Rscript -e 'remotes::install_cran("lpSolveAPI",upgrade="always", version = "5.5.2.0-17.7")'
RUN Rscript -e 'remotes::install_cran("lpSolve",upgrade="always", version = "5.6.15")'
RUN Rscript -e 'remotes::install_cran("lobstr",upgrade="always", version = "1.1.1")'
RUN Rscript -e 'remotes::install_cran("lexicon",upgrade="always", version = "1.2.1")'
RUN Rscript -e 'remotes::install_cran("leaflet",upgrade="always", version = "2.1.1")'
RUN Rscript -e 'remotes::install_cran("kableExtra",upgrade="always", version = "1.3.4")'
RUN Rscript -e 'remotes::install_cran("janitor",upgrade="always", version = "2.1.0")'
RUN Rscript -e 'remotes::install_cran("Hmisc",upgrade="always", version = "4.7-0")'
RUN Rscript -e 'remotes::install_cran("gt",upgrade="always", version = "0.6.0")'
RUN Rscript -e 'remotes::install_cran("golem",upgrade="always", version = "0.3.2")'
RUN Rscript -e 'remotes::install_cran("glmnet",upgrade="always", version = "4.1-4")'
RUN Rscript -e 'remotes::install_cran("gifski",upgrade="always", version = "1.6.6-1")'
RUN Rscript -e 'remotes::install_cran("ggthemes",upgrade="always", version = "4.2.4")'
RUN Rscript -e 'remotes::install_cran("ggtext",upgrade="always", version = "0.1.1")'
RUN Rscript -e 'remotes::install_cran("ggraph",upgrade="always", version = "2.0.5")'
RUN Rscript -e 'remotes::install_cran("ggpubr",upgrade="always", version = "0.4.0")'
RUN Rscript -e 'remotes::install_cran("ggfortify",upgrade="always", version = "0.4.14")'
RUN Rscript -e 'remotes::install_cran("ggcorrplot",upgrade="always", version = "0.1.3")'
RUN Rscript -e 'remotes::install_cran("gganimate",upgrade="always", version = "1.0.7")'
RUN Rscript -e 'remotes::install_cran("GGally",upgrade="always", version = "2.1.2")'
RUN Rscript -e 'remotes::install_cran("fmsb",upgrade="always", version = "0.7.3")'
RUN Rscript -e 'remotes::install_cran("fitdistrplus",upgrade="always", version = "1.1-8")'
RUN Rscript -e 'remotes::install_cran("filesstrings",upgrade="always", version = "3.2.2")'
RUN Rscript -e 'remotes::install_cran("fGarch",upgrade="always", version = "3042.83.2")'
RUN Rscript -e 'remotes::install_cran("doParallel",upgrade="always", version = "1.0.17")'
RUN Rscript -e 'remotes::install_cran("DiagrammeR",upgrade="always", version = "1.0.9")'
RUN Rscript -e 'remotes::install_cran("devtools",upgrade="always", version = "2.4.3")'
RUN Rscript -e 'remotes::install_cran("data.tree",upgrade="always", version = "1.0.0")'
RUN Rscript -e 'remotes::install_cran("corrr",upgrade="always", version = "0.4.3")'
RUN Rscript -e 'remotes::install_cran("caTools",upgrade="always", version = "1.18.2")'
RUN Rscript -e 'remotes::install_cran("caret",upgrade="always", version = "6.0-92")'
RUN Rscript -e 'remotes::install_cran("Cairo",upgrade="always", version = "1.5-15")'
RUN Rscript -e 'remotes::install_cran("broom.mixed",upgrade="always", version = "0.2.9.4")'
RUN Rscript -e 'remotes::install_cran("bizdays",upgrade="always", version = "1.0.10")'
RUN Rscript -e 'remotes::install_cran("aws.s3",upgrade="always", version = "0.3.21")'
RUN Rscript -e 'remotes::install_cran("anomalize",upgrade="always", version = "0.2.2")'
RUN mkdir /build_zone
ADD . /build_zone
WORKDIR /build_zone
RUN R -e 'remotes::install_local(upgrade="always")'
RUN rm -rf /build_zone
EXPOSE 80
CMD R -e "options('shiny.port'=80,shiny.host='0.0.0.0');cloudera::run_app()"