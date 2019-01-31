# BIO 665 - Assignment 7

### Introduction

The purpose of this assignment is to give you practice working with matrices in R.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-7` and put your answer scripts (see below) in that directory.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Read the instructions carefully for each problem listed below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-7` directory. The test script for each problem will invoke the function that you create for that problem; it will do this multiple times with different arguments to check your function.

For this assignment, you will work with a leukemia dataset from a 1999 paper by Golub, et al. (https://www.ncbi.nlm.nih.gov/pubmed/10521349). The dataset is included in this directory in a file called `Golub_GeneExpression.tsv`. Each row contains data for a specific patient tumor. Each column contains data for a specific gene (except the first column, which indicates what type of tumor the patient had). The data values are integers that indicate how highly each gene was expressed in each tumor. Relatively high numbers indicate relatively high expression, and vice versa.

Later in the semester, you will learn more about how to read and manipulate data files. For now, please use the following code to read the data. **You will need to add this code to the top of each R script that you create for this assignment.**

```
url = "https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-7/Golub_GeneExpression.tsv"
data = read.table(url, sep="\t", header = TRUE, row.names = NULL)

cancerType = factor(data$CancerType)
data = data[,-1]
data = as.matrix(data)
```

Please use R code answer the following questions. Print your answers.

1. There are data points for how many genes?

2. There are data points for how many tumors?

3. What is the maximum gene-expression value across the entire matrix (all rows and columns)?

4. What is the maximum gene-expression value across the first 10 rows?

5. What is the maximum gene-expression value across the first 10 columns?

6. What is the maximum gene-expression value across the first 10 rows *and* the first 10 columns?

7. What is the maximum gene-expression value across all tumors for the gene labeled as `D64015_at`?

8. What proportion of `AML` tumors have higher expression of the `D64015_at` gene than the average expression for this gene in `ALL` tumors?

9. Which gene is expressed most highly, on average, across all tumors?

10. [Optional] Calculate the average difference in expression between `AML` and `ALL` tumors for each gene. Which of these genes shows the largest, average difference? When calculating differences between `AML` and `ALL` tumors for a given gene, first calculate the average for `AML` tumors, then calculate the average for `ALL` tumors, then calculate the *absolute value* of the difference between these two averages.



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
