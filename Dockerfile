FROM rocker/rstudio:latest
#RUN apt-get update && RUN apt-get install -y  cargo cmake gdal-bin git-core imagemagick libcairo2-dev libcurl4-openssl-dev libgdal-dev libgeos-dev libgeos++-dev libgit2-dev libglpk-dev libgmp-dev libicu-dev libmagic-dev libmagick++-dev libpng-dev libproj-dev libsasl2-dev libssl-dev libudunits2-dev libxml2-dev make pandoc pandoc-citeproc zlib1g-dev htop wget && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
bowtie2 bwidget cargo cmake coinor-libclp-dev dcraw default-jdk gdal-bin git gsfonts \
haveged imagej imagemagick jags libapparmor-dev libarchive-dev libcairo2-dev \
libcurl4-openssl-dev libfftw3-dev libfontconfig1-dev libfreetype6-dev libfribidi-dev \
libgdal-dev libgeos-dev libgit2-dev libgl1-mesa-dev libglib2.0-dev libglpk-dev \
libglu1-mesa-dev libgmp3-dev libgpgme11-dev libgsl0-dev libharfbuzz-dev libhdf5-dev \
libicu-dev libimage-exiftool-perl libjpeg-dev libjq-dev libleptonica-dev libmagick++-dev \
libmpfr-dev libmysqlclient-dev libnetcdf-dev libopenmpi-dev libpng-dev libpoppler-cpp-dev \
libpq-dev libproj-dev libprotobuf-dev librsvg2-dev libsasl2-dev libsndfile1-dev \
libsodium-dev libssh2-1-dev libssl-dev libtesseract-dev libtiff-dev libudunits2-dev \
libv8-dev libwebp-dev libxft-dev libxml2-dev libxslt-dev libzmq3-dev make bwidget \
ocl-icd-opencl-dev pandoc pari-gp perl protobuf-compiler python3 rustc saga tcl \
tesseract-ocr-eng texlive tk tk-dev tk-table unixodbc-dev zlib1g-dev htop wget \
&& rm -rf /var/lib/apt/lists/*v
RUN javareconf
RUN mkdir -p /usr/local/lib/R/etc/ /usr/lib/R/etc/
RUN echo "options(repos = c(REPO_NAME = 'https://packagemanager.rstudio.com/cran/latest'), download.file.method = 'libcurl', Ncpus = 4)" | tee /usr/local/lib/R/etc/Rprofile.site | tee /usr/lib/R/etc/Rprofile.site
RUN R -e 'install.packages(c("remotes","tidyverse","RCurl","plotly","httr2","rgdal","RTL"))'
#RUN Rscript -e 'remotes::install_cran(c("rmarkdown","bizdays","bookdown","learnr","caTools","corrr","corrplot","curl","RCurl","data.table","data.tree","devtools","doParallel","DiagrammeR","factoextra","rugarch","fGarch","fmsb","filesstrings","here","kableExtra","formatR","patchwork","gt","ggthemes","ggtext","gganimate","ggridges","scales","ggraph","igraph","gridtext","ggpubr","tufte","VennDiagram","desc","usethis","gifski","googleVis","googlesheets4","googledrive","flextable","Hmisc","caret","parsnip","glmnet","janitor","recipes","ranger","randomForest","anomalize","rpart.plot","htmltools","htmlwidgets","httr2","jsonlite","magrittr","vembedr","XML","webshot2","png","Cairo","widgetframe","magick","mongolite" ,"rhandsontable","shinycustomloader","wrapr","leaflet","tidygeocoder","rgdal","sp","lpSolve","lpSolveAPI","optimx","knitr","shiny","lubridate","moments","fitdistrplus","plotly","prettydoc","GGally","ggcorrplot","ggfortify","gganimate","prophet","e1071","naivebayes","splines2","revealjs","rstanarm","rjson","rvest","RSelenium","wdman","stringi","NLP","tidytext","textdata","lexicon","wordcloud2","robotstxt","tm","tm.plugin.webmining","widyr","riem","rlang","lobstr","sde","skimr","golem","shinipsum","slider","tidyquant","feasts","timetk","broom","broom.mixed","dials","infer","modeldata","modeldata","recipes","rsample","tune","workflows","workflowsets","yardstick","tint","tinytex","tufterhandout","pander","dplyr","tidyr","ggplot2","tibble","readr","purrr","stringr","forcats","rvg"),upgrade="always")'
RUN mkdir /build_zone
ADD . /build_zone
WORKDIR /build_zone
RUN R -e 'remotes::install_local(upgrade="always")'
RUN rm -rf /build_zone
EXPOSE 80
CMD R -e "options('shiny.port'=80,shiny.host='0.0.0.0');cloudera::run_app()"
