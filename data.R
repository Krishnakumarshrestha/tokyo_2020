

# Loading Package
library(dplyr)
library(rvest)
library(magrittr)


# Scraping Data from Wikipedia
url<-"https://en.wikipedia.org/wiki/2020_Summer_Olympics_medal_table#Medal_table"
df<-read_html(url) %>%
  html_table(header = TRUE,fill = TRUE) %>%
  extract2(2)


