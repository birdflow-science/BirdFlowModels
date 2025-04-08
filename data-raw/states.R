library(BirdFlowR)
bf <- amewoo
states <- rnaturalearth::ne_states("United States of America")
states <- states[!states$gn_name %in% c("Alaska", "Hawaii"), ]
states <- sf::st_transform(states, crs(bf))


states <- sf::st_simplify(states, preserveTopology = FALSE,
                          dTolerance = 1000)
states <- states[, names(states) %in% c("name", "geometry")]

if (FALSE) {
  # Evaluate how simplified and object size
  plot(states[, "geometry"])
  object.size(states) |> format(units = "Mb")
}


usethis::use_data(states, overwrite = TRUE)
