#!/bin/sh

echo "local({
  r <- getOption('repos')
  r['CRAN'] <- 'http://cran.r-project.org'
  options(repos = r)
})" >> ~/.Rprofile


 apt-get update && \
   wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1093-amd64-debian.tar.gz && \
   tar -xvzf rstudio-1.3.1093-amd64-debian.tar.gz && \
   rm -rf rstudio-1.3.1093-amd64-debian.tar.gz 
#   mv  rstudio-1.3.1093 \tools
