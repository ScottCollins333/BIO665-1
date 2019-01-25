source("3.R")

print(isVectorEmpty(1:5))
print(isVectorEmpty(c("a", "b")))
print(isVectorEmpty(TRUE))
print(isVectorEmpty(numeric(0)))
print(isVectorEmpty(character(0)))
print(isVectorEmpty(-1:2))