install.packages("rvest")
library(rvest)
library(dplyr)

col_link = "https://en.wikipedia.org/wiki/Comma-separated_values"
col_page = read_html(col_link)

col_table = col_page %>% html_nodes("table.wikitable") %>%
  html_table() %>%.[[1]]

write.table(col_table, file="R_csv.csv", sep =",")
