# AWK-Programs

AWK programs for stuff. I write these mostly for learning purposes and also for automation of boring spreadsheet actions.

## Linear regression

The shell program (.sh) takes three arguments:
__1__ The file with calibration points. CSV with comma as delimiter, first line must be blank or header (no matter what with), concentration is the first field, signal is the second.
__2__ The file with real signal values, to calculate their corresponding concentrations. Just the values, no header or anything.
__3__ The desired name for the output file. The extention you give it will not change the default formatting.

Example:
```
$./linear_reg.sh Calibration.csv real_signal.csv results.csv
```
