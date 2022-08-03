# BEE 4750 Homework 1

Instructions: [![Web Instructions](https://img.shields.io/static/v1?label=HW1&message=HTML&color=b31b1b&labelColor=222222&style=flat)](https://viveks.me/environmental-systems-analysis/assignments/hw1/hw1/) [![PDF Instructions](https://img.shields.io/static/v1?label=HW1&message=PDF&color=b31b1b&labelColor=222222&style=flat)](https://viveks.me/environmental-systems-analysis/assignments/hw1/hw1.pdf)

This homework assignment is focused on simulating a systems model under uncertainty to evaluate risk.

## Learning Objectives

After completing Homework 1, students will be able to:

* write a simulations model for a system;
* analyze systems dynamics through simulations;
* determine management strategies based on simulations results;
* quantify risk using Monte Carlo analyses.

## What To Submit

Submit a single `.pdf` file to Gradescope. Make sure to tag each problem. You should include code with your submission in code blocks as needed for your solution. Similarly, figures should be captioned appropriately.  **Make sure that your final report includes a References section!**

To generate your `.pdf` locally, you'll need to have LaTeX and Julia installed on your system. From your local HW repository directory, run the `compile_report.jl` script:

```bash
julia compile_report.jl solution-file-name.jmd
```
where `solution-file-name.jmd` is the name of your HW solution file. If you don't have LaTeX installed, and don't want to install it, you can get a sense of how your report will look by compiling it to HTML (it won't be very pretty, as there's no stylesheet, but you'll see all of the code snippets, results, and plots):

```bash
julia compile_report.jl solution-file-name.jmd html
```

If you have the Julia REPL open, you can also compile your file to a `.pdf` using

```julia, eval=false
include("compile_report.jl")
compile_report("solution-file-name.jmd")
```
or to HTML by adding in the optional "html" argument

```julia, eval=false
include("compile_report.jl")
compile_report("solution-file-name.jmd", "html")
```

We've also configured the Github repositories to attempt to compile your `.jmd` file into a `.pdf` when you push commits to your repository. This may take a little bit of time (Julia and LaTeX both need to be installed on the server every time this is attempted), but if it is successful, you will end up with a `.pdf` in your repository that you can download through a `git pull` command and submit to Gradescope. If it is not successful, this doesn't necessarily mean that there's a problem; you might not be at a stage where you intended your report to be compilable. This ensures that you have a `.pdf` to submit even if you only compile your report to HTML locally.

## Assignment Logistics

For information on accessing, writing, compiling, and submitting your report, see [the course website](https://viveks.me/environmental-systems-analysis/assignments/assignment-logistics/).