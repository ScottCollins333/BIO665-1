source("4.R")

# The first few lines of code generate random numbers

set.seed(0)

dbh1_a = rnorm(20, mean=20, sd=5)
dbh1_b = rnorm(20, mean=20, sd=5)

dbh2_a = c(dbh1_a, dbh1_a + runif(20) * 2)
dbh2_b = c(dbh1_b, dbh1_b + runif(20) * 2)

print(getBasalArea(dbh1_a[1]))
print(getBasalArea(dbh1_b[1]))

print(getBasalAreaVector(dbh1_a))
print(getBasalAreaVector(dbh1_b))

print(getTwoYearAverage(dbh2_a))
print(getTwoYearAverage(dbh2_b))

print(getLogicalGrowth(dbh2_a))
print(getLogicalGrowth(dbh2_b))