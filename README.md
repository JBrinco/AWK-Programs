# AWK-Programs

This repository is outdated! For the sake of portability, I write my stuff in R and python. If you are looking for a simple program to help you with linear regression, check out `JBrinco/Quantification-Buddy`
AWK programs for stuff. I write these mostly for learning purposes and also for automation of boring spreadsheet actions.

## Linear regression

The shell script (.sh) takes three arguments:
__1__ The file with calibration points. CSV with comma as delimiter, first line must be blank or header (no matter what with), concentration is the first field, signal is the second.
__2__ The file with real signal values, to calculate their corresponding concentrations. First field is sample name, make the same for each replicate.
__3__ The desired name for the output file. The extention you give it will not change the default formatting.

Example:
```
$./linear_reg.sh Calibration.csv real_signal.csv results.csv
```

#### To add:

.calculation.awk reads the first field (sample), and calculates average and standard deviation for the values which are the same. Outputs the sample name, average and standard deviation at the end. Meaning it calculates the distribuion from the replicates.

printf output appended to a file, so that the program can generate a full report for many compounds with different calibrations, by successively running it with different input files.
