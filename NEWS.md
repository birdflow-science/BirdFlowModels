## BirdFlowModels 0.0.2.9002
2023-04-12

* Replaced `amewoo` model with newly fitted model. 
  * It is now natively a dynamically masked model. 
  * It was preprocessed with **ebirdst** v. 2.2021.3.
  * Resolution dropped to 150 km (smaller files, faster tests)
  * It is now a circular model
  * It was preprocessed and imported with BirdFlowR version 0.1.0.9083.

## BirdFlowModels 0.0.2.9001
2023-04-12

* Switching back to  incremental development version numbers - dropping issue 
  based version numbers. 

* Added additional columns to `amewoo$dates` "start", "end", and "midpoint", 
  these are derived from the ebirdst columns "week_start", "week_end", and 
  "week_midpoint".

* Renamed columns in `rewbla$dates` from "week_start", "week_end", and
  "week_midpoint" to  "start", "end", and "midpoint".

* Incremented patch to 1 (0.0.2.x).  BirdFlowR will soon require this version.



## BirdFlowModels 0.0.1.9001
2023-03-30

* Started using semantic versioning  xxx in (.9xxx) indicates github issue number

* Adding `rewbla` (Red-winged Blackbird).  This is likely temporary.

* Added banding data for rewbla:
  - `rewbla_observations`
  - `rewbla_intervals`

* Incremented patch to 1 (0.0.1.x).  BirdFlowR will soon require this version.


## BirdFlowModels 0.0.0.9002
2023-02-23
* Removed dependency on BirdFlowR to eliminate circular dependencies. Partial fix of : [birdflow-science/BirdFlowR#11](https://github.com/birdflow-science/BirdFlowR/issues/11)

## BirdFlowModels 0.0.0.9001
2023-02-20

* Fixed dead ends in `amewoo` 

* Added species metadata to `amewoo` model to support route_migration(). Model was fit with 2019 eBird Status & Trends data, but metadata came from the 2021 runs table. 
