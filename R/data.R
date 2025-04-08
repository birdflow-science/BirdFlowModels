# This file documents data

#' @name BirdFlowModels
#' @rdname BirdFlowModels
#' @aliases BirdFlowModels
#' @aliases amewoo
#' @aliases rewbla
#' @title Birdflow Example Models
#' @description These BirdFlow models are intended for for testing code and
#'   demonstrating usage in \pkg{BirdFlowR}; they are not fully vetted and
#'   should not be used for research or inference.
#'
#' @format `BirdFlow` model
#'
#' @source Trained on eBird Status and Trends 2019 and 2021 Data.
#'
#' @references Fink, D., T. Auer, A. Johnston, M. Strimas-Mackey, S. Ligocki, O.
#' Robinson, W. Hochachka, L. Jaromczyk, A. Rodewald, C. Wood, I. Davies, A.
#' Spencer. 2022. eBird Status and Trends, Data Version: 2021; Released: 2022.
#' Cornell Lab of Ornithology, Ithaca, New York.
#' https://doi.org/10.2173/ebirdst.2021
#' @seealso [BirdFlowR::load_model()] will load a vetted model from a
#' BirdFlow model collection.  `BirdFlowR::load_collection_index()` will
#' return a data frame with information on available models.
#' @usage amewoo  # American Woodcock
#' @usage rewbla # Red-winged Blackbird
#' @importFrom Matrix Matrix
#' @importMethodsFrom Matrix t
#' @importClassesFrom Matrix Matrix sparseMatrix
"amewoo"


#' @name rewbla_banding_data
#' @rdname rewbla_banding_data
#' @aliases rewbla_observations
#' @aliases rewbla_intervals
#' @usage rewbla_observations
#' @usage rewbla_intervals
#' @title Example banding data for Red-wing Blackbird
#' @description
#' This data was extracted from the North American Bird Banding Program Dataset
#' 1960-2022:
#'
#' Celis-Murillo, A., Malorodova, M., and Nakash, E., 2022, North American Bird
#' Banding Program Dataset 1960-2022 retrieved 2022-07-14: U.S. Geological
#' Survey data release, https://doi.org/10.5066/P9BSM38F.
#'
#' It has been filtered and randomly subset to 3000 birds each of which occurs
#' twice in observations and once in intervals. The sub-setting was for
#' demonstration not statistical reasons.
"rewbla_observations"
