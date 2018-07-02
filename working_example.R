args <- commandArgs(trailingOnly = TRUE)
library(argparseR)
min_arg <- argparse(args, "--min", type="numeric", default=1)
max_arg <- argparse(args, "--max", default=34, type="numeric")

min_arg
max_arg