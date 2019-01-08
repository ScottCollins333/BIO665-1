# Assignments for BIO 665 (Bioinformatics & Data Analysis II) at Brigham Young University

Each directory in this repository contains instructions for completing an assignment. Please view the README.md files in these directories for instructions on completing and submitting these assignments.

Each of these directories will contain a subdirectory called `Tests`, which will contain a test script for each problem. I will use these scripts to test your code. You can use them to test your code as well. You will also find a directory called `ExpectedOutput`. If your code is working properly for a given problem, you should get this output when the test script is executed.

### Getting Started

This repository contains instructions for completing homework exercises for the course. The instructions for each assignment will be stored in a separate directory.

Before starting any of the assignments, create an account on [github.com](https://github.com). Under your account, create a new repository called `BIO665` (use the default settings). Then go into the settings of your repository and **make sure it is listed as "private"**. Next click on "Settings" and "Collaborators" and add me as a collaborator on your repository (my GitHub ID is `srp33`).

*The following instructions should work on UNIX-based systems. If you are using a Windows computer, you can execute similar commands, but the syntax may be somewhat different. Alternatively, you could try [installing the bash shell on Windows](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) or completing the assignments on the Supercomputer (least preferred solution).*

At the command line on your computer, execute the following command (but replace `userID` with your own GitHub user ID). This will download your new repository to your computer.

```
git clone git@github.com:userID/BIO665.git
```

You should now see a directory called `BIO665` in your current working directory. Use the `ls` command to verify this.