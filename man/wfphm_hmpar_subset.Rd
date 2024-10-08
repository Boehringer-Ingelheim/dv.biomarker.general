% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_wfphm.R
\name{wfphm_hmpar_subset}
\alias{wfphm_hmpar_subset}
\title{Subsets data for hmpar module}
\usage{
wfphm_hmpar_subset(
  data,
  cat_selection,
  cat_var,
  par_selection,
  par_var,
  visit_selection,
  visit_var,
  value_var,
  subjid_var,
  sorted_x,
  out_criteria,
  scale
)
}
\arguments{
\item{data}{the bsd param dataset}

\item{cat_selection, par_selection, visit_selection}{the selected category, parameter and visit selections}

\item{cat_var, par_var, visit_var, value_var, subjid_var}{the corresponding columns}

\item{sorted_x}{the ordered subject ids}

\item{out_criteria}{the outlier criteria}

\item{scale}{a scaling function that will rescale the values in the heatmap}
}
\description{
Subsets data for hmpar module
}
\keyword{internal}
