data_nuts3 <- mid_school %>%
  select(kraj, pocet_zaku) %>% 
  count(kraj, wt = pocet_zaku, sort = TRUE) %>%
  rename(zaci_nuts3 = n)