# BIO 665 - Assignment 11

### Introduction

The purpose of this assignment is to help you become more comfortable with transforming data using the `dplyr` package.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-11` and put your answer scripts (see below) in that directory.

### Getting started

Read the instructions carefully for each problem below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-11` directory. The test script for each problem will invoke the script that you create for that problem.

At the top of *each* script that you create for this assignment, you will need to load the `tidyverse` packages (which includes `dplyr`), as follows:

```
library(tidyverse)
```

For this assignment, you will analyze a data file that has been provided by [GapMinder](http://www.gapminder.org). Specifically, you will analyze [this file](https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv), which is a comma-delimited file that indicates life expectancy and GDP per capita for 142 countries over the past few decades. To analyze the data, you will need to load it into a variable near the top of *each* of your answer scripts. The following code illustrates how you would read this file using the `read_csv` function.

```
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")
```

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Please use R code to answer the following questions. You may need to look at the `dplyr` documentation.

1. We have data for how many different countries? Please print an integer. (Hint: The `distinct` function can help you with this.)

2. What data do we have for the United States and United Kingdom combined? Please print a tibble that contains **all** of the data for these two countries, sorted by country (in **ascending order**) and year (in **descending** order). [Hint: By default, R will print only a portion of tibbles when they are large. You can force it to print the entire tibble using code such as the following: `print(data, n=Inf, width=Inf)`]

3. Please add a new column (`econMetric`) that is the ratio between GDP per capita and life expectancy (`gdpPercap` divided by `lifeExp`). Then print all columns of the first 20 rows of the data for African countries, sorted by the `econMetric` column (in ascending order). (Hint: When you print, use the `n` and `width` arguments to the `print` function.)

4. What is the average GDP per capita (`gdpPercap` column) for each continent (those for which we have data)? Please print a tibble that lists each continent and the average GDP per capita for each continent, sorted by continent name (in ascending order). (Hint: Use the `group_by` and `summarize` functions.)

5. Which 5 countries have the lowest *average* life expectancy (`lifeExp` column)? Please print the country name in the first column and the average life expectancy in the second column. Please sort the data by average life expectancy (in ascending order). (Hint: Use the `n` argument for the `print` function.)

6. Please find which 5 countries grew the most between 1952 and 2007. Because population sizes vary so much from one country to another, divide the 2007 value by the 1952 number when calculating growth. Print the country name in the first column, the starting (1952) population in the second column, the ending (2007) population in the third column, and growth in the fourth column. Sort by the growth column (in ascending order). Hints:

    a. Create a tibble that contains data for 1952. Keep only the `country` and `pop` columns. Rename the `pop` column to `start`.

    b. Create a tibble that contains data for 2007. Keep only the `country` and `pop` columns. Rename the `pop` column to `end`.
    
    c. Merge these two tables on the `country` column. In the future, you will learn more about how to do this. For now, here is some example code: `combined = inner_join(startData, endData, by="country")`.
    
    d. Create a new column called `growth` that divides the `end` values by the `start` values.
    
    e. Sort the results (in descending order) and then print the first 5 rows. (Specify a value for the `n` argument when you print.)

7. **[Optional]** Suppose you wished to improve the readability of the data. For the original data, rename the columns so that each column name starts with a capital letter, the words are spelled out, and there are underscores between words, as follows: Country, Year, Population, Continent, Life_Expectancy, GDP_Per_Capita. Then print the first 10 rows of the tibble. Make sure to print the full width of the tibble (`width` argument).

### Committing your code

After you complete the problems, stage and commit your scripts to your GitHub repository. You can commit your code using the following three commands (replace `<message>` with an actual message that describes what you are doing):

```
git add --all
git commit -m "<message>"
git push origin master
```

You do **not** need to submit anything to Learning Suite for this assignment.

### Checking your answers

The [this site](http://bonsai.byu.edu:9000) to check your code after you have committed it to GitHub. It will tell you whether your code produces output that matches the expected output. Let me know if you encounter any problems as you use this site. **This site is only available from BYU campus.**