# BIO 665 - Assignment 5

### Introduction

The purpose of this assignment is to give you practice working with functions and conditional statements in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-5` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-5` directory.

1. Please write a function called `addNumbers` that calculates the sum of two numeric values. The function should accept two arguments (the two numbers to be summed), **construct a vector** of those values, and *return* the sum of the values (use a function). In some of the tests, x or y will be an `NA` value. You should ignore these when calculating the sum; there is an argument to the `sum` function that can do this. *Please do not use a `for` loop.*

2. Let's say you are tracking the amount of milk produced by each of three cows. Each day you want to know the maximum amount of milk produced by any of the cows in the group. Please write a function called `getMaxMilk` that accepts three arguments (`cow1`, `cow2`, and `cow3`), which are each numbers that represent the amount of milk produced by the cows. Your function should figure out the **maximum** amount of milk produced and then *return* that value. `NA` values might be passed to the function, so make sure to deal with those. *Please do not use a `for` loop.*

3. Please write a function called `isVectorEmpty` that accepts a single argument: a vector. Write this function so that it returns a logical value that indicates whether the vector is empty.

4. Please write a function called `cloneAnimals`. This function should accept two arguments: 1) a vector of animal names and 2) the number of times the animals should be cloned. The function should create the specified number of copies of the animals and add them to the original vector. The function should then sort the entire vector and return it. Note: If you clone your animals zero times, your vector should be the same as the original vector, except that it will be sorted. If you clone your animals one time, your new vector will have two copies of each animal, etc. *Please do not use a `for` loop.*

5. Please write a function called `shouldIEat` that tells you whether you should eat, depending on how hungry you are. This function should accept a single argument that is a number between 1 and 10. If your hunger level is greater than or equal to 8 and less than or equal to 10, the function should return `Go eat!` If your hunger level is greater than or equal to 3 and less than 8, it should return `Don't eat!` If your hunger level is greater than or equal to 1 and less than 3, it should return `Take a nap!` If your hunger level is greater than 10 or less than 1, it should return `Invalid input.`

6. Suppose you are working in a research laboratory with E. coli (bacteria) that grow in culture. As you keep the bacteria in proper growth conditions, they multiply at a rate of 20% each day. Suppose that other scientists in the same laboratory are working with other types of bacteria, and these grow at different rates than the E. coli. Please write a function that allows researchers to predict the size of their bacterial population after 3 days. This function should be called `predictPopulationGrowth` and should accept three arguments: 1) the name of the bacterial species, 2) the number of bacteria at the beginning of the experiment, and 3) the growth rate per day. This function should calculate the expected growth after 3 days. This number should be rounded to the nearest whole number and converted to an integer value. Your function should return a statement such as: `After 3 days, there will be 16345 E. coli`.

### Committing your code

After you complete the problems, stage and commit your scripts to your GitHub repository. You can commit your code using the following three commands (replace `<message>` with an actual message that describes what you are doing):

```
git add --all
git commit -m "<message>"
git push origin master
```

You do **not** need to submit anything to Learning Suite for this assignment.

### Checking your answers

You can use [this site](http://bonsai.byu.edu:9000) to check your code after you have committed it to GitHub. It will tell you whether your code produces output that matches the expected output. Let me know if you encounter any problems as you use this site. **This site is only available from BYU campus.**
