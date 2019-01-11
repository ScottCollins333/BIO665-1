# BIO 665 - Assignment 2

### Introduction

The purpose of this assignment is to give you practice working with variables and performing mathematical operations in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-2` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-2` directory.

1. Declare a variable that stores an *integer* value of `2` and another variable that stores a *numeric* value of `3.0`. Then print the following (in order):

    a. The value of the integer.

    b. The value of the numeric.
    
    c. The *type* of the integer variable (use an R function to obtain this type).
    
    d. The *type* of the numeric variable (use an R function to obtain this type).
    
    e. The sum of these two variables (use the `+` sign to add the value of one variable to another).
    
    f. The *type* of the sum.
    
    g. Use the `as.integer` function to convert the integer variable to an actual integer. Then print the type of this variable.
    
    h. The *type* of the sum of the two variables after the type conversion from the previous step.

2. Declare a variable that stores a *string* value of `8460.2`. Print the value of this variable. Then convert the variable to a *numeric* and print its value. Convert the numeric variable to an *integer* and print its value. Finally, convert the integer to a *Boolean* (logical) variable that indicates whether the value is greater than zero.

3. Declare a variable called `numLions` that stores an integer value of `42`. Declare another variable called `numTigers` that stores an integer value of `17`. Declare another variable called `country` that stores a string value of `South Africa`. Print a message that indicates the following: "The number of lions in South Africa is 42. The number of tigers in South Africa is 17." Hint: use the `paste` function.

4. The following code results in an error. First run the code as it is shown below so you can see the error message. Then fix the code so that it calculates and prints the sum of the five integers.

```
bioinformatics <- 1
is <- 2
for <- 3
cool <- 4
people <- 5
print(bioinformatics + is + for + cool + people)
```

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