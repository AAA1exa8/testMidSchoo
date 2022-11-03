# groupneme podle psychologa/spec_pedagog a spočítáme průměrný počet žáků v těchto skupinách
mean_zaci_psycholog <- mid_school %>%
  group_by(psycholog) %>%
  summarise(avgZaku = mean(pocet_zaku))
mean_zaci_specped <- mid_school %>%
  group_by(spec_pedagog) %>%
  summarise(avgZaku = mean(pocet_zaku))





