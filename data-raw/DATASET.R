# I haven't preserved the full story of this dataset, but am recording code
# to update it here.


# Setup

library(BirdFlowR)

# 1.  amewoo

# As of 11/21/2022 this was fit with the 2021 version of eBirdst
amewoo_hdf5 <- "../Models/BFModelsSource/amewoo_2021_150km_obs1.0_ent0.001443_dist0.008658_pow0.6.hdf5"
amewoo_rda_file <- "./data/amewoo.rda"

amewoo <- import_birdflow(amewoo_hdf5)
save(amewoo, file = amewoo_rda_file)

tools::resaveRdaFiles(amewoo_rda_file)

tools::checkRdaFiles(amewoo_rda_file)$compress

rewbla <- BirdFlowModels::rewbla


# Add new columns to dates (that are present in the rewbla model)


# resave
save(amewoo, file = amewoo_rda_file, compress = original_compression)

# 2. rewbla   - drop "week_" prefix

# Load
rewbla_rda_file <- "./data/rewbla.rda"
loaded <- load(rewbla_rda_file)
stopifnot(loaded == "rewbla")
original_compression <- tools::checkRdaFiles(rewbla_rda_file)$compress

d <- rewbla$dates
names(d) <- gsub("^week_", "", names(d))
rewbla$dates <- d
str(rewbla$dates)

# resave
save(rewbla, file = rewbla_rda_file, compress = original_compression)


