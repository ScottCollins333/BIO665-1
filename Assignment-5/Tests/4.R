source("4.R")

mammals = c("rhino", "elephant", "lion", "tiger", "hippo", "cheetah", "panda")
birds = c("parrot", "flamingo", "ostrich", "owl", "emu", "peacock")
fish = c("shark", "piranha")
amphibians = c("frog", "toad", "newt", "salamander", "mantella")

print(cloneAnimals(mammals, 1)) 
print(cloneAnimals(birds, 2)) 
print(cloneAnimals(fish, 5)) 
print(cloneAnimals(amphibians, 0))