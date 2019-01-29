# BIO 665 - Assignment 6

### Introduction

The purpose of this assignment is to give you additional practice working with functions, conditional statements, and vectors.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-6` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-6` directory. **The test script for each problem will invoke the function that you create for that problem; it will do this multiple times with different arguments to check your function.**

1. Declare a function called `printThirdElement`. This function should accept one argument: a vector. **If** the vector has at least 3 elements in it, your function should print the third element. If it includes fewer than 3 elements, it should print, "This vector has fewer than 3 elements."

2. Please write a function called `getAllButFirstAndLast` that accepts one argument: a vector. Your function should ignore the first and last elements from the specified vector and return a vector with the remaining items. If there are only two items in the vector, your function should return an empty numeric vector. *Please do not use a `for` loop.*

3. Please write a function called `updateZoo`. This function should accept three arguments: 1) a vector of strings containing animal names, 2) an animal to remove from the "zoo", and 3) an animal to replace it with. The function should remove the requested animal and replace it with the animal that has been requested to be added. (Important: the new animal should end up in the same position in the vector as the animal that was removed. Think of this as a zoo where one animal's cage is cleaned out and a new animal moves in.) Finally, your function should return the modified vector. *Please do not use a `for` loop.*

4. Please write a function called `averageLastThree`. This function should accept a single argument: a vector that contains numeric values. The function should calculate the average (mean) of the last three elements in the vector and return that value. Each vector will have at least three values. *Please do not use a `for` loop.*

5. Please write a function called `reverseLastThree`. This function should accept a single argument: a vector. Your function should create a new vector that contains the last three elements in the original vector in **reverse order**. Your function should then return this new vector. Important: if the original vector contains fewer than three elements, your function should return whatever elements are present (in reverse order). *Please do not use a `for` loop.*

6. Please write a function called `retrieveEvenIndices`. This function should accept a single argument: a vector. The function should create a new vector that contains the values from the original vector that have an **even index number** starting at 2 and then return that new vector. *Please do not use a `for` loop.*

7. Please write a function called `areAllEven`. This function should accept a single argument: a vector of numeric values. The function should return a logical (Boolean) value that indicates whether *all* values in the vector are whole, even numbers. *Please do not use a `for` loop.*

8. Please write a function called `isAnyEven`. This function should accept a single argument: a vector of numeric values. The function should return a logical (Boolean) value that indicates whether *any* values in the vector are whole, even numbers. *Please do not use a `for` loop.*

9. Please write a function called `howManySixes`. This function should accept a single argument: a vector of numeric values. Your function should calculate how many values are the number 6 in the vector. Your function should return that number. *Please do not use a `for` loop.* (Hint: One way to solve this problem is to use the `table` function. You can use that function to calculate the frequency of each unique value in the vector. It will return an object that behaves like a named vector.)

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
