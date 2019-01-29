source("3.R")

mammals = c("rhino", "elephant", "lion", "tiger", "hippo", "cheetah", "panda")
birds = c("parrot", "flamingo", "ostrich", "owl", "emu", "peacock")
fish = c("shark", "piranha")
amphibians = c("frog", "toad", "newt", "salamander", "mantella")

print(updateZoo(mammals, "hippo", "honey badger"))
print(updateZoo(birds, "owl", "falcon"))
print(updateZoo(fish, "piranha", "clownfish"))
print(updateZoo(amphibians, "frog", "mudpuppy"))