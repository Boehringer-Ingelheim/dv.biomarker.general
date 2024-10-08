% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mock_lineplot.R
\name{mock_app_lineplot}
\alias{mock_app_lineplot}
\title{Mock lineplot app}
\usage{
mock_app_lineplot(
  dry_run = FALSE,
  update_query_string = TRUE,
  srv_defaults = list(),
  ui_defaults = list(),
  data = test_data()
)
}
\arguments{
\item{dry_run}{Return parameters used in the call}

\item{update_query_string}{automatically update query string with app state}

\item{ui_defaults, srv_defaults}{a list of values passed to the ui/server function}

\item{data}{data for the mock application}
}
\description{
Mock lineplot app
}
\keyword{mock}
