# BirdFlowModels

<!-- badges: start -->
[![R-CMD-check](https://github.com/birdflow-science/BirdFlowModels/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/birdflow-science/BirdFlowModels/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This is a "Data" R package that contains a fitted BirdFlow model for use with 
the BirdFlowR package.  

Currently the package contains a single model `amewoo` for American Woodcock. 
It is intended for testing and demonstrating code, but has not been vetted 
for scientific use.

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
print(amewoo)
species(amewoo)
```
The [BirdFlowR](https://github.com/birdflow-science/BirdFlowR) package defines
the BirdFlow class and has functions for working with the models.


