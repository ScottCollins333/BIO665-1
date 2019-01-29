source("8.R")

print(isAnyEven(c(1:10)))
print(isAnyEven(c(10:1)))
print(isAnyEven(seq(2, 12, by=2)))
print(isAnyEven(c(1, seq(2, 12, by=2))))
print(isAnyEven(seq(1, 11, by=2)))
print(isAnyEven(c(0, seq(1, 11, by=2))))