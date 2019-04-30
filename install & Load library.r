
# add any new packages to this list and run the code 
list_of_packages <- c("RCurl", "tm", "openxlsx", "dplyr", "readxl", "stringr", "data.table", "tidytext", "wordcloud", "reshape2", 
                      "openxlsx", "zoo", "RColorBrewer", "tokenizers", "textstem")

new_packages <- list_of_packages[!(list_of_packages %in% installed.packages()[,"Package"])]

if(length(new_packages)) install.packages(new_packages)

lapply(list_of_packages, library, character.only = TRUE)
rm(list_of_packages)
rm(new_packages)
