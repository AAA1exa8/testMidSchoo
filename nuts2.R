data_nuts2 <- mid_school %>% 
  select(nuts2, pocet_zaku, pocet_asistentu) %>%
  count(nuts2, wt = pocet_zaku, sort = TRUE) %>%
  rename(zaci_nuts2 = n)


# vytvoříme dva nové sloupce jeden který je suma asistentů v každém nuts2 a 
# jeden který je počet žáků v každém kraji a vytvoříme třetí sloupec který je jejich poměr
students_per_assitent_nust2 <- mid_school %>%
  group_by(nuts2) %>%
  summarise(student_total = sum(pocet_zaku),
            asistent_total = sum(pocet_asistentu)) %>%
  mutate(ratio = student_total / asistent_total)

data_nuts2 <- data_nuts2 %>%
  mutate(ration_asistent_zak = students_per_assitent_nust2$ratio)