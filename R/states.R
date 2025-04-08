#' Low Resolution State Boundaries
#'
#' This is a low resolution copy of the boundaries of U.S. states
#' from Natural Earth
#'
#' It is included here to make it available to a vignette in BirdFlowR
#' without adding a dependency to the **rnaturalearthhires** package.
#'
#'  If you need state boundaries for anything other than a trivial example
#'  please use `rnaturalearth::ne_states("United States of America")` for
#'  a higher resolution version of the state boundaries.
#'
#'
#' @format *sf* object containing very coarse state boundaries this is also of
#' class **data.frame** and has columns:
#' \describe{
#'   \item{name}{State name}
#'   \item{geometry}{Contains polyon information}
#'
#'  The code below was used to create this object:
#'  ```
#'  bf <- amewoo
#' states <- rnaturalearth::ne_states("United States of America")
#' states <- states[!states$gn_name %in% c("Alaska", "Hawaii"), ]
#' states <- sf::st_transform(states, crs(bf))
#'
#'
#' states <- sf::st_simplify(states, preserveTopology = FALSE,
#'                           dTolerance = 1000)
#' states <- states[ , names(states) %in% c("name", "geometry")]
#'  ```
#'
#' }
#' @source <https://www.naturalearthdata.com>
"states"
