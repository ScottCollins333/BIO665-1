# BIO 365 - Assignment 2

### Instructions

The purpose of this assignment is to help you become more familiar with using vectors in R. In this repository, you will find a directory called `Tests`. It contains a test script for each problem. I will use these scripts to test your code. You can use them to test your code as well. You will also find a directory called `ExpectedOutput`. If your code is working properly for a given problem, you should get this output when the test script is executed for that problem.

**The instructions for using GitHub are slightly different for this assignment compared to the last one.** Please go to GitHub under *your* account and create a new repository. Please call this repository `BIO365`. This repository will house *many* of the homework assignments for this semester (unlike the repository for the 1st assignment, which was specific to that one assignment). Go into the settings of your repository and **make sure it is listed as "private"**. Next click on "Settings" and "Collaborators" and add me as a collaborator on your repository (my GitHub ID is `srp33`).

Then "clone" your `BIO365` GitHub repository to your local computer.

``
git clone <clone URL>
``

Read the instructions carefully for each problem listed below. For each of the problems, you should write an R script called `X.R`, but replace `X` with the problem number. For example, for problem 1, the R script would be named `1.R`. **Store these scripts in a directory called `Assignment-2` in the local copy of your repository.**

### Problem Descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

1. Please write a function called `addNumbers` that calculates the sum of two numeric values. The function should accept two arguments (the two numbers to be summed), **construct a vector** of those values, and *return* the sum of the values (use a function). In some of the tests, x or y will be an `NA` value. You should ignore these when calculating the sum; there is an argument to the `sum` function that can do this. *Please do not use a `for` loop.*

2. Let's say you are tracking the amount of milk produced by each of three cows. Each day you want to know the maximum amount of milk produced by any of the cows in the group. Please write a function called `getMaxMilk` that accepts three arguments (`cow1`, `cow2`, and `cow3`), which are each numbers that represent the amount of milk produced by the cows. Your function should figure out the **maximum** amount of milk produced and then *return* that value. `NA` values might be passed to the function, so make sure to deal with those. *Please do not use a `for` loop or an `if` statement.*

3. Please write a function called `isVectorEmpty` that accepts a single argument: a vector. Write this function so that it returns a logical value that indicates whether the vector is empty.

4. Declare a function called `printThirdElement`. This function should accept one argument: a vector. **If** the vector has at least 3 elements in it, your function should print the third element. If it includes fewer than 3 elements, it should print, "There are fewer than 3 elements in this vector."

5. Please write a function called `getAllButFirstAndLast` that accepts one argument: a vector. Your function should ignore the first and last elements from the specified vector and return a vector with the remaining items. If there are only two items in the vector, your function should return an empty numeric vector. *Please do not use a `for` loop.*

6. Please write a function called `updateZoo`. This function should accept three arguments: 1) a vector of strings containing animal names, 2) an animal to remove from the "zoo", and 3) an animal to replace it with. The function should remove the requested animal and replace it with the animal that has been requested to be added. (Important: the new animal should end up in the same position in the vector as the animal that was removed. Think of this as a zoo where one animal's cage is cleaned out and a new animal moves in.) Finally, your function should return the modified vector. *Please do not use a `for` loop.*

7. Please write a function called `cloneAnimals`. This function should accept two arguments: 1) a vector of animal names and 2) the number of times the animals should be cloned. The function should create the specified number of copies of the animals and add them to the original vector. The function should then sort the entire vector and return it. Note: If you clone your animals zero times, your vector should be the same as the original vector, except that it will be sorted. If you clone your animals one time, your new vector will have two copies of each animal, etc. *Please do not use a `for` loop.*

8. Please write a function called `averageLastThree`. This function should accept a single argument: a vector that contains numeric values. The function should calculate the average (mean) of the last three elements in the vector and return that value. Each vector will have at least three values. *Please do not use a `for` loop.*

9. Please write a function called `reverseLastThree`. This function should accept a single argument: a vector. Your function should create a new vector that contains the last three elements in the original vector in **reverse order**. Your function should then return this new vector. Important: if the original vector contains fewer than three elements, your function should return whatever elements are present (in reverse order). *Please do not use a `for` loop.*

10. Please write a function called `retrieveEvenIndices`. This function should accept a single argument: a vector. The function should create a new vector that contains the values from the original vector that have an **even index number** starting at 2 and then return that new vector. *Please do not use a `for` loop.*

11. Please write a function called `areAllEven`. This function should accept a single argument: a vector of numeric values. The function should return a logical (Boolean) value that indicates whether *all* values in the vector are whole, even numbers. *Please do not use a `for` loop.*

12. Please write a function called `isAnyEven`. This function should accept a single argument: a vector of numeric values. The function should return a logical (Boolean) value that indicates whether *any* values in the vector are whole, even numbers. *Please do not use a `for` loop.*

13. Please write a function called `repeatYourself` that accepts two arguments: 1) a string and 2) an integer. Your function *should* use a `for` loop to print the first value as many times as indicated by the integer (each on a separate line).


### Submitting the assignment

After you complete the problems, *commit* and *push* your answers to GitHub. You can commit your code using the following three commands (replace `<message>` with an actual message):

```
git add --all
git commit -m "<message>"
git push origin master
```

After committing your solutions, make sure they show up properly on GitHub. Then go to Learning Suite and submit the URL of your repository. I will download and test your code.
