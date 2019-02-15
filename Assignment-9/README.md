# BIO 665 - Assignment 9

### Introduction

The purpose of this assignment is to give you practice working with tibbles in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-9` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-9` directory. The test script for each problem will invoke the function that you create for that problem; it will do this multiple times with different arguments to check your function.

Before you start, make sure you have installed the `tidyverse` packages. We will use these heavily throughout the rest of the semester.

```
install.packages("tidyverse")
```

If you are using RStudio, simply execute the above code in the console. If you are working at the command line, you will need to first enter the R console and then enter the installation code.

```
$ R
> install.packages("tidyverse")
```

At the top of *each* script that you create for this assignment, you will need to load the `tidyverse` packages, as follows:

```
library(tidyverse)
```

1. A study by Miller, et al. compared the survival of two kinds of rainbow trout fry (babies): those born in a hatchery and those born in the wild. They released 4000 hatchery fry and 4000 wild fry into a stream that flows into Lake Superior. After one year, the researchers collected data on as many of these trout as they could. You can access the data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q05FrySurvival.csv. Please write code that downloads this data file (use the `read_csv` function and specify the URL as the file name), and assigns it to a variable (a tibble). Then print the following information (use a separate `print` statement for each).

    a. The number of rows in the tibble.

    b. The number of columns.

    c. The type of the `frySource` column.

    d. The type of the `survival` column.

    e. The first 10 rows.

    f. The last 10 rows.

    g. The first 5 values in the `frySource` column.

    h. The number of fish that survived (use the `table` function to analyze data in the `survival` column).

    i. The number of fish that were from a hatchery.

2. Researchers evaluated sea anemones to see how they would respond to being startled (cruel, I know!). In a tide pool, the researchers startled 12 individual anemones with a jet of water. After being startled, each anemone would retract their feeding tentacles and then open them some time later. This process was repeated twice. You can access their data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q17AnemonePersonality.csv (The response times were measured in seconds.) As with the previous problem, use the `read_csv` function to download the data and put it in a `tibble` variable. Extract the values for the first experiment (`startleResponse1`). Then extract the values for the second experiment (`startleResponse2`). Average the startle responses for each anemone. Then print these averaged values, sorted from shortest to longest response time.

3. For this problem, use the same data that you used in the previous problem. Download the data into a `tibble` variable. From that data, create a new `tibble` that contains data for every even-numbered anemone. Then save that tibble to a tab-separated value (tsv) file using the `write_tsv` function. The name of this file should be `3.tsv`.

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
