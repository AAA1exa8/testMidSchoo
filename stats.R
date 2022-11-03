# vezmeme jen sloupce s počtem žáků a psycholog a z nich si vezmeme jen řákdy kde není psycholog
mean_zaci_psycholog <- mid_school %>%
  group_by(psycholog) %>%
  summarise(avgZaku = mean(pocet_zaku))
mean_zaci_specped <- mid_school %>%
  group_by(spec_pedagog) %>%
  summarise(avgZaku = mean(pocet_zaku))





