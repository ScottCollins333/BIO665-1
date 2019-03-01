# BIO 665 - Assignment 12

### Introduction

The purpose of this assignment is to help you become more comfortable applying tidy-data principles.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-12` and put your answer scripts (see below) in that directory.

### Getting started

Read the instructions carefully for each problem below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-12` directory. The test script for each problem will invoke the script that you create for that problem.

At the top of *each* script that you create for this assignment, you will need to load the `tidyverse` packages (which includes `tidyr`).

For this assignment, you will work with data from an article by Meadows, et al. entitled, "[Bacterial communities on classroom surfaces vary with human contact](https://www.ncbi.nlm.nih.gov/pubmed/24602274)". This article describes a study in which researchers collected bacterial samples from various locations within a college classroom to understand what bacteria were located at which locations. You will analyze three tab-delimited data files (described below). These have been modified slightly from what Meadow, et al. provided with their paper.

* **swabs.tsv** This file contains information about swabs that were performed in various locations around the classroom to detect bacterial populations present in those locations. Please refer to the Meadow, et al. article for additional information about the variables that are included in this file.

* **counts.tsv** This file contains [operational taxonomic unit](https://en.wikipedia.org/wiki/Operational_taxonomic_unit) (OTU) counts for the classroom swab samples and for various other samples that the authors used in the paper. Each row contains data for a given swab sample. Each column contains data for a given OTU.

* **taxa.tsv** This file lists taxonomic ranks (kingdom, phylum, class, order, family, genus species) for each OTU.

You can load these files into objects in R using code such as the following (perform these steps in each of your answer scripts):

```
swabs = read_tsv("https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-12/swabs.tsv")
counts = read_tsv("https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-12/counts.tsv")
taxa = read_tsv("https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-12/taxa.tsv")
```

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Please use R code to answer the following questions. You may need to look at the `tidyr` documentation.

1. Filter the full `swabs` data set so that it only includes samples of type "wall". Store these results in a new data object called `swabs2`. Sort `swabs2` by the x and y coordinates (`xcor` and `ycor` columns), in that order. Store these results in a new data object called `swabs3`. Create a new variable called `swabs4` that contains only the `swab.id`, `location`, and `location2` columns from `swabs3`. Create a new variable called `swabs5` that is a copy of `swabs4`. Add a column to `swabs5` that is a string concatenation of the `location` and `location2` columns (use the `stringr` package). Set the name of this new column to "combo_location". **Print all rows and columns of `swabs5`.**

2. Write code that combines the steps from problem 1 into a into a **single command** using `magrittr` pipes. The output of this code should match what you obtained for problem 1.

3. This problem and the next few problems build on each other. Create a new object called `swabsOfInterest` that selects the `swab.id` column from the original `swabs` object. Although this tibble is of little use on its own, it will be useful when joined with other data objects. **Please print `swabsOfInterest`** (using default print settings).
    
4. Start with the objects you created for problem 3. Then use the `inner_join` function to merge `swabsOfInterest` with the `counts` data object. Store the result in an object called `swabsOfInterestCounts`. (This way we can limit the count data to the swabs for which we have metadata about the swabs.) **Please print `swabsOfInterestCounts`** (using default print settings). *Note: Due to the way tibbles abbreviate strings, your output may appear slightly different than the expected output on this problem. The homework checker can confirm whether it will print correctly when it is graded.*

5. Start with the objects you created for problems 3-4. Although debatable, `swabsOfInterestCounts` is not yet tidy. Use the `gather` function to transform the taxa columns into two columns that represent the OTU and the counts per OTU. The names of these columns should be `otu` and `count`. Store the result in an object called `gatheredCounts`. This data frame should also contain a column called `swab.id`. **Please print `gatheredCounts`** (using default print settings).

6. Start with the objects you created for problems 3-5. Using `gatheredCounts`, calculate the number of counts per OTU. Use the `group_by` and `summarise` functions for this. Store the result in an object called `summarizedCounts`. Hint: you will need to use the `sum` function within `summarize`. **Please print `summarizedCounts`** (using default print settings).

7. Start with the objects you created for problems 3-6. Use the `inner_join` function to merge `summarizedCounts` with the `taxa` object. Assign the result to an object called `taxaSummary`. Hint: By default, this function tries to identify column names that are common between the two data frames being merged. Because these objects do not have two columns with the same name, you can use the `by` parameter to specify which columns should be used. **Please print `taxaSummary`** (using default print settings). *Note: Due to the way tibbles abbreviate strings, your output may appear slightly different than the expected output on this problem. The homework checker can confirm whether it will print correctly when it is graded.*

8. Start with the objects you created for problems 3-7. Sort `taxaSummary` by the `count` column in **descending** order. Assign the result to an object called `sortedTaxaSummary`. Use the `head` function to reassign this object so that it contains only the first row of data. **Then print `sortedTaxaSummary`** to indicate the kingdom, phylum, and class of the OTU that had the highest count (using default print settings). *Note: Due to the way tibbles abbreviate strings, your output may appear slightly different than the expected output on this problem. The homework checker can confirm whether it will print correctly when it is graded. One thing you can do is use the `head` function to limit the output to one row and then use the `print` function.*

9. Apply the `separate` function to the `swabs` object. Split the `swab.id` column into three columns. The first column should be called `swabType` and should indicate the type of swab ("Swab"). The second column should be called `swabGroup` and should indicate the group number in each swab ID ("162"). The third column should be called `swabNumber` and should indicate the unique number associated with each swab (for example, "02", "03", or "04"). **Print this tibble**  (using default print settings).

10. Below is some code that creates a tibble. This dataset is not tidy because each observation is spread across two rows. Use the `spread` function in `tidyr` to make the data "tidy". **Print the tidy version of the data** (using default print settings).

```
hurricanes <- tribble(
  ~hurricane, ~year, ~coordinateType, ~coordinate, ~mph,
  "Noel",     2007,  "Latitude",      18.4655,   80,
  "Noel",     2007,  "Longitude",     66.1057,   80,
  "Maria",    2017,  "Latitude",      19.9825,   175,
  "Maria",    2017,  "Longitude",     67.2457,   175,
  "Gilbert",  1988,  "Latitude",      17.7289,   186,
  "Gilbert",  1988,  "Longitude",     63.2839,   186
)
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

The [this site](http://bonsai.byu.edu:9000) to check your code after you have committed it to GitHub. It will tell you whether your code produces output that matches the expected output. Let me know if you encounter any problems as you use this site. **This site is only available from BYU campus.**