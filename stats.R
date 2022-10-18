mean_zaci_nema_psychologa <- mid_school %>%
  select(pocet_zaku, psycholog) %>%
  filter(psycholog == "ne")

mean_zaci_nema_psychologa <- mean(mean_zaci_nema_psychologa$pocet_zaku)

mean_zaci_nema_specped <- mid_school %>%
  select(pocet_zaku, spec_pedagog) %>%
  filter(spec_pedagog == "ne")

mean_zaci_nema_specped <- mean(mean_zaci_nema_specped$pocet_zaku)
