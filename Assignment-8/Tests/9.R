source("9.R")

birdWeights <- list("swan" = c(8.2, 9.3, 7.5), "duck" = c(3.1, 3.0, 4.4), "brant" = c(7.4), "scoter" = c(5.9, 8.3),
                    "hummingbird" = c(0.3, 0.5, 0.4, 0.6, 0.3), "goose" = c(6.5, 5.9, 4.8, 5.3))

print(findMaxWeights2(birdWeights))