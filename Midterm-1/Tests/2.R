source("2.R")

# This generates some random numerical data.
# Setting a seed ensures the same numbers are generated each time.
set.seed(1)
data1 = matrix(runif(200), nrow=10)
rownames(data1) = paste("Drug", 1:10, sep="_")
colnames(data1) = paste("CellLine", 1:20, sep="_")

# This generates another matrix of random data
data2 = matrix(runif(500), nrow=5)
rownames(data2) = paste("Drug", 1:5, sep="_")
colnames(data2) = paste("CellLine", 1:100, sep="_")

print(evaluateDrugs(data1))
print(evaluateDrugs(data2))