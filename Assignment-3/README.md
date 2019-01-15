# BIO 665 - Assignment 3

### Introduction

The purpose of this assignment is to give you practice performing mathematical calculations in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-3` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-3` directory.

1. Use built-in R functions to print an answer to each of the following (one answer per line).

    - The absolute value of -15.5.
    - 3.8 rounded **up** to the nearest integer.
    - 3.8 rounded **down** to the nearest integer.
    - 4.483847 rounded to one decimal place using standard rounding.
    - Take the square root of 9.99999.
    - The natural logarithm of 16.
    - The base-2 logarithm of 16.
    - The base-6 logarithm of 16.

    Lastly, add a comment in your code that explains in your own words what a logarithm is and when it might be used.

2. An ecologist is studying the effects of ambient temperature on nematode worm development. Her strategy is to place the worms in small boxes and then to place these boxes under different levels of heat exposure in her lab. In total, she has 341 worms. Write code that performs the calculations described below and prints each answer (one answer per line).

    If exactly 26 worms can fit in a single box, what is the minimum number of boxes she should buy so that there will be enough room for all the worms?

    Assuming that she places 26 worms in all the boxes except the last one, how many worms will be in the last box?

3. You are collecting data on javelina that live in the Mojave dessert. You capture three javelina, sedate them, and measure their weights. Then you realize that you only have a scale that measures the javelina in kilograms, but you need to report their weights in pounds. Their weights are 50.2, 89.4, and 44.9 kilograms. Write code to print their weights in pounds, rounded to 1 decimal place. (A kilogram is approximately equivalent to 2.205 pounds.) Make sure to print the units (in abbreviated form) for each of these measurements.

4. You are on a different research trip, collecting data on hummingbirds that live in the Amazon rain forest. You capture three birds, sedate them, and measure their weights. This time your scale measures in pounds, but your Brazilian colleagues want the weights in kilograms. Their weights in kilograms are 0.125, 0.137, and 0.098. Write code that prints their weights in kilograms, rounded to 3 decimal places. Make sure to print the units (in abbreviated form) for each of these measurements.

5. You are evaluating the health of a group of BYU students and measure the heights and weights of 4 students. Their heights (in centimeters) and weights (in meters) are listed below. Please calculate the Body Mass Index of each student and print these values in order, rounded to the nearest whole number. (Soon we will learn about using functions and loops, which will make such calculations easier. But for now, please hold off on using these.)

    a. Height = 190 cm, weight = 100 kg
    b. Height = 170 cm, weight = 120 kg
    c. Height = 150 cm, weight = 110 kg
    d. Height = 182 cm, weight = 85 kg

The formula for calculating BMI is below:
![BMI formula](https://wikimedia.org/api/rest_v1/media/math/render/svg/a25f48e7bcb8270653f7b027e6dce80f0b6fcd90 "BMI formula)

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