# BIO 665 - Assignment 10

### Introduction

The purpose of this assignment is to help you become familiar with making plots using the `ggplot2` package.

Please use the *same* GitHub repository that you used for the first assignment. Create a directory called `Assignment-10` and put your answer scripts (see below) in that directory.

### Getting started

Read the instructions carefully for each problem below. For each problem, you should write an R script called `X.R` (but replace `X` with the problem number). For example, for problem 1, the R script would be named `1.R`. Store these scripts in the `Assignment-10` directory. The test script for each problem will invoke the script that you create for that problem.

At the top of *each* script that you create for this assignment, you will need to load the `tidyverse` packages (which includes `ggplot2`), as follows:

```
library(tidyverse)
```

*For each problem, your code should create a PDF file. The name of this PDF file should correspond to the problem number. For example, for problem 1, your script would generate a file called `1.pdf`.*

The following example illustrates how to generate a PDF file using `ggplot2`. First, the code generates a vector of random numbers (for demo purposes). Then it stores the data in a tibble (`ggplot2` requires data to be in a tibble). Next, the code plots the data as a histogram. Finally, it saves the graph to a PDF file with a specific name (you would replace `<problemNum>` with the actual problem number).

```
data = rnorm(1000)
tibbleData = tibble(test=data)

ggplot(tibbleData, aes(test)) +
  geom_histogram()

ggsave("<problemNum>.pdf")
```

### Problem descriptions

*Please let me know if you see any errors in these problem descriptions or in the expected outputs. Thanks!*

Please use R code to answer the following questions. You may need to look at the `ggplot2` documentation to learn about the settings described below.

For this exercise, you will use data from a paper by Coyle, et al. entitled, ["Opposing mechanisms drive richness patterns of core and transient bird species"](http://www.journals.uchicago.edu/doi/10.1086/669903). These researchers were interested in whether birds in North America typically stay at a particular geographic location ("core" species) or travel frequently across locations ("transient" species). Below is a description of the data files that you will use for this assignment:

* Occupancy_Data.tsv

    - LocationID = An identifier that represents the geographic location where a bird was observed.
    - SpeciesID = An identifier that represents the species observed at that location.
    - Occupancy = The frequency at which the species was observed at that location.

* Location_Data.tsv

    - LocationID = This identifier corresponds with LocationID in the occupancy data.
    - NumSpecies = Total number of species identified at that location.
    - NumCoreSpecies = Number of core species identified at that location.
    - NumTransientSpecies = Number of transient species identified at that location.
    - PredominantSpeciesType = Whether more core or transient species were identified at that location.
    - NDVI = Normalized Difference Vegetation Index at that location.
    - Elevation
    - Longitude
    - Latitude

Within your answer scripts, you can load these data files using code such as the following:

```
occupancy_data = read_tsv("https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-10/Occupancy_Data.tsv")
location_data = read_tsv("https://raw.githubusercontent.com/BYUBioinformatics/BIO665/master/Assignment-10/Location_Data.tsv")
```

1. Use the `ggplot2` package to create a *histogram* of the `Occupancy` values across all locations. Set the histogram's `binwidth` value to `0.02`. Set the x-axis label to "Proportion of time present at site". Set the y-axis label to "Density of species-sites". Use the `theme_bw` theme.

    *Write a comment in your code that describes what you interpret from this graph.*

2. Use the `ggplot2` package to create a [density plot](http://docs.ggplot2.org/0.9.3.1/geom_density.html) of the `Occupancy` values across all locations. Set the thickness (size) of the line to `2`. Set the x-axis label to "Proportion of time present at site". Set the y-axis label to "Density of species-sites". Use the `theme_bw` theme.

    *Write a comment in your code that describes what you interpret from this graph.*

3. Use `ggplot2` to create a *bar plot* that shows the number of locations for which each species was predominately "core" or "transient" (`PredominantSpeciesType` variable). Label the x-axis as "Predominant Species Type". Label the y-axis as "Species Count". Use the `theme_bw` theme. Indicate that you want the colors inside the bars to be different depending on the predominant species type. You **do not** need to specify these colors explicitly. Rather, let `ggplot2` choose the color scheme. However, you will need to indicate that `ggplot2` should color the bars differently, based on predominant species type. Lastly, by default, `ggplot2` may include a legend in the graph; however, this is redundant with the labels under the bars. Please remove the legend from the graph (you may need to search the Web to learn how to do this).

    *Write a comment in your code that describes what you interpret from this graph.*

4. Use `ggplot2` to make a [scatter plot](http://docs.ggplot2.org/current/geom_point.html) that compares the total number of species (x axis) identified at each location against NDVI (y axis) at the same locations. Color the points according to the predominant species type. Change the **size** of the points according to elevation. Use the `theme_dark` theme.

    *Write a comment in your code that describes what you interpret from this graph.*

5. For this problem, you will need to install two additional R packages that make it easier to create maps in R. Please execute the following code on your computer but **do not include this installation code in your solution script**.

    ```
    install.packages("maps")
    install.packages("mapproj")
    ```

    At the top of your solution script, **you will need to load these libraries** (along with `tidyverse`).

    Use `ggplot2` to plot the predominant species type for each location on a map of the United States. Below is some code to help you get started. Use the `geom_point` function to add the data points. Color the points according to the predominant species type at each location. Hint: you will need to use an aesthetic within this function to specify the longitude (x) and latitude (y) coordinates and to specify the color. Set the x-axis label to "Longitude" and the y-axis label to "Latitude". Set the title of the graph to "Core vs. Transient Species in the US". As the reading suggested, use the `coord_quickmap` function to set the aspect ratios properly for the map. You do not need to set a theme for this problem (use the default theme).

    ```
    # Load the libraries first...

    all_states <- map_data("state")

    ggplot(locationData) + 
      geom_polygon(data=all_states, aes(x=long, y=lat, group = group), colour="black", fill="white") + 
      expand_limits(x = all_states$Longitude, y = all_states$Latitude)
      # Add your code here...
    ```

    *Write a comment in your code that describes what you interpret about core and transient species after seeing the map.*

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