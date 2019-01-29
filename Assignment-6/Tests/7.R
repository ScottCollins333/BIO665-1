source("7.R")

print(areAllEven(c(1:10)))
print(areAllEven(c(10:1)))
print(areAllEven(seq(2, 12, by=2)))
print(areAllEven(c(1, seq(2, 12, by=2))))
print(areAllEven(seq(1, 11, by=2)))
print(areAllEven(c(0, seq(1, 11, by=2))))