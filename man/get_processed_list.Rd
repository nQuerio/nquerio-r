% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_processed_list.R
\name{get_processed_list}
\alias{get_processed_list}
\title{Extract the Most Processed Variables from a List, Optionally Excluding Transformations}
\usage{
get_processed_list(var_list, include_t = TRUE)
}
\arguments{
\item{var_list}{A character vector of variable names, where the base variable name
and its processing stages are separated by dots.}

\item{include_t}{A logical value indicating whether to include variables with
transformation stages ('.t'). Defaults to TRUE. If FALSE, variables with '.t'
in their names are excluded from consideration.}
}
\value{
A character vector containing the most processed version of each base
variable name from the input list, according to the specified criteria.
}
\description{
The \code{get_processed_list} function takes a character vector of variable
names and selects the most processed version of each base variable name,
with an option to exclude variables that have undergone certain transformations
indicated by a '.t' in their names. The most processed version of a variable
is considered to be the one with the most suffixes (segments separated by "."),
excluding '.t' segments if specified.
}
\details{
This function is particularly useful in scenarios where multiple
versions of each variable exist in your dataset, and you need to select
only the most processed version of each, with or without transformation stages.
It allows for greater control over the selection of variables for analysis.
The output order is preserved based on the order of base variable names in
the input list.
}
\examples{
\dontrun{
# Variable list with different processing stages, including transformations
var_list <- c("var1", "var1.a", "var1.a.b", "var2", "var2.a", "var1.a.b.t")

# Get the most processed version of each variable, excluding transformations
processed_list <- get_processed_list(var_list, include_t = FALSE)

# Get the most processed version of each variable, including transformations
processed_list_with_t <- get_processed_list(var_list, include_t = TRUE)
}

}
