# BIO 665 - Assignment 4

### Introduction

The purpose of this assignment is to give you practice working with vectors in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-4` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-4` directory.

*Note: These problems were copied (with permission and with slight modification) from the excellent book, [YaRrr! The Pirate’s Guide to R](https://bookdown.org/ndphillips/YaRrr/). You can find the solutions to these problems within that book. However, working on these on your own (or with a classmate) will prepare you much better for exams in this course than looking at the solutions before you solve them. Having said that, it would be a great idea to look at the solutions **after** you have completed them on your own.*

1. Create the vector [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] in three ways: once using `c()`, once using `a:b`, and once using `seq()`. Print each of these vectors on a separate line.

2. Create the vector [2.1, 4.1, 6.1, 8.1] in two ways, once using `c()` and once using `seq()`. Print each of these vectors on a separate line.

3. Create the vector [0, 5, 10, 15] in 3 ways: using `c()`, `seq()` with a `by` argument, and `seq()` with a `length.out` argument. Print each of these vectors on a separate line.

4. Create the vector [101, 102, 103, 200, 205, 210, 1000, 1100, 1200] using a combination of the `c()` and `seq()` functions. Print this vector.

5. A new batch of 100 pirates are boarding your ship and need new swords. You have 10 scimitars, 40 broadswords, and 50 cutlasses that you need to distribute evenly to the 100 pirates as they board. Create a vector of length 100 where there is 1 scimitar, 4 broadswords, and 5 cutlasses in each group of 10. That is, in the first 10 elements there should be exactly 1 scimitar, 4 broadswords and 5 cutlasses. The next 10 elements should also have the same number of each sword (and so on). Print this vector.

6. Create a vector that repeats the integers from 1 to 5, 10 times. That is [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...]. The length of the vector should be 50! Print this vector.

7. Now, create the same vector as before, but this time repeat 1, 10 times, then 2, 10 times, etc., That is [1, 1, 1, ..., 2, 2, 2, ..., ... 5, 5, 5]. The length of the vector should also be 50. Print this vector.

8. Create a vector that shows the square root of the integers from 1 to 10. Print this vector.

9. Renata thinks that she finds more treasure when she's had a mug of grogg than when she doesn't. To test this, she recorded how much treasure she found over 7 days without drinking any grogg, and then did the same over 7 days while drinking grogg. Here are her results:

```{r, echo = FALSE}
renata.score <- data.frame(
                          day = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"),
                           no_grogg = c(0, 0, 1, 0, 1, 2, 2),
                           grogg = c(2, 0, 3, 1, 0, 3, 5))
knitr::kable(renata.score, caption = "Renata's treasure haul when she was *not* drinking grogg and when she was drinking grogg.")
```

How much treasure did Renata find on average when she was *not* drinking grogg? What about when she was drinking grogg? Put the data in vectors and calculate these average values. First, print the average value for no grogg. Then print the average value for grogg (on a separate line).

10. Using Renata's data again, create a new vector called `difference` that shows how much more treasure Renata found when she was drunk and when she was not. What was the mean, median, and standard deviation of the *difference*? Print each of these values on a separate line.

11. There's an old parable that goes something like this. A man does some work for a king and needs to be paid. Because the man loves rice (who doesn't?!), the man offers the king two different ways that he can be paid. *You can either pay me 100 kilograms of rice, or, you can pay me as follows: get a chessboard and put one grain of rice in the top left square. Then put 2 grains of rice on the next square, followed by 4 grains on the next, 8 grains on the next...and so on, where the amount of rice doubles on each square, until you get to the last square. When you are finished, give me all the grains of rice that would (in theory) fit on the chessboard.* The king, sensing that the man was an idiot for making such a stupid offer, immediately accepts the second option. He summons a chessboard, and begins counting out grains of rice one by one.... Assuming that there are 64 squares on a chessboard, calculate how many grains of rice the main will receive. *Hint: If you have trouble coming up with the answer, imagine how many grains are on the first, second, third and fourth squares, then try to create the vector that shows the number of grains on each square. Once you come up with that vector, you can easily calculate the final answer with the `sum()` function.* Print your answer.

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