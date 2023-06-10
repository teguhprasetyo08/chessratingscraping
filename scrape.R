#------------------------------------------------------
message("Load the libraries")
library(rvest)
library(tidyverse)
library(dplyr)
library(mongolite)

#------------------------------------------------------
message("Load the URL(s)")
url <- "https://www.chess.com/ratings"
link <- read_html(url)

#------------------------------------------------------
message("Get Table")
tabel <- link %>% html_nodes("table") %>% html_table() %>% as.data.frame()

#------------------------------------------------------
message("Preprocessing Data Frame Elements")
tabel$Name <- str_squish(tabel$Name)
tabel_fix <- tabel[,-3]
tabel_fix$Rank <- substr(tabel_fix$Rank,nchar(tabel_fix$Rank)-3+1,nchar(tabel_fix$Rank))


#------------------------------------------------------
message("Connect to MongoDB Cloud")
atlas <- mongo(collection = "scrapingchess",
               db = "scrapingchess",
               url = "mongodb+srv://teguhprasetyo08:T36uh#2023@cluster1.fevi6fb.mongodb.net/?retryWrites=true&w=majority"
)

#------------------------------------------------------
message("Store data to database")
atlas$insert(tabel_fix)
atlas$disconnect()
