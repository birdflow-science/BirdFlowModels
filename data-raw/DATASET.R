# I haven't preserved the full story of this dataset, but am recording code
# to update it here.
# A pending issue with this package is to make a new, clean model to replace
# the current models and when we do that I'll include the full process here.



#------------------------------------------------------------------------------#
# Changes in version 0.0.1.9005
# * Update amewoo$dates object by adding midpoint, start, and end columns
#   that are derived from ebirdst.  The intent is to eventually drop the doy
#   column.
# * Update rewbla$dates by dropping "week_" prefix to midpoint, start, and end
#------------------------------------------------------------------------------#

# Setup

library(BirdFlowR)

# 1.  amewoo

amewoo_rda_file <- "./data/amewoo.rda"
loaded <- load(amewoo_rda_file)
stopifnot(loaded == "amewoo")

original_compression <- tools::checkRdaFiles(amewoo_rda_file)$compress

rewbla <- BirdFlowModels::rewbla

validate_BirdFlow(amewoo)

head(amewoo$dates)

# Add new columns to dates (that are present in the rewbla model)
stopifnot(all(rewbla$doy == amewoo$doy))
d <- amewoo$dates
rd <- rewbla$dates
d <- cbind(d, rd[ , !names(rd) %in% names(d)])
stopifnot(setequal(names(d), names(rd)))
d <- d[, names(rd)] # reorder columns
d$date <- as.character(d$date)
# drop  "week_" prefix
names(d) <- gsub("^week_", "", names(d))
amewoo$dates <- d

validate_BirdFlow(amewoo)

# Check structure of both objects
str(amewoo$dates)
str(rewbla$dates)

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


