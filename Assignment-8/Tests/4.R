source("4.R")

# Declare the test lists
listA = list("A" = 1, "B" = 9, "C" = 4)
listB = list("A" = 4, "B" = -7, "Q" = 3)
listC = list("X" = 4, "Y" = 4, "Z" = 4, "A" = 4)

# Obtain test results
resultA = mergeAndSumLists(listA, listB)
resultB = mergeAndSumLists(listA, listC)
resultC = mergeAndSumLists(listB, listC)

# Check the values in resultA
print(resultA[["A"]])
print(resultA[["B"]])
print(resultA[["C"]])
print(resultA[["Q"]])

# Check the values in resultB
print(resultB[["A"]])
print(resultB[["B"]])
print(resultB[["C"]])
print(resultB[["X"]])

# Check resultC
print(resultC[["A"]])
print(resultC[["B"]])
print(resultC[["Y"]])
print("C" %in% resultC)