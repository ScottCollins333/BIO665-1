source("1.R")

mammals = c("cat", "cat", "dog", "mouse", "cat", "bear", "wolf", "cat", "dog", "deer", "cat")
birds = c("robin", "jay", "mockingbird", "eagle", "sparrow", "jay", "robin")

print(howMany(mammals, "cat"))
print(howMany(mammals, "dog"))
print(howMany(mammals, "wolf"))
print(howMany(mammals, "hiena"))
print(howMany(mammals, "cat"))
print(howMany(birds, "jay"))
print(howMany(birds, "mockingbird"))
print(howMany(birds, "tweety"))