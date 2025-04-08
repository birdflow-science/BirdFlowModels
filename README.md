# BirdFlowModels

<!-- badges: start -->
[![R-CMD-check](https://github.com/birdflow-science/BirdFlowModels/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/birdflow-science/BirdFlowModels/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This is a "Data" R package that contains a fitted BirdFlow model for use with 
the BirdFlowR package.  

Currently the package contains a model `amewoo` for American Woodcock. 
That is used for most testing and vignette code. It has not been vetted  for 
scientific use.

A second model `rewbla` and a random subset of a banding dataset is used for
testing log likelihood functions.  It is also not vetted for scientific use.

Inclusion of these species here should not be taken as indication that we will
develop fully vetted models for these species, or that they will always be
available in this package.

BirdFlowR is under active development so we anticipate that, in the short term,
the data in the package will change frequently.

## Installation

Use the code below to install from github

```{r}
devtools::install_github("birdflow-science/BirdFlowModels")
```
## Use

After loading this package the dataset will be available for use.

```{r}
library(BirdFlowModels)
library(BirdFlowR)
print(amewoo)
species(amewoo)
```
The [BirdFlowR](https://github.com/birdflow-science/BirdFlowR) package defines
the BirdFlow class and has functions for working with the models.


