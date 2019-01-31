source("10.R")

smallMammals <- c("gopher", "squirrel", "beaver", "mouse", "squirrel", "squirrel", "mouse", "weasel", "weasel", "squirrel", "bobcat", "gopher")
weights <- c(8.2, 3.1, 13.0, 4.4, 1.9, 2.3, 2.2, 6.5, 5.9, 2.8, 15.3, 7.4)

print(findMaxWeights(smallMammals, weights))