# argparseR

`R` package that intends to mimic the terrific [`argparse`][argparse] package but in a way to better suit my own workflow.

# Usage 

Here's an example. Write a script with the following commands and save it as `myscript.R`

```{r}
args <- commandArgs(trailingOnly = TRUE)
library(argparseR)
min_arg <- argparse(args, "--min", type="numeric", default=1)
max_arg <- argparse(args, "--max", default=34, type="numeric")
print(c(min_arg, max_arg)) 
```

Then call the script from the terminal 

```
Rscript myscript.R --min 12 --max 23
```

# Installation

```
library(devtools)
install_github("ablasco/argparseR")
```

[argparse]: https://cran.r-project.org/web/packages/argparse/index.html
