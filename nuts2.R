data_nuts2 <- mid_school %>% 
  select(nuts2, pocet_zaku, pocet_asistentu) %>%
  count(nuts2, wt = pocet_zaku, sort = TRUE) %>%
  rename(zaci_nuts2 = n)
