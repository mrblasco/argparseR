# argparseR

`R` package that intends to mimic the terrific [`argparse`][argparse] package but in a way to better suit my own workflow.

# Usage 

```{r}
args <- commandArgs(trailingOnly = TRUE)
library(argparseR)
min_arg <- argparse(args, "--min", type="numeric", default=1)
max_arg <- argparse(args, "--max", default=34, type="numeric")
print(c(min_arg, max_arg)) 
```

# Installation

```
library(devtools)
install_github("ablasco/argparseR")
```

[argparse]: https://cran.r-project.org/web/packages/argparse/index.html
