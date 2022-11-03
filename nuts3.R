data_nuts3 <- mid_school %>%
  select(kraj, pocet_zaku) %>% 
  count(kraj, wt = pocet_zaku, sort = TRUE) %>%
  rename(zaci_nuts3 = n)

# vytvoříme dva nové sloupce jeden který je suma asistentů v každém kraji a 
# jeden který je počet žáků v každém kraji a vytvoříme třetí sloupec který je jejich poměr
students_per_assitent_nust3 <- mid_school %>%
  group_by(kraj) %>%
  summarise(student_total = sum(pocet_zaku),
            asistent_total = sum(pocet_asistentu)) %>%
  mutate(ratio = student_total / asistent_total)


data_nuts3 <- data_nuts3 %>%
  mutate(ration_asistent_zak = students_per_assitent_nust3$ratio)