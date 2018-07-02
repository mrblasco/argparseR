#' Parse arguments of Rscript
#' 
#' Parse flags and returns values
#'
#' @param args vector of characters as from \code{commandArgs(trailingOnly = TRUE)}
#' @param flag name of the flag used
#' @param default value when flag is not present
#' @param type choose type of variable between character (default) and numeric
#'
#' @return returns value of the flag
#' @export
#' @example 
#'	library(argparseR)
#'	min_arg <- argparse(args, "--min", type="numeric", default=1)

argparse <- function(args, flag, default=NULL, type=c("character", "numeric")) {
	if(!sum(args==flag) < 2) stop("flag \"", flag, "\" found more than once!")
	if (any(args==flag)) {
		type <- match.arg(type)
		out <- switch(type
			, numeric = as.numeric(args[which(args==flag)+1])
			, character = args[which(args==flag)+1])
 	} else return(default)
 return(out)
}