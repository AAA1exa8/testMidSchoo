#nuts3_vector <- c("CZ0100", "CZ020", "CZ031", "CZ032", "CZ041", "CZ042", "CZ051",
#                  "CZ052", "CZ053", "CZ063", "CZ064", "CZ071", "CZ072", "CZ080")
#nuts3_factor_sorted <- factor(nuts3_vector_sorted)
#nuts3_factor <- factor(nuts3_vector)
#nuts3_factor

#kraje <- sort(unique(mid_school$kraj))
#kraje

#factor_kraje <- factor(mid_school$kraj)
#levels(factor_kraje) <- nuts3_vector_sorted
#factor_kraje




# Vector NUTS2 seřazený podle toho jak jdou kraje za sebou
nuts3_vector_sorted <- c("CZ031", "CZ064", "CZ041", "CZ052", "CZ051", "CZ080",
                         "CZ071", "CZ053", "CZ032", "CZ010", "CZ020", "CZ042",
                         "CZ063", "CZ072")
# Předělá column kraj z string na factor
mid_school$kraj <- factor(mid_school$kraj)
# Připíše nuts3 jako levely pro kraje (přiřazují se abecedně)
levels(mid_school$kraj) <- nuts3_vector_sorted



# Vytvoří NUTS2 column a zpíše do ní první 4 znaky odpovídající nuts3 (první 4 znaky nuts3 jsou nuts 2)
mid_school <- mid_school %>% mutate(nuts2 = strtrim(as.character(mid_school$kraj), 4))


mid_school_zaloha1 <- mid_school
# přerovná columns aby byly columns kraj a nuts2 vedle sebe
mid_school <- mid_school[,c(1, 2, 7, 3, 4, 5, 6)]