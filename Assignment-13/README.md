# BIO 665 - Assignment 13

### Introduction

The purpose of this assignment is to help you gain more experience creating data visualizations.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-13` and put your answer scripts (see below) in that directory.

### Getting started

Read the instructions carefully for each problem below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-13` directory. The test script for each problem will invoke the script that you create for that problem. At the top of *each* script that you create for this assignment, load the `tidyverse` packages.

For each problem, your code should create a PDF file. The name of this PDF file should correspond to the problem number. For example, for problem 1, your script would generate a file called `1.pdf`. As you did in a previous assignment, use the `ggsave` function to create these PDF files.

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Please use R code to answer the following questions. **You may need to look at the `ggplot2` documentation and/or look online for help.**

1. A study by Miller, et al. compared the survival of two kinds of rainbow trout fry (babies): those born in a hatchery and those born in the wild. They released 4000 hatchery fry and 4000 wild fry into a stream that flows into Lake Superior. After one year, the researchers collected data on as many of these trout as they could. You can access the data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q05FrySurvival.csv. Please create a bar plot that illustrates the number of each type of trout that survived. Set the x-axis label to "Source". Set the y-axis label to "Number of fry survived". Use the `theme_bw` theme. Set the `base_size` argument on this theme to 18; this will increase the font sizes throughout the graph to make it more readable.

2. Use the *full* data described in the previous problem (not just the fry that survived). Make a "grouped" bar plot that shows the number of "not caught" fish side by side with those that survived. Set the x-axis label to "Outcome". Set the y-axis label to "Number of fry". Include a legend for the bar colors representing the source; however, *remove* the title of the legend. Change the scale of the y-axis to use a log10 scale; this will make it easier to compare the groups. Use the `theme_bw` theme. Set the `base_size` argument on this theme to 18.

3. Researchers evaluated sea anemones to see how they would respond to being startled. In a tide pool, the researchers startled 12 individual anemones with a jet of water. After being startled, each anemone would retract its feeding tentacles and then open them some time later. This process was repeated twice. You can access the data here: http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q17AnemonePersonality.csv (The response times were measured in seconds.) Average the startle responses and make a histogram of these averaged values. Find and set an argument in the `geom_histogram` function that will set the width of the bars (bins) to 100 so the bars will be narrow enough to see the shape of the data but not too narrow. Set the title to "Difference (seconds)" and *center* the title. Set the x-axis label to be blank. Set the y-axis label to be "# sea anemones". Set the color inside the boxes to "purple". Set the color of the lines around the borders of the boxes to "green". (I'm not necessarily recommending that you use these colors in real life...) Use the `theme_dark` theme. Set the `base_size` argument on this theme to 18.

4. Use the same data as the previous problem. Create a box plot that illustrates the anemones' response times for the two repetitions side by side. (Hint: It would be easiest to do this if you tidy the data first.) Add a second geometric object (`geom_jitter`), which will overlay the individual data points on *top* of the boxes. Set the title to "Startle responses in sea anemones". Set the labels underneath the boxes to "Response 1" and "Response 2", respectively ([this example](http://www.sthda.com/english/wiki/ggplot2-axis-ticks-a-guide-to-customize-tick-marks-and-labels#change-tick-mark-labels) may be useful). Set the y-axis label to "Response time (seconds)". Set the x-axis label to be blank. Use the "Set1" color palette from `RColorBrewer` (the reading shows how to do this) for the color scheme. Use the `theme_light` theme. Set the `base_size` argument on this theme to 18.

5. Use the same data as the previous two problems (use the original version of the data, not the tidied version). This time create a scatterplot that illustrates the relationship between the first set of response times and the second set of response times. Set the x-axis label to "Response 1" and the y-axis label to "Response 2". Set the x-axis and y-axis limits so they range between zero and the maximum response time across all observations. Use the `theme_linedraw` theme and set the `base_size` to 18.

6. Start with the code you wrote for the previous three problems. This time use `geom_label` rather than the geometric object you used for the previous problem. Indicate that you want the labels and colors to be based on values in the `anemoneNumber` column. [Remove the legend](https://stackoverflow.com/questions/35618260/remove-legend-ggplot-2-2/47057327) (it is unhelpful to include a legend in this case). Change the color scheme so that it uses the "Set3" palette (the reading has an example of doing this).

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