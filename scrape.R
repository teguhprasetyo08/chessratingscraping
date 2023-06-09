#------------------------------------------------------
message("Loading the libraries")
library(rvest)
library(tidyverse)
library(dplyr)
library(mongolite)

#------------------------------------------------------
message("Loading the URL(s)")
url <- "https://www.chess.com/ratings"
link <- read_html(url)

#------------------------------------------------------
message("Get Table")
tabel <- link %>% html_nodes("table") %>% html_table() %>% as.data.frame()

#------------------------------------------------------
message("Preprocessing Table Elements")
tabel$Name <- str_squish(tabel$Name)
tabel_fix <- tabel[,-3]
tabel_fix$Rank <- substr(tabel_fix$Rank,nchar(tabel_fix$Rank)-3+1,nchar(tabel_fix$Rank))
View(tabel_fix)

