# LEVANTO DATOS

# Creado por TuQmano el 21 / 09 

library(tidyverse)
library(electorAr)


elecciones63 <- show_available_elections(source = "results") %>% 
  slice(12) %>%
  mutate(year = as.integer(year)) 


eleccion2011 <-   get_election_results("arg",   "presi",    "gral",   2011)


write_csv(eleccion2011, "data/elec2011.csv")
