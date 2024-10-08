% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common_logic.R
\name{subset_bds_param}
\alias{subset_bds_param}
\title{Subsets a biomarker dataset for a category, parameter, visit and value selection}
\usage{
subset_bds_param(
  ds,
  par,
  par_col,
  cat,
  cat_col,
  val_col,
  vis,
  vis_col,
  subj_col
)
}
\arguments{
\item{ds}{\code{data.frame()}

See \emph{Input dataframe section}}

\item{par, cat}{\verb{[character*ish*(n)]}

Values from \code{par_col} and \code{cat_col} to be subset}

\item{val_col}{\verb{[character*ish*(1)]}

Column containing values for the parameters}

\item{vis}{\verb{[character*ish*(1)]}

Values from \code{vis_col} to be subset}

\item{subj_col, par_col, cat_col, vis_col}{\verb{[character(1)]}

Column for subject id, category, parameter and visit. All specified columns must be factors}
}
\value{
\tabular{lllll}{
   \code{subject_id} \tab \code{parameter} \tab \code{category} \tab \code{visit} \tab \code{value} \cr
   xx \tab xx \tab xx \tab xx \tab xx \cr
}


Additionally:
\itemize{
\item When present \code{label} attributes are retained.
\item When the same parameter is repeated across different categories an error is raised
}
}
\description{
Subsets a biomarker dataset for a category, parameter, visit and value selection
}
\details{
\itemize{
\item If at least one parameter name appears under several selected categories, an error is produced
}
}
\section{Input dataframe}{


It expects a dataset similar to
https://www.cdisc.org/kb/examples/adam-basic-data-structure-bds-using-paramcd-80288192 ,
1 record per subject per parameter per analysis visit

It expects, at least, the columns passed in the parameters,
\code{subj_col}, \code{cat_col}, \code{par_col}, \code{visit_col} and \code{val_col}.
The values of these variables are as described
in the CDISC standard for the variables USUBJID, PARCAT, PARAM, AVISIT and AVAL.
}

\keyword{data,}
\keyword{internal}
